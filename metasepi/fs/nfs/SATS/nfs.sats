(*
 * Original: fs/nfs/nfs.h (89d77c8fa8e6d1cb7e2cce95b428be30ddcc6f23)
 *)
%{#
#include "fs/nfs/CATS/nfs.cats"
%}
staload "metasepi/include/linux/SATS/types.sats"
staload "metasepi/include/linux/SATS/module.sats"

abst@ype file_system_type_t  = $extype"struct file_system_type"
abst@ype rpc_version_t       = $extype"struct rpc_version"
abst@ype nfs_rpc_ops_t       = $extype"struct nfs_rpc_ops"
abst@ype super_operations_t  = $extype"struct super_operations"
typedef file_system_type_t_p = cPtr0(file_system_type_t)
typedef rpc_version_t_p      = cPtr0(rpc_version_t)
typedef nfs_rpc_ops_t_p      = cPtr0(nfs_rpc_ops_t)
typedef super_operations_t_p = cPtr0(super_operations_t)
macdef nfs_fs_type_p         = $extval(file_system_type_t_p, "&nfs_fs_type")
macdef nfs_version2_p        = $extval(rpc_version_t_p, "&nfs_version2")
macdef nfs_v2_clientops_p    = $extval(nfs_rpc_ops_t_p, "&nfs_v2_clientops")
macdef nfs_sops_p            = $extval(super_operations_t_p, "&nfs_sops")

typedef nfs_subversion_t = $extype_struct"struct nfs_subversion" of {
  owner=    module_t_p
, nfs_fs=   file_system_type_t_p
, rpc_vers= rpc_version_t_p
, rpc_ops=  nfs_rpc_ops_t_p
, sops=     super_operations_t_p
, xattr=    ptr // xxx
, list=     list_head_t
}
