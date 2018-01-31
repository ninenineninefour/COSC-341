(* FUNCTION NAME: int2str(n)                                            *)
(* DESCRIPTION: Converts the integer n to a string. n must be positive. *)

fun int2str(n) = 
    let
        fun int2list(0) = [#"0"]
          | int2list(1) = [#"1"]
          | int2list(2) = [#"2"]
          | int2list(3) = [#"3"]
          | int2list(4) = [#"4"]
          | int2list(5) = [#"5"]
          | int2list(6) = [#"6"]
          | int2list(7) = [#"7"]
          | int2list(8) = [#"8"]
          | int2list(9) = [#"9"]
          | int2list(n) = int2list(n div 10) @ int2list(n mod 10)
    in
        implode(int2list(n))
    end;

int2str(1234);