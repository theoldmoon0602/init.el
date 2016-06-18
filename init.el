;;;;;
(require 'package) ; package managerを使う設定

; パッケージのホスティングサイトを追加
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

; おまじない
(package-initialize)

;;;

; 起動時のスプラッシュもなくす
(setq inhibit-splash-screen t)

; 警告音を消す
(setq ring-bell-function 'ignore)

; カーソルを C-u C-SPC C-SPC ...で遡れる
(setq set-mark-command-repeat-pop t)

; 対応する括弧をハイライト
(show-paren-mode 1)

; 現在行を強調
(global-hl-line-mode 1)

; C-hはBSとして使える
(global-set-key (kbd "C-h") 'delete-backward-char)

; 現在時刻をstatus barに表示する
(display-time)

; 行番号をstatus barに表示する
(line-number-mode t)
; 列番号をstatus barに表示する
(column-number-mode t)

; 行左に行番号を表示する
(global-linum-mode t)

; コンソールログを10000件まで憶える
(setq message-log-max 10000)
; バッファの履歴を 1000件まで憶える
(setq history-length 1000)

; 画面上部のメニューバーを削除
(menu-bar-mode -1)
; ツールバー削除
(tool-bar-mode -1)
; スクロールバー削除
(scroll-bar-mode -1)

; デフォルトの文字コード
(prefer-coding-system 'utf-8)

;;;;;
; ddskkのインストール
(package-install 'ddskk)

; ddskkの設定
(when (require 'skk nil t)
  (global-set-key (kbd "C-x C-j") 'skk-auto-fill-mode)
  (setq default-input-method "japanese")
  (require 'skk-study))

;;;;;
;auto-completeのインストール
(package-install 'auto-complete)

; 設定
(ac-config-default)

;;;;;
; ac-dcd のいんすとーる(auto-complete for dlang)
(package-install 'ac-dcd)

; 設定
(add-hook 'd-mode-hook 'ac-dcd-setup)
