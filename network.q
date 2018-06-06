ins:`fx`eqc;
`nodes upsert  createNode each {`$("_" sv x)}each string `tp`ctp`rte`rdb`hdb1`hdb2`hdb`gw cross ins;
 
e:{`$("_" sv x 0 2;"_" sv x 1 2)}each string   ((`tp`rte);(`tp`ctp);(`rte`rdb);(`gw`hdb);(`gw`rdb)) cross ins;
`links upsert  createEdge'[e[;0];e[;1]];

`nodes upsert createNode[`gw_g1];
`links upsert createEdge[`gw_g1;`rdb_fx];
`links upsert createEdge[`gw_g1;`hdb1_fx];
`links upsert createEdge[`gw_g1;`rdb_eqc];
`links upsert createEdge[`gw_g1;`hdb1_eqc];
`nodes upsert createNode[`gw_g2];
`links upsert createEdge[`gw_g2;`rdb_fx];
`links upsert createEdge[`gw_g2;`hdb2_fx];
`links upsert createEdge[`gw_g2;`rdb_eqc];
`links upsert createEdge[`gw_g2;`hdb2_eqc];

`nodes upsert createNode each  `fh_lse`fh_nyse`fh_nse;
`links upsert createEdge[`tp_eqc] each `fh_lse`fh_nyse`fh_nse;
`nodes upsert createNode each  `fh_ret`fh_ebl`fh_int;
`links upsert createEdge[`tp_fx] each `fh_ret`fh_ebl`fh_int;

`nodes upsert createNode each `c1e`c2e`c3e`d1e;
`links upsert createEdge[`ctp_eqc] each `c1e`c2e`d1e;
`links upsert createEdge[`gw_g1;`c1e];
`links upsert createEdge[`gw_g2;`c3e];

`nodes upsert createNode each `c1f`c2f`c3f`d1f;
`links upsert createEdge[`ctp_fx] each `c1f`c2f`d1f;
`links upsert createEdge[`gw_g1;`c1f];
`links upsert createEdge[`gw_g2;`c3f];
