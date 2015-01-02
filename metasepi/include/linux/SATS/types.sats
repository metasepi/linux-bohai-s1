(*
 * Original: include/linux/types.h (e1e12d2f3104be886073ac6c5c4678f30b1b9e51)
 *)
%{#
#include "include/linux/CATS/types.cats"
%}

typedef list_head_t = $extype_struct"struct list_head" of {
  next= ptr // xxx
, prev= ptr // xxx
}
