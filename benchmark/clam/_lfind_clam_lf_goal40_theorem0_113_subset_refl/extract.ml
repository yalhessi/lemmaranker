
let write_to_file value=
  let oc = open_out_gen [Open_append; Open_creat] 0o777 "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal40_theorem0_113_subset_refl/examples_goal40.txt" in
  Printf.fprintf oc "%s\n"  value;
  close_out oc; ()
let print n nstr=
  write_to_file (String.of_seq (List.to_seq nstr));
  (n)
  