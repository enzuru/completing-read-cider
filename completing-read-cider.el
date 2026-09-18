;;; completing-read-cider.el --- Search Cider symbols with completing-read  -*- lexical-binding:t; coding:utf-8 -*-

;; Copyright (C) enzu.ru

;; Homepage: https://github.com/enzuru/completing-read-cider
;; Keywords: lisp matching tools

;; Package-Version: 1.0.0
;; Package-Requires: ((emacs "24.4") (cider "1.7.0"))

;; SPDX-License-Identifier: GPL-3.0-or-later

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

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
