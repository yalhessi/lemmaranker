
let write_to_file value=
  let oc = open_out_gen [Open_append; Open_creat] 0o777 "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal35_mult_succ_78_plus_succ/examples_goal35.txt" in
  Printf.fprintf oc "%s\n"  value;
  close_out oc; ()
let print n nstr=
  write_to_file (String.of_seq (List.to_seq nstr));
  (n)
  