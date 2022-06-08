(symbols 'gl 'pico)

(de init-prog-rast (Paths-Vert
                    Paths-Frag)

  (let (Program (create-program)
        Log-Vert (cad-shader VERTEX-SHADER
                    Program
                    Paths-Vert)
        Log-Frag (cad-shader FRAGMENT-SHADER
                    Program
                    Paths-Frag))
    (elog~elog 'init-prog-comp
      (if Log-Vert
          Log-Vert
          "Compiled and attached vertex shader sucessfully"))

    (elog~elog 'init-prog-comp
      (if Log-Frag
          Log-Frag
          "Compiled and attached vertex shader sucessfully"))

    (link-program Program)
    (query-program-info-log Program)
    Program))


(de init-prog-comp (Paths)
  (let (Program (create-program)
        Log-Comp (cad-shader COMPUTE-SHADER
                    Program
                    Paths))

    (elog~elog 'init-prog-comp
      (if Log-Comp
          Log-Comp
          "Compiled and attached shader successfully"))

    (link-program Program)
    (query-program-info-log Program)
    Program))


(de query-program-info-log (Program)
  (prog1
    (get-program-info-log-2 Program)
    (elog~elog 'query-program-info-log
      (if @
          @
          "Compiled program successfully"))))
