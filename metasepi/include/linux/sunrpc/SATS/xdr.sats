(*
 * Original: include/linux/sunrpc/xdr.h (4c190e2f913f038c9c91ee63b59cd037260ba353)
 *)
%{#
#include "include/linux/sunrpc/CATS/xdr.cats"
%}
staload "metasepi/include/linux/SATS/types.sats"

#define XDR_MAX_NETOBJ 1024
typedef xdr_netobj_t(i:int) = $extype_struct"struct xdr_netobj" of {
  len=  uint(i)
, data= ptr // xxx
}

fun XDR_QUADLEN {n:nat}
  (x: uint(n)): uint((n+3)/4) = "mac#"
fun xdr_encode_netobj
  {l:addr}{n:int | n > 0}{m:int | (m-1)*4 <= n && n < m*4}{o:int | o > m+1}
  (!xdr_netobj_t(n) @ l | p: !arrayptr(__be32, o), obj: ptr(l)): arrayptr(__be32, o-m-1) = "ext#%"
