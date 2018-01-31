(* FUNCTION NAME: multin([a, b, c])                                                                 *)
(* DESCRIPTION: Multiplies a by b c times, returning a list of the results of each multiplication.  *)

fun multin([a, b, ~1]) = nil
  | multin([a, b, c]) = a :: multin([a*b, b, c-1])
  | multin(_) = nil;

multin([2, 3, 5])