(* FUNCTION NAME: inseach(e, l)                                                             *)
(* DESCRIPTION: Makes a list of every way the element e can be inserted into the list l.    *)

fun inseach(e, l) =
    let
        fun insat(e, l, n) = if null l then [e] else
            if n=0 then e :: l else hd(l) :: insat(e, tl(l), n-1);
        fun inseachrec(e, l, n) = if n<0 then nil
            else inseachrec(e, l, n-1) @ [insat(e, l, n)];
    in
        inseachrec(e, l, length(l))
    end;

inseach(4, [1, 2, 3]);