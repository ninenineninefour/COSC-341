(* FUNCTION NAME: occr(l)                                                                                               *)
(* DESCRIPTION: Returns a list of tuples containing an element and the number of times it appears in list l   *)

fun occr(l) =
    let
        fun count(e, l) = if null l then 0
            else if hd(l)=e then 1+count(e, tl(l))
                else count(e, tl(l))
        fun remv(e, l) = if null l then nil else
            if hd(l) = e then remv(e, tl(l))
                else hd(l) :: remv(e, tl(l))
    in
        if null l then nil
            else (hd(l), count(hd(l), l)) :: occr(remv(hd(l), tl(l)))
    end;

occr([1, 2, 1, 2, 3, 2]);