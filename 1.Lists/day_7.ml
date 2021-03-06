(* 08/02/2015 *)

#use "day_6.ml"

(************************************************************************************)
(* 16. Drop every N'th element from a list. (medium) *)
(************************************************************************************)

(* let rec delete n l = match n, l with 
  | _, [] -> []
  | 1, h::t -> t
  | _, h::t -> h:: (delete (n-1) t) in
 *)  

let rec drop list n  = 
  let rec aux counter = function 
    |[] -> []
    |h::t -> if counter = n then (aux 1 t) else h::(aux (counter+1) t) in
  aux 1 list

(*==================================================================================*)
(* SOLUTION *)
(*==================================================================================*)

let drop_sol list n =
    let rec aux i = function
      | [] -> []
      | h :: t -> if i = n then aux 1 t else h :: aux (i+1) t  in
    aux 1 list;;
(* val drop : 'a list -> int -> 'a list = <fun> *)

(*==================================================================================*)
(* NOTES *)
(*==================================================================================*)

(* Redo it by yourself *)

(*==================================================================================*)
(* REVISION *)
(*==================================================================================*)

(* NONE *)
    
(*+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*)
(*+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*)

(************************************************************************************)
(* 17. Split a list into two parts; the length of the first part is given. (easy) *)
(************************************************************************************)

let rec split list n = 
  let rec aux acc i = function 
    | [] -> (acc, [])
    | h::t  -> if i = n then (acc,t) else aux (acc@[h]) (i+1) t
  in aux [] 0 list

(*==================================================================================*)
(* SOLUTION *)
(*==================================================================================*)

let split_sol list n =
    let rec aux i acc = function
      | [] -> List.rev acc, []
      | h :: t as l -> if i = 0 then List.rev acc, l
                       else aux (i-1) (h :: acc) t  in
    aux n [] list;;
(* val split : 'a list -> int -> 'a list * 'a list = <fun> *)

(*==================================================================================*)
(* NOTES *)
(*==================================================================================*)

(* Good Job! *)

(*==================================================================================*)
(* REVISION *)
(*==================================================================================*)

(* NONE *)

