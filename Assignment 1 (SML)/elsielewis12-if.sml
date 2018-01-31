(* FUNCTION NAME: addpa(l1, l2)                                                                                         *)
(* DESCRIPTION: Returns a list containing the sum of each corresponding element of l1 and l2, truncated if necessary    *)

fun addpa(l1, l2) =
    if null l1 orelse null l2 then nil
        else hd(l1)+hd(l2) :: addpa(tl(l1), tl(l2));

addpa([1, 7], [8, 4, 2]);