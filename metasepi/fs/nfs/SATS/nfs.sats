(*
 * Original: fs/nfs/nfs.h (89d77c8fa8e6d1cb7e2cce95b428be30ddcc6f23)
 *)
%{#
#include "fs/nfs/CATS/nfs.cats"
%}
staload "metasepi/include/linux/SATS/types.sats"

typedef nfs_subversion_t = $extype_struct"struct nfs_subversion" of {
  owner=    ptr // xxx
, nfs_fs=   ptr // xxx
, rpc_vers= ptr // xxx
, rpc_ops=  ptr // xxx
, sops=     ptr // xxx
, xattr=    ptr // xxx
, list=     list_head_t
}
