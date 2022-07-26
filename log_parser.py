import argparse
import os
import re
from os import listdir

def parse():
  parser = argparse.ArgumentParser(description='Parse LFind Logs')
  parser.add_argument('--benchmark-root', required=True, dest='benchmark_root', type=str, help='Benchmark Root')
  parser.add_argument('--benchmark-name', required=True, dest='benchmark_name', type=str, help='Benchmark Name')
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
      lemma = line.strip() + '.'
      try:
        lemma_name = re.match('Lemma (?P<name>\w+)[ ]?:', lemma).groups()[0]
      except:
        import pdb
        pdb.set_trace()
      lemmas.append({"cat": cat, "lemma": lemma, "lemma_name": lemma_name})
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
    prefix = ''
    helper_lemma = ''
    helper_lemma_proof = ''
    for l in f:
      if re.match(f'(Lemma|Theorem) {helper_lemma_name}[ ]?:', l.strip()):
        helper_lemma += l.strip()
      elif helper_lemma and l.strip().startswith('Proof.'):
        helper_lemma_proof += l.strip()
      elif helper_lemma_proof:
        helper_lemma_proof += l.strip()
        if l.strip() == 'Qed.':
          break
      elif helper_lemma:
        helper_lemma += l.strip()
      else:
        prefix += l
    theorem = ''
    theorem_proof = ''
    for l in f:
      if re.match(f'(Lemma|Theorem) {theorem_name}[ ]?:', l.strip()):
        theorem += l.strip()
      elif theorem and l.strip().startswith('Proof.'):
        theorem_proof += l.strip()
      elif theorem_proof:
        theorem_proof += l.strip()
        if l.strip() == 'Qed.' or l.strip() == 'Admitted.':
          break
      elif theorem:
        theorem += l.strip()
  return prefix, helper_lemma, helper_lemma_proof, theorem, theorem_proof


def parse_file_name(benchmark_name, filename):
  '''
  These files are names smallclam_lf_orignalfile_originaltheorem_lineno_helperlemma
  '''
  import re
  return re.match(f'{benchmark_name}_lf_(?P<file>[a-zA-Z0-9]+)_(?P<theorem>\w+)_(?P<lineno>\d+)_(?P<helper>\w+)', filename).groups()


def read_data(benchmark_root, benchmark_name):
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
  benchmark_dir = os.path.join(benchmark_root, benchmark_name)
  logs_dir = os.path.join(benchmark_dir, 'lfind_logs')

  for filename in listdir(logs_dir):
    print(filename)
    if not os.path.exists(os.path.join(benchmark_dir, filename)):
      print("Could not find data for file: " + filename)
      continue
    original_filename, theorem_name, lineno, helper_lemma_name = parse_file_name(benchmark_name, filename)
    filedata = {"file": filename, "theorem_name": theorem_name, "helper_lemma_name": helper_lemma_name, "prelude": os.path.join(benchmark_dir, benchmark_name)}
    filedata["lemmas"] = read_synthesized_lemmas(logs_dir, filename)
    filedata["stuck_state"] = read_stuck_state(benchmark_dir, filename)
    filedata["prefix"], filedata["helper_lemma"], filedata["helper_lemma_proof"], filedata["theorem"], filedata["theorem_proof"] = read_original_file(benchmark_dir, filename, original_filename, theorem_name, helper_lemma_name)
    data.append(filedata)
  return data

def main():
  args = parse()
  data = read_data(args.benchmark_root, args.benchmark_name)
  print(data[0]["lemmas"])

if __name__=="__main__":
  main()
