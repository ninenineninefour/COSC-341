(* FUNCTION NAME: str2int(s)                                                            *)
(* DESCRIPTION: Converts the string s into an int. Does not accept negative numbers.    *)

fun str2int(s) =
    let
        fun char2int(#"0") = 0
          | char2int(#"1") = 1
          | char2int(#"2") = 2
          | char2int(#"3") = 3
          | char2int(#"4") = 4
          | char2int(#"5") = 5
          | char2int(#"6") = 6
          | char2int(#"7") = 7
          | char2int(#"8") = 8
          | char2int(#"9") = 9
          | char2int(_) = ~1;
        fun list2int(nil) = 0
          | list2int(c :: rest) = char2int(c) + list2int(rest)*10;
        fun reverse(nil) = nil
          | reverse(e :: l) = reverse(l) @ [e];
    in
        list2int(reverse(explode(s)))
    end;

str2int("1234");