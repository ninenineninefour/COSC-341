(* FUNCTION NAME: insfront(e, l)                                                     *)
(* DESCRIPTION: Inserts the element e to the start of each list in the list list l  *)

fun insfront(_, nil) = nil
  | insfront(e, head :: l) = (e :: head) :: insfront(e, l);

insfront(1, [[1, 2], nil, [3]]);