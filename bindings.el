;;; ~/.doom.d/bindings.el -*- lexical-binding: t; -*-
;;;
;; (map! (:when (featurep! :lang org)
;;   (:after org
;;     :map org-mode-map
;;     :m "C-=" #'powerthesaurus-lookup-word
;;     :m "C-+" #'powerthesaurus-lookup-word-at-point
;;     :m "<f12>" #'wordnut-search
;;         )))


(map!
  :after latex
  :map LaTeX-mode-map
  "C-S-m" #'latex-math-from-calc
  ;; "<f2>"  #'mw-thesaurus-lookup-dwim
  ;; "<f2>"  #'wordnut-search
  "<f2>"  #'sdcv-search-pointer
  "<f3>"  #'powerthesaurus-lookup-synonyms-dwim
)


(map!
  :after sdcv
  :map sdcv-mode-map
  "<f2>"  #'sdcv-search-pointer
)


(map!
 :after julia-repl
 :map julia-repl-mode-map
 "C-<return>"  #'my/julia-repl-send-cell
 "M-<return>"  #'julia-repl-send-line
 "C-S-<return>"  #'julia-repl-send-buffer
)

; (map!
;  "C-=" #'powerthesaurus-lookup-word
;  "C-+" #'powerthesaurus-lookup-word-at-point
;  )

;; for debugger
(map! :map dap-mode-map
      :leader
      :prefix ("d" . "dap")
      ;; basics
      :desc "dap next"          "n" #'dap-next
      :desc "dap step in"       "i" #'dap-step-in
      :desc "dap step out"      "o" #'dap-step-out
      :desc "dap continue"      "c" #'dap-continue
      :desc "dap hydra"         "h" #'dap-hydra
      :desc "dap debug restart" "r" #'dap-debug-restart
      :desc "dap debug"         "s" #'dap-debug

      ;; debug
      :prefix ("dd" . "Debug")
      :desc "dap debug recent"  "r" #'dap-debug-recent
      :desc "dap debug last"    "l" #'dap-debug-last

      ;; eval
      :prefix ("de" . "Eval")
      :desc "eval"                "e" #'dap-eval
      :desc "eval region"         "r" #'dap-eval-region
      :desc "eval thing at point" "s" #'dap-eval-thing-at-point
      :desc "add expression"      "a" #'dap-ui-expressions-add
      :desc "remove expression"   "d" #'dap-ui-expressions-remove

      :prefix ("db" . "Breakpoint")
      :desc "dap breakpoint toggle"      "b" #'dap-breakpoint-toggle
      :desc "dap breakpoint condition"   "c" #'dap-breakpoint-condition
      :desc "dap breakpoint hit count"   "h" #'dap-breakpoint-hit-condition
      :desc "dap breakpoint log message" "l" #'dap-breakpoint-log-message)

;; cdlatex
(map!
 :after cdlatex
 :map cdlatex-mode-map
 "<tab>"  #'cdlatex-tab)
