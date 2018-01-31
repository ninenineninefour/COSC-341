(* FUNCTION NAME: delnthc(s, n)                                             *)
(* DESCRIPTION: Returns the string s, but with the nth character removed.   *)

fun delnthc(s, n) =
    let
        fun delnthe(l, n) =
            if n=1 then tl(l) else hd(l) :: delnthe(tl(l), n-1)
    in
        if n<1 then s else implode(delnthe(explode(s), n))
    end;
    
delnthc("abcdef", 4);