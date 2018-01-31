(* FUNCTION NAME: remv(e, l)                                                            *)
(* DESCRIPTION: Returns the list l, but with every instance of the element e removed.   *)

fun remv(e, l) =
    if null l then nil
        else if hd(l) = e then remv(e, tl(l))
            else hd(l) :: remv(e, tl(l));

remv("a", ["a", "b", "a", "c"]);