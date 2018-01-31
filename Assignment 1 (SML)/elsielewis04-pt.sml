(* FUNCTION NAME: remv(e, l)                                                            *)
(* DESCRIPTION: Returns the list l, but with every instance of the element e removed.   *)

fun remv(_, nil) = nil
  | remv(e, head :: l) = case e=head of
          true => remv(e, l)
        | false => head :: remv(e,l);

remv("a", ["a", "b", "a", "c"]);