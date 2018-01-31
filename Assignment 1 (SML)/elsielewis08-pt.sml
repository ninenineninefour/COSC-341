(* FUNCTION NAME: inde(e, l)                                                        *)
(* DESCRIPTION: Returns a list of the indicies of ever occurence of e in the list l *)

fun inde(e, l) =
    let
        fun inderec(_, nil, _) = nil
          | inderec(e, head :: rest, i) = case e=head of 
              true => i :: inderec(e, rest, i+1)
            | false => inderec(e, rest, i+1)
    in
        inderec(e, l, 1)
    end;

inde(1, [1, 2, 1, 1, 2, 2, 1]);