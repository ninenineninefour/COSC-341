(* FUNCTION NAME: remvdub(l)                                        *)
(* DESCRIPTION: Removes every duplicate element from the list l.    *)

fun remvdub(l) =
    let fun remv(e, l) =
        if null l then nil
            else (if hd(l) = e then remv(e, tl(l))
                else hd(l) :: remv(e, tl(l)))
    in
        if null l then nil
            else hd(l) :: remvdub(remv(hd(l), tl(l)))
    end;

remvdub(["a", "b", "a", "c", "b", "a"]);