(* FUNCTION NAME: remvdub(l)                                        *)
(* DESCRIPTION: Removes every duplicate element from the list l.    *)

fun remvdub(nil) = nil
  | remvdub(head :: l) = 
        let
            fun remv(_, nil) = nil
              | remv(e, head :: l) = case e=head of
                  true => remv(e, l)
                | false => head :: remv(e,l);
        in
            head :: remvdub(remv(head, l))
        end;

remvdub(["a", "b", "a", "c", "b", "a"]);