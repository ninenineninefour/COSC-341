(* FUNCTION NAME: isfact(n)                                 *)
(* DESCRIPTION: Returns true if n=k!, where k is an integer *)

fun isfact(n) =
    let
        fun isfactrec(n, prod, i) =
            if prod<n then isfactrec(n, prod*i, i+1)
                else n=prod
    in
        isfactrec(n, 1, 1)
    end;

isfact(120);