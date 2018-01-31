(* FUNCTION NAME: addpa(l1, l2)                                                                                         *)
(* DESCRIPTION: Returns a list containing the sum of each corresponding element of l1 and l2, truncated if necessary    *)

fun addpa(a :: l1, b :: l2) = a+b :: addpa(l1, l2)
  | addpa(_, _) = nil;

addpa([1, 7], [8, 4, 2]);