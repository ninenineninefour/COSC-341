(* FUNCTION NAME: insfront(e, l)                                                     *)
(* DESCRIPTION: Inserts the element e to the start of each list in the list list l  *)

fun insfront(e, l) = if null l then nil
    else (e :: hd(l)) :: insfront(e, tl(l));

insfront(1, [[1, 2], nil, [3]]);