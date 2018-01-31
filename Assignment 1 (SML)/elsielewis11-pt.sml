(* FUNCTION NAME: ntrin(n)                                          *)
(* DESCRIPTION: Returns a list of the first n triangular numbers    *)

fun ntrin(n) =
    let
        fun tri(0, _, _) = nil
          | tri(n, i, prev) = i+prev :: tri(n-1, i+1, i+prev)
    in
        tri(n, 1, 0)
    end;

ntrin(7);