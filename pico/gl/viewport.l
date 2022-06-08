(symbols 'gl 'pico)


# Based on OpenGL: X Y Width Height
(class +Viewport)

(dm T (X Y W H)
  (=: x X)
  (=: y Y)
  (=: w W)
  (=: h H))

(dm x> (N) (if N (=: x N) (: x)))
(dm y> (N) (if N (=: y N) (: y)))
(dm w> (N) (if N (=: w N) (: w)))
(dm h> (N) (if N (=: h N) (: h)))
