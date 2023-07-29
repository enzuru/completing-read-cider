;;; completing-read-cider.el --- Search Cider symbols with completing-read  -*- lexical-binding:t; coding:utf-8 -*-

;; Copyright (C) enzu.ru

;; Homepage: https://github.com/enzuru/completing-read-cider
;; Keywords: lisp matching tools

;; Package-Version: 1.0.0
;; Package-Requires: ((emacs "24.4") (cider "1.7.0"))

;; SPDX-License-Identifier: GPL-3.0

;;; Commentary:

;; completing-read-cider provides a list of symbols available in your Cider session

;;; Code:

(require 'cider)

(defun completing-read-cider-search ()
  "Send apropos command to CIDER."
  (cider-complete ""))

(defun completing-read-cider ()
  "Get list of symbols available in your CIDER session."
  (interactive)
  (cider-doc-lookup
   (completing-read "Look up symbol in CIDER: "
                    (completing-read-cider-search))))

(provide 'completing-read-cider)

;;; completing-read-cider.el ends here
