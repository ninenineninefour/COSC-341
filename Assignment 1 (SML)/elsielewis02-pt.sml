(* FUNCTION NAME: dispnthc(s, n)                            *)
(* DESCRIPTION: Returns the nth character of the string s.  *)

fun dispnthc(s, n) =
    let
        fun getelement(nil, _) = #"?"
          | getelement(l, 1) = hd(l)
          | getelement(l, n) = getelement(tl(l), n-1)
    in
        getelement(explode(s), n)
    end;

dispnthc("abcdef", 4)