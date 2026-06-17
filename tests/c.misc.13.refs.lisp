(include <stdio.h>)

(struct e (decl ((int fx) (int fy) (int fz))))
(decl ((struct e E = (clist 1 2 3))))

(function fE () -> ('struct e) (return E))
(function fpE () -> ('struct e*) (return &E))

(struct d (decl ((struct e (cast *e (funcall nil nil)))
		 (struct e* (cast *pe (funcall nil nil))))))
(decl ((const struct d D = (clist &fE &fpE))))

(struct c (decl ((struct d d) (const struct d *pd))))
(decl ((const struct c C = (clist D &D))))

(struct b (decl ((struct c c) (const struct c *pc))))
(decl ((const struct b B = (clist C &C))))

(struct a (decl ((struct b b) (const struct b *pb))))
(decl ((struct a a = (clist B &B))
       (struct a* pa = &a)))

(function main () -> int
  (decl ((int x = (oref  a  b  c  d  (e) fx))
	 (int y = (pref pa pb pc pd (pe) fy))
	 (int z = (pref pa b.pc (pd->pe) fz)))
    (printf "%d %d %d\\n" x y z))
  (return 0))


;;## 1 2 3

