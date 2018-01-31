(* FUNCTION NAME: inde(e, l)                                                        *)
(* DESCRIPTION: Returns a list of the indicies of ever occurence of e in the list l *)

fun inde(e, l) = 
    let fun inderec(e, l, n) =
        if null l then nil
            else if hd(l)=e then n :: inderec(e, tl(l), n+1)
                else inderec(e, tl(l), n+1)
    in
        inderec(e, l , 1)
    end;
    
inde(1, [1, 2, 1, 1, 2, 2, 1]);

