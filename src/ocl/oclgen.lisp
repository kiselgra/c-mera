(in-package :oclgen)

(add-qualifier '__global 'global
	       '__local 'local
	       '__constant 'constant
	       '__private 'private
	       '__generic 'generic
	       '__kernel 'kernel
	       '__read_only 'read_only
	       '__write_only 'write_only
	       '__read_write 'read_write
	       'uniform 'pip)

(in-package :cg-user)

;; Variables are lower case due to the inverted case-reading behaviour,
(use-variables |clk_local_mem_fence|
	       |clkglobal_mem_fence|
	       |clk_normalized_coords_true|
	       |clk_normalized_coords_false|
	       |clk_address_repeat|
	       |clk_address_clamp|
	       |clk_address_none|
	       |clk_address_clamp_to_edge|
	       |clk_address_mirrored_repeat|
	       |clk_filter_nearest|
	       |clk_filter_linear|)
	       


