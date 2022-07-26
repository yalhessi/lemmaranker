import utils
import log_parser
import pandas as pd
import random 
from multiprocessing import Pool, set_start_method
set_start_method('spawn', True)

def add_is_weaker(frame, index):
  frame.at[index, 'is_weaker'] = utils.is_weaker_than(frame.at[index, "prelude"], frame.at[index, "prefix"], frame.at[index, "lemma_name"], frame.at[index, "lemma"], frame.at[index, "helper_lemma_name"], frame.at[index, "helper_lemma"])

def add_is_stronger(frame, index):
  frame.at[index, 'is_stronger'] = utils.is_stronger_than(frame.at[index, "prelude"], frame.at[index, "prefix"], frame.at[index, "lemma_name"], frame.at[index, "lemma"], frame.at[index, "helper_lemma_name"], frame.at[index, "helper_lemma"])

def add_is_equiv(frame, index):
  frame.at[index, 'is_equiv'] = frame.at[index, 'is_weaker'] and frame.at[index, 'is_stronger']

def add_is_related(frame, index):
  frame.at[index, 'is_related'] = frame.at[index, 'is_weaker'] or frame.at[index, 'is_stronger']

def add_alpha(frame, index):
  frame.at[index, 'alpha'] = random.uniform(0,1)    

def add_lemma_len(frame, index):
  frame.at[index, "lemma_len"] = len(frame.at[index, "lemma"])
  frame.at[index, "ugly_lemma_len"] = len(frame.at[index, "ugly_lemma"])

def remove_notations(frame, index):
  frame.at[index, "ugly_lemma"] = utils.disable_notations(frame.at[index, "prelude"], frame.at[index, "prefix"], frame.at[index, "lemma"])
  frame.at[index, "ugly_theorem"] = utils.disable_notations(frame.at[index, "prelude"], frame.at[index, "prefix"], frame.at[index, "theorem"])
  frame.at[index, "ugly_helper_lemma"] = utils.disable_notations(frame.at[index, "prelude"], frame.at[index, "prefix"], frame.at[index, "helper_lemma"])


def add_ted(frame, index):
  frame.at[index, "ted"] = 0

def add_sed(frame, index):
  frame.at[index, "sed"] = 0

def add_column(frame, col_fun):
  for r, row in frame.iterrows():
    try: 
      col_fun(frame, r)
    except Exception as e:
      raise(e)

def file_to_dataframe(filedata):
  frame = pd.DataFrame.from_dict(filedata["lemmas"])
  for key in filedata:
    if key == "lemmas":
      continue
    frame[key] = filedata[key]
  for r, row in frame.iterrows():
    try:
      add_alpha(frame, r)
      remove_notations(frame, r)
      add_lemma_len(frame, r)
      add_is_weaker(frame, r)
      add_is_stronger(frame, r)
      add_is_equiv(frame, r)
      add_sed(frame, r)
      add_ted(frame, r)
      # pass
    except Exception as e:
      print(e)
      print(r)
  return frame


def main():
  benchmark_root = './benchmark'
  benchmark_name = 'smallclam'
  data = log_parser.read_data(benchmark_root, benchmark_name)

  with Pool(5) as p:
    frames = p.map(file_to_dataframe, data)

  # frames = []
  # for i in range(len(data)):
  #   print(i, len(data))
  #   frames.append(file_to_dataframe(data[i]))

  df = pd.concat(frames)
  df.to_pickle(f'./{benchmark_name}.pickle')

if __name__ == "__main__":
  main()