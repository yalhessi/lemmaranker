
let write_to_file value=
  let oc = open_out_gen [Open_append; Open_creat] 0o777 "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal71_theorem0_75_Nat_beq_eq/examples_goal71.txt" in
  Printf.fprintf oc "%s\n"  value;
  close_out oc; ()
let print n nstr=
  write_to_file (String.of_seq (List.to_seq nstr));
  (n)
  