(* FUNCTION NAME: occr(l)                                                                                               *)
(* DESCRIPTION: Returns a list of tuples containing an element and the number of times it appears in list l   *)

fun occr(nil) = nil
  | occr(e :: l) =
        let
            fun count(_, nil) = 1
              | count(e, head :: l) =
                    case e=head of
                          true => 1+count(e, l)
                        | false => count(e, l)
            fun remv(_, nil) = nil
              | remv(e, head :: l) =
                    case e=head of
                          true => remv(e, l)
                        | false => head :: remv(e, l)
        in
            (e, count(e, l)) :: occr(remv(e, l))
        end;

occr([1, 2, 1, 2, 3, 2]);