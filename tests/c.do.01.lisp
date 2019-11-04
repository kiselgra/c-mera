(include <stdio.h>)

(function strcatx ((char p[]) (char q[])) -> void
      (decl ((int i = 0) (int j = 0))
        (while (!= p[i] #\null)
          i++)
        (do-while (!= (set p[i++] q[j++]) #\null))))

(function main ((int argc) (char **argv)) -> int
    (decl ((char str[10]))
          (set str[0] #\a)
          (set str[1] #\b)
          (set str[2] #\c)
          (set str[3] #\null)
          (strcatx str "foo")
     (printf "%s\\n" str)
     (return 0)))

;;## abcfoo
