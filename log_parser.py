import argparse
import os
from os import listdir

def parse():
  parser = argparse.ArgumentParser(description='Parse LFind Logs')
  parser.add_argument('--dir', type=str, help='Benchmark directory')
  args = parser.parse_args()
  return args

def read_synthesized_lemmas(dirname, filename):
  lemmas = []
  with open(os.path.join(dirname, filename)) as f:
    if f.readline().strip() != "Provable and Useful in Completing Stuck Goal":
      raise Exception("Wrong format")
    cat = 1
    for line in f:
      if not line.strip():
        continue
      elif line.strip() == "Useful in Completing Stuck Goal":
        cat = 2
        continue
      elif line.strip() == "Valid Lemmas":
        cat = 3
        continue
      lemmas.append({"cat": cat, "lemma": line.strip()+'.'})
  return lemmas

def read_stuck_state(dirname, subdirname):
  with open(os.path.join(dirname, '_lfind_' + subdirname, 'lfind_state.v')) as f:
    stuck_state = ''
    for l in f:
      if l.strip().startswith('Lemma'):
        stuck_state += l.strip()
      elif not l.strip():
        continue
      elif l.strip().startswith('Admitted.'):
        return stuck_state
      elif stuck_state:
        stuck_state += l.strip()
    
def read_original_file(dirname, subdirname, filename, theorem_name, helper_lemma_name):
  with open(os.path.join(dirname, '_lfind_' + subdirname, filename+'.v')) as f:
    helper_lemma = ''
    helper_lemma_proof = ''
    for l in f:
      if l.strip().startswith('Lemma ' + helper_lemma_name) or l.strip().startswith('Theorem ' + helper_lemma_name):
        helper_lemma += l.strip()
      elif l.strip().startswith('Proof.'):
        helper_lemma_proof += l.strip()
      elif helper_lemma_proof:
        helper_lemma_proof += l.strip()
        if l.strip() == 'Qed.':
          break
      elif helper_lemma:
        helper_lemma += l.strip()

    theorem = ''
    theorem_proof = ''
    for l in f:
      if l.strip().startswith('Lemma ' + theorem_name) or l.strip().startswith('Theorem ' + theorem_name):
        theorem += l.strip()
      elif l.strip().startswith('Proof.'):
        theorem_proof += l.strip()
      elif theorem_proof:
        theorem_proof += l.strip()
        if l.strip() == 'Qed.' or l.strip() == 'Admitted.':
          break
      elif theorem:
        theorem += l.strip()
  return helper_lemma, helper_lemma_proof, theorem, theorem_proof


def parse_file_name(filename):
  '''
  These files are names smallclam_lf_orignalfile_originaltheorem_lineno_helperlemma
  '''
  import re
  return re.match(r'smallclam_lf_(?P<file>[a-zA-Z0-9]+)_(?P<theorem>\w+)_(?P<lineno>\d+)_(?P<helper>\w+)', filename).groups()


def read_data(dir):
  '''
  Structure of dir should be
  dir 
    lfind_logs/file1, file2...
    file1
    file2
    ...
    _lfind_file1
    _lfind_file2
    ...
  '''
  data = []
  logs_dir = os.path.join(dir, 'lfind_logs')

  for filename in listdir(logs_dir):
    print(filename)
    if not os.path.exists(os.path.join(dir, filename)):
      print("Could not find data for file: " + filename)
      continue
    original_filename, theorem_name, lineno, helper_lemma_name = parse_file_name(filename)
    filedata = {"file": filename, "theorem_name": theorem_name, "helper_lemma_name": helper_lemma_name}
    filedata["lemmas"] = read_synthesized_lemmas(logs_dir, filename)
    filedata["stuck_state"] = read_stuck_state(dir, filename)
    filedata["helper_lemma"], filedata["helper_lemma_proof"], filedata["theorem"], filedata["theorem_proof"] = read_original_file(dir, filename, original_filename, theorem_name, helper_lemma_name)
    data.append(filedata)
  return data

def main():
  args = parse()
  data = read_data(args.dir)
  print(data[0]["lemmas"][0])

if __name__=="__main__":
  main()
