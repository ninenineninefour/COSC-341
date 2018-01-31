(* FUNCTION NAME: spliat(s, n)                                                                                      *)
(* DESCRIPTION: Returns a list containing the first and last substring of the string s, split at the nth character  *)

fun spliat(s, n) =
    let
        fun firstpart(l, n) = if n<=0 then nil else hd(l) :: firstpart(tl(l), n-1)
        fun lastpart(l, n) = if n<=0 then l else lastpart(tl(l), n-1)
        val l = explode(s)
        val first = implode(firstpart(l, n))
        val last = implode(lastpart(l, n))
    in
        [first, last]
    end;

spliat("Program", 3);