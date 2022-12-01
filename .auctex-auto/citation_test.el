(TeX-add-style-hook
 "citation_test"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("standalone" "preview")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("biblatex" "style=apa" "backend=biber")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "biblatex")
   (LaTeX-add-bibliographies
    "sources"))
 :latex)

