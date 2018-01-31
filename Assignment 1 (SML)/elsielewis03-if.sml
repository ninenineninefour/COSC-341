(* FUNCTION NAME: multin([a, b, c])                                                                 *)
(* DESCRIPTION: Multiplies a by b c times, returning a list of the results of each multiplication.  *)

fun multin(l) =
    let
        val a = hd(l)
        val b = hd(tl(l))
        val c = hd(tl(tl(l)))
    in
        if c<0 then nil else [a] @ multin([a*b, b, c-1])
    end;

multin([2, 3, 5])