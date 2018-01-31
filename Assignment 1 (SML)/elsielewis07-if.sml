(* FUNCTION NAME: str2int(s)                                                            *)
(* DESCRIPTION: Converts the string s into an int. Does not accept negative numbers.    *)

fun str2int(s) =
    let
        fun indexof(l, e, n) = if e=hd(l) then n
            else indexof(tl(l), e, n+1);
        fun char2int(c) = indexof(explode("0123456789"), c, 0);
        fun reverse(l) = if null l then nil
            else reverse(tl(l)) @ [hd(l)];
        fun list2int(l) = if null l then 0
            else char2int(hd(l)) + list2int(tl(l))*10
    in
        list2int(reverse(explode(s)))
    end;

str2int("1234");