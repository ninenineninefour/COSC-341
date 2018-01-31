(* FUNCTION NAME: inseach(e, l)                                                             *)
(* DESCRIPTION: Makes a list of every way the element e can be inserted into the list l.    *)

fun inseach(e, l) =
    let
        fun insat(e, l, 0) = e :: l
          | insat(e, head :: l, n) = head :: insat(e, l, n-1)
          | insat(e, _, _) = [e];
        fun inseachrec(_, _, ~1) = nil
          | inseachrec(e, l, n) = inseachrec(e, l, n-1) @ [insat(e, l, n)];
    in
        inseachrec(e, l, length(l))
    end;

inseach(4, [1, 2, 3]);