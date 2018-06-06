.z.ws:{neg[.z.w] .j.j @[value;x;{`$x}]};
.z.wo:{show "Connection open : ",string x};
.z.wc:{show "Connection close : ", string x};

nodes:([] id:();  label:();grp:();size:();x:();y:());
links:([] id:(); target:();source:());

eId:0;
createNode:{[l] (`id`label`grp`size`x`y)!(l;l;first "_"vs string l;100;0;0) };
createEdge:{[s;t] eId+:1; (`id`target`source)!(string eId;t;s) };

network:{ ([] edges:enlist links;nodes:enlist nodes)}

