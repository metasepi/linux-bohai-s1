#
# Makefile for Linux kernel SUN RPC
#

EXTRA_CFLAGS += -Wno-unused-label

obj-$(CONFIG_SUNRPC) += sunrpc.o
obj-$(CONFIG_SUNRPC_GSS) += auth_gss/
obj-$(CONFIG_SUNRPC_XPRT_RDMA) += xprtrdma/

sunrpc-y := clnt.o xprt.o socklib.o xprtsock.o sched.o \
	    auth.o auth_null.o auth_unix.o auth_generic.o \
	    svc.o svcsock.o svcauth.o svcauth_unix.o \
	    addr.o rpcb_clnt.o timer.o xdr_dats.o \
	    sunrpc_syms.o cache.o rpc_pipe.o \
	    svc_xprt.o
sunrpc-$(CONFIG_SUNRPC_BACKCHANNEL) += backchannel_rqst.o bc_svc.o
sunrpc-$(CONFIG_PROC_FS) += stats.o
sunrpc-$(CONFIG_SYSCTL) += sysctl.o

#.SECONDARY: ${obj}/xdr_dats.c
