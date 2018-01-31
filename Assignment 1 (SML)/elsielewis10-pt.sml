(* FUNCTION NAME: spliat(s, n)                                                                                      *)
(* DESCRIPTION: Returns a list containing the first and last substring of the string s, split at the nth character  *)

fun spliat(s, n) = 
    let
        fun firstpart(nil, _) = nil
          | firstpart(_, 0) = nil
          | firstpart(e :: l, n) = e :: firstpart(l, n-1);
        
        fun lastpart(nil, _) = nil
          | lastpart(l, 0) = l
          | lastpart(_ :: l, n) = lastpart(l, n-1);
        
        val l = explode(s);
        val first = implode(firstpart(l, n))
        val last = implode(lastpart(l, n))
    in
        [first, last]
    end;

spliat("Program", 3);