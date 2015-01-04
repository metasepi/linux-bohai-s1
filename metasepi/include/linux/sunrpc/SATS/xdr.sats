(*
 * Original: include/linux/sunrpc/xdr.h (4c190e2f913f038c9c91ee63b59cd037260ba353)
 *)
%{#
#include "include/linux/sunrpc/CATS/xdr.cats"
%}
staload "metasepi/include/linux/SATS/types.sats"

#define XDR_MAX_NETOBJ 1024
typedef xdr_netobj_t = $extype_struct"struct xdr_netobj" of {
  len=  uint
, data= ptr // xxx
}

fun XDR_QUADLEN (x: uint): uint = "mac#"
fun xdr_encode_netobj (p: cPtr1(__be32), xp: cPtr1(xdr_netobj_t)): ptr = "mac#"
