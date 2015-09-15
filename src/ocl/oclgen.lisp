(in-package :cgen)

;;; pretty print override/restore

;;; copy from ast-pretty.lisp
;;; restores original behaviour
;;; Declaration item
;;; Handle declaration assignment.
(with-pp
  (with-proxynodes (value)

    (defprettymethod :before cgen::declaration-item
      (make-proxy value value))

    (defprettymethod :after cgen::declaration-item
      (del-proxy value))

    (defproxyprint :before value
      (if (slot-value item 'proxy-subnode)
	  (format stream " = ")))))

;;; copy from ast-pretty.lisp
;;; restores original behavious
;;; C-list / vectors
(with-pp
  (with-proxynodes (list-item)

    (defprettymethod :before cgen::c-list
      (make-proxy items list-item)
      (push-info 'skip-first)
      (format stream "{ "))

    (defprettymethod :after cgen::c-list
      (del-proxy items)
      (format stream " }"))

    (defproxyprint :before list-item
      (if (eql (top-info) 'skip-first)
	  (pop-info)
	  (format stream ", ")))))

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
	       


