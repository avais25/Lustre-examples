node CAR
  (on: bool;
  mode: int)
returns
  (light: bool;
  hi: bool);

var
  V6_flag: bool;
  V7_count: int;

let
  light = on;
  hi = (if (light = false) then false else (if (mode = 0) then false else (if (
  mode > 0) then true else (if ((mode < 0) and (V6_flag = true)) then true else 
  false))));
  V6_flag = (true -> (if ((mode >= 0) or (light = false)) then true else (if (
  (pre V7_count) = 0) then (not (pre V6_flag)) else (pre V6_flag))));
  V7_count = (9 -> (if ((((pre mode) >= 0) or ((pre light) = false)) and (mode 
  < 0)) then 9 else (if ((((pre V7_count) = 0) or (mode >= 0)) or (light = 
  false)) then 9 else ((pre V7_count) - 1))));
tel

