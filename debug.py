import utils
import log_parser
import pandas as pd
import random 

data = log_parser.read_data('/home/yousef/lemmaranker/benchmark')

frames = []
for i in range(len(data)):
  print(i, len(data))
  frame = pd.DataFrame.from_dict(data[i]["lemmas"])
  for key in data[i]:
    if key == "lemmas":
      continue
    frame[key] = data[i][key]
  for r, row in frame.iterrows():
    try:
      frame.at[r, 'is_weaker'] = utils.is_weaker_than(frame.at[r, "lemma_name"], frame.at[r, "lemma"], frame.at[r, "helper_lemma_name"], frame.at[r, "helper_lemma"], frame.at[r, "prelude"])
      frame.at[r, 'is_stronger'] = utils.is_stronger_than(frame.at[r, "lemma_name"], frame.at[r, "lemma"], frame.at[r, "helper_lemma_name"], frame.at[r, "helper_lemma"], frame.at[r, "prelude"])
      frame.at[r, 'is_equiv'] = frame.at[r, 'is_weaker'] and frame.at[r, 'is_stronger']
      frame.at[r, 'alpha'] = random.uniform(0,1)    
      frame.at[r, "lemma_len"] = len(frame.at[r, "lemma"])
      # pass
    except:
      print(r)
  frames.append(frame)

df = pd.concat(frames)
df[df['is_equiv'] == True]
df.to_pickle('./data.pickle')