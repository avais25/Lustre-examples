node MEALY
  (input: bool)
returns
  (output: bool);

var
  V20_state: int;

let
  output = (false -> (if ((pre V20_state) = 0) then false else (if ((pre 
  V20_state) = 1) then false else (if ((pre V20_state) = 2) then false else (if 
  (input = false) then false else true)))));
  V20_state = ((if (input = false) then 0 else 1) -> (if ((pre V20_state) = 0) 
  then (if (input = false) then 0 else 1) else (if ((pre V20_state) = 1) then 
  (if (input = false) then 2 else 1) else (if ((pre V20_state) = 2) then (if (
  input = false) then 0 else 3) else (if (input = false) then 2 else 1)))));
tel

