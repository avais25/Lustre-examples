node COUNTER
  (s: bool)
returns
  (clk: bool;
  q0: bool;
  q1: bool;
  q2: bool;
  q3: bool);

var
  V19_k1: bool;
  V20_k2: bool;
  V21_k3: bool;
  V22_k0: bool;
  V23_reset: bool;
  V63_temp: bool;
  V73_temp: bool;
  V83_temp: bool;
  V93_temp: bool;

let
  clk = (false -> (not (pre clk)));
  q0 = (if V23_reset then false else (if (false -> (clk and (not (pre clk)))) 
  then V63_temp else (false -> (pre q0))));
  q1 = (if V23_reset then false else (if (false -> (V22_k0 and (not (pre V22_k0
  )))) then V73_temp else (false -> (pre q1))));
  q2 = (if V23_reset then false else (if (false -> (V19_k1 and (not (pre V19_k1
  )))) then V83_temp else (false -> (pre q2))));
  q3 = (if V23_reset then false else (if (false -> (V20_k2 and (not (pre V20_k2
  )))) then V93_temp else (false -> (pre q3))));
  V19_k1 = (not q1);
  V20_k2 = (not q2);
  V21_k3 = (not q3);
  V22_k0 = (not q0);
  V23_reset = (false -> (if ((((((pre q0) = true) and ((pre q1) = true)) and (
  (pre q2) = false)) and ((pre q3) = true)) and (clk = true)) then true else 
  false));
  V63_temp = (false -> (if ((true = false) and (true = false)) then (pre q0) 
  else (if ((true = true) and (true = true)) then (not (pre q0)) else (if ((
  true = true) and (true = false)) then true else false))));
  V73_temp = (false -> (if ((true = false) and (true = false)) then (pre q1) 
  else (if ((true = true) and (true = true)) then (not (pre q1)) else (if ((
  true = true) and (true = false)) then true else false))));
  V83_temp = (false -> (if ((true = false) and (true = false)) then (pre q2) 
  else (if ((true = true) and (true = true)) then (not (pre q2)) else (if ((
  true = true) and (true = false)) then true else false))));
  V93_temp = (false -> (if ((true = false) and (true = false)) then (pre q3) 
  else (if ((true = true) and (true = true)) then (not (pre q3)) else (if ((
  true = true) and (true = false)) then true else false))));
tel

