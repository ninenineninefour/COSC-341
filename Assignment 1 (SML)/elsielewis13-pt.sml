(* FUNCTION NAME: isfact(n)                                 *)
(* DESCRIPTION: Returns true if n=k!, where k is an integer *)

fun isfact(n) =
    let
        fun isfactrec(1, _, 0) = true
          | isfactrec(n, i, 0) = isfactrec(n div i, i+1, n mod i)
          | isfactrec(_, _, _) = false
    in
        isfactrec(n, 1, 0)
    end;

isfact(120);