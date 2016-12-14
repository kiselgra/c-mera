(in-package :cm-glsl)

(defmacro glsl-syntax (tags lambda-list &body body)
  `(defsyntax ,tags (:cmu-glsl) ,lambda-list ,@body))

(defmacro decompose-specifier (item)
  (if (let ((symbol (first (last (butlast item)))))
	(and (symbolp symbol)
	     (equal (symbol-name symbol) "=")))
      ;; specifier with value, without type nor identifier
      `(make-declaration-node
	;; specifiers
	(,@(butlast item 2)
	 ;; type: none
	 nil
	 ;; identifier:: none
	 nil
	 ;; value and "="
	 ,@(last item 2)))
      ;; only specifier
      `(make-declaration-node
	;; specifier
	(,@item
	 ;; type: none
	 nil
	 ;; identifier: none
	 nil
	 ;; value: none
	 nil))))

(glsl-syntax layout (&rest parameters)
 "glsl layout qualifier"
 `(layout 
   ;; qualifiers
   (parameter-list
    (make-nodelist
     ,parameters :prepend decompose-specifier))))


(build-context-switches
 :user-package :cmu-glsl
 :symbols glsl-symbols)

(build-swap-package
 :user-package :cmu-glsl
 :swap-package :cms-glsl
 :symbols glsl-swap)


