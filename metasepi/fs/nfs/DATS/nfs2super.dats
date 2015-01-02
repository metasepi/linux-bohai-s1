(*
 * Original: fs/nfs/nfs2super.c (ddda8e0aa8b955e20cb80908189bfa154ab54837)
 *)
#define ATS_DYNLOADFLAG 0
#include "share/atspre_define.hats"
#include "metasepi/staloadall.hats"
staload "metasepi/include/linux/SATS/module.sats"
staload "metasepi/include/linux/SATS/nfs_fs.sats"
staload "metasepi/fs/nfs/SATS/internal.sats"
staload "metasepi/fs/nfs/SATS/nfs.sats"

var nfs_v2 = @{
  owner=    THIS_MODULE
, nfs_fs=   nfs_fs_type_p
, rpc_vers= nfs_version2_p
, rpc_ops=  nfs_v2_clientops_p
, sops=     nfs_sops_p
, xattr=    the_null_ptr
, list=     @{next=the_null_ptr, prev=the_null_ptr} : list_head_t
} : nfs_subversion_t

%{
/*
 * Copyright (c) 2012 Netapp, Inc. All rights reserved.
 */
static struct nfs_subversion nfs_v2 = {
	.owner = THIS_MODULE,
	.nfs_fs   = &nfs_fs_type,
	.rpc_vers = &nfs_version2,
	.rpc_ops  = &nfs_v2_clientops,
	.sops     = &nfs_sops,
};

static int __init init_nfs_v2(void)
{
	register_nfs_version(&nfs_v2);
	return 0;
}

static void __exit exit_nfs_v2(void)
{
	unregister_nfs_version(&nfs_v2);
}

MODULE_LICENSE("GPL");

module_init(init_nfs_v2);
module_exit(exit_nfs_v2);
%}
