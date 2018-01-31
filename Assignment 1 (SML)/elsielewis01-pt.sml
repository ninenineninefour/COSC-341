(* FUNCTION NAME: delnthc(s, n)                                             *)
(* DESCRIPTION: Returns the string s, but with the nth character removed.   *)

fun delnthc(s, n) =
    let
        fun delnthe(nil, _) = nil
          | delnthe(l, 1) = tl(l)
          | delnthe(l, n) = hd(l) :: delnthe(tl(l), n-1);
    in
        implode(delnthe(explode(s), n))
    end;
    
delnthc("abcdef", 4);