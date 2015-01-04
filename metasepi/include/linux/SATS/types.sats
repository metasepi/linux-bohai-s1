(*
 * Original: include/linux/types.h (e1e12d2f3104be886073ac6c5c4678f30b1b9e51)
 *)
%{#
#include "include/linux/CATS/types.cats"
%}

typedef __be32 = uint32

fun memcpy (d:ptr, s:ptr, n:size_t): ptr = "mac#" // xxx UNSAFE
fun cpu_to_be32 (x: uint): __be32 = "mac#"

typedef list_head_t = $extype_struct"struct list_head" of {
  next= ptr // xxx
, prev= ptr // xxx
}
