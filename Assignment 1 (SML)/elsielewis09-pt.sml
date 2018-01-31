(* FUNCTION NAME: nele(l, n)                                                    *)
(* DESCRIPTION: Returns a list of every element of the list l repeated n times  *)

fun nele(nil, _) = nil
  | nele(e :: l, n) =
        let
            fun repeat(_, 0) = nil
              | repeat(e, n) = e :: repeat(e, n-1)
        in
            repeat(e, n) @ nele(l, n)
        end;

nele([1, 2], 3);