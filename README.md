# completing-read-cider

This is a simple package that provides `completing-read` for CIDER symbols. When a symbol is selected, a definition of the symbol is shown.

Use the completion framework of your choice, whether [ivy](https://github.com/abo-abo/swiper), [vertico](https://github.com/minad/vertico), [mct](https://git.sr.ht/~protesilaos/mct), or just the standard icomplete.

## Installation

```lisp
(straight-use-package
 '(completing-read-cider
   :type git
   :host github
   :repo "enzuru/completing-read-cider"))
(require 'completing-read-cider)

(define-key clojure-mode-map (kbd "C-h s") 'completing-read-cider-describe-symbol)
(define-key cider-repl-mode-map (kbd "C-h s") 'completing-read-cider-describe-symbol)
```

### Using with Ivy

```lisp
(setq completing-read-function #'ivy-completing-read)
```

## License

This package is free software under the GNU General Public License, version 3 or any later version. See the [LICENSE](LICENSE) file for the full text.
