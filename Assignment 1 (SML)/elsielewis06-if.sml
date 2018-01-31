(* FUNCTION NAME: int2str(n)                                            *)
(* DESCRIPTION: Converts the integer n to a string. n must be positive. *)

fun int2str(n) =
    let
        fun getnthe(l, n) = if n<=0 then hd(l)
            else getnthe(tl(l), n-1)
        fun int2char(n) = getnthe(explode("0123456789"), n)
        fun int2list(n) = if n<10 then [int2char(n)]
            else int2list(n div 10) @ [int2char(n mod 10)]
    in
        implode(int2list(n))
    end;

int2str(1234);