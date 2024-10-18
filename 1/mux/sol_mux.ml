let mux2 (a:bool) (b:bool) (s0:bool): bool = (s0 && a) || (not s0 && b)

let muxif (a:bool) (b:bool) (s0:bool): bool = if s0 then a else b

let muxpat (a:bool) (b:bool) (s0:bool): bool = 
  match (s0,a ,b) with
  | (false, false, false) -> false 
  | (false, false, true) -> false
  | (false, true, false) -> true 
  | (false, true, true) -> false 
  | (true, false, false) -> false 
  | (true, false, true) -> true 
  | (true, true, false) -> true 
  | (true, true, true) -> true 