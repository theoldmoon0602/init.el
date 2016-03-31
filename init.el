(require 'package) ; use package manager
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/")) ; use marmalade hosting packages
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/")) ; use melpa hosting packages
(package-initialize) ; ready

(setq-default bidi-display-reordering nil) ; disable language which were read right to left
(setq inhibit-splash-screen t) ; disable splash screen on launch
(setq history-delete-duplicates t) ; don't remember same history
(setq set-mark-command-repeat-pop t) ; back marks once C-u and some C-SPCs

(show-paren-mode 1) ; highlight pair pareness
(global-hl-line-mode 1) ; coloring current line
(global-set-key (kbd "C-h") 'delete-backward-char) ; set C-h to backsapace
(display-time) ; show current time on mode line


(line-number-mode t) ; show line number
(column-number-mode t) ; show column number

(setq message-log-max 10000) ; remember a lot of logs
(setq history-length 1000) ; remember a lot of history

(menu-bar-mode -1) ; disable menu bar
(tool-bar-mode -1) ; disable tool bar
(scroll-bar-mode -1) ; disable scroll bar


