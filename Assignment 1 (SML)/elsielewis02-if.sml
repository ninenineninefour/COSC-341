(* FUNCTION NAME: dispnthc(s, n)                            *)
(* DESCRIPTION: Returns the nth character of the string s.  *)

fun dispnthc(s, n) =
    let
        fun getelement(l, n) =
            if null l then #"?"
                else if n<=1 then hd(l)
                    else getelement(tl(l), n-1)
    in
        getelement(explode(s), n)
    end;

dispnthc("abcdef", 4);