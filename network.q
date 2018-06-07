ins:`fx_a`eqc_a`fx_e`eqc_e`fx_u`eqc_u;
`nodes upsert  createNode each {`$("_" sv x)}each string `tp`ctp`rte`rdb`hdb1`hdb`gw cross ins;
 
e:{`$("_" sv x 0 2;"_" sv x 1 2)}each string   ((`tp`rte);(`tp`ctp);(`rte`rdb);(`gw`hdb);(`gw`rdb)) cross ins;
`links upsert  createEdge'[e[;0];e[;1]];

`nodes upsert createNode[`gw_ge];
`links upsert createEdge[`gw_ge;`rdb_eqc_a];
`links upsert createEdge[`gw_ge;`hdb1_eqc_a];
`links upsert createEdge[`gw_ge;`rdb_eqc_e];
`links upsert createEdge[`gw_ge;`hdb1_eqc_e];
`links upsert createEdge[`gw_ge;`rdb_eqc_u];
`links upsert createEdge[`gw_ge;`hdb1_eqc_u];

`nodes upsert createNode[`gw_gf];
`links upsert createEdge[`gw_gf;`rdb_fx_a];
`links upsert createEdge[`gw_gf;`hdb1_fx_a];
`links upsert createEdge[`gw_gf;`rdb_fx_e];
`links upsert createEdge[`gw_gf;`hdb1_fx_e];
`links upsert createEdge[`gw_gf;`rdb_fx_u];
`links upsert createEdge[`gw_gf;`hdb1_fx_u];


`nodes upsert createNode each  `fh_lse`fh_nyse`fh_nse;
`links upsert createEdge[`tp_eqc_u] each `fh_nyse`fh_nse;
`links upsert createEdge[`tp_eqc_e] each (),`fh_lse;

`nodes upsert createNode each  `fh_ret`fh_ebs`fh_int;
`links upsert createEdge[`tp_fx_u] each `fh_ret`fh_int;
`links upsert createEdge[`tp_fx_e] each (),`fh_ebs;

`nodes upsert createNode each `c1e`c2e`c3e`c4e`c5e`d1e;
`links upsert createEdge[`ctp_eqc_e] each `c1e`c2e`d1e;
`links upsert createEdge[`ctp_eqc_u] each `c3e`c4e;

`links upsert createEdge[`gw_ge;`c1e];
`links upsert createEdge[`gw_gf;`c5e];

`nodes upsert createNode each `c1f`c2f`c3f`c4f`c5f`d1f;
`links upsert createEdge[`ctp_fx_e] each `c1f`c2f`d1f;
`links upsert createEdge[`ctp_fx_a] each `c5f;

`links upsert createEdge[`gw_gf;`c3f];
`links upsert createEdge[`gw_ge;`c4f];
