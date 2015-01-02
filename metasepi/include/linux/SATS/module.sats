%{#
#include "include/linux/CATS/module.cats"
%}

abst@ype module_t  = $extype"struct module"
typedef module_t_p = cPtr0(module_t)
macdef THIS_MODULE = $extval(module_t_p, "THIS_MODULE")
