(* FUNCTION NAME: nele(l, n)                                                    *)
(* DESCRIPTION: Returns a list of every element of the list l repeated n times  *)

fun nele(l, n) =
    let fun repeat(e, n) =
        if n<=0 then nil else e :: repeat(e, n-1)
    in
        if null l then nil else repeat(hd(l), n) @ nele(tl(l), n)
    end;

nele([1, 2], 3);