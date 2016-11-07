
;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |
(package-initialize)
;;语法高亮
(require 'org)
(setq org-src-fontify-natively t)
;;字体
(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")
(set-default-font "Courier New-12")
(set-fontset-font "fontset-default" 'unicode '("WenQuanYi Zen Hei" . "unicod\
e-ttf"))  
;;全局
;;(defun open-init-file()
 ;;(interactive)
;; (find-file "~/.emacs"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
;;(global-set-key "<f2>" 'open-init-file) (defun open-init-file()
(global-set-key "\C-e" 'ansi-term)
(global-auto-revert-mode 1)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/elpa/")
;; Package Management
;; -----------------------------------------------------------------
;;(require 'init-packages)
(require 'frame-bufs)
(require 'init-moden)
;;魔性主题，不建议打开，可以作为参考
;;(require 'FlatUI)  
;;主题
;;(load-theme 'Arjin 1)
(require 'color-theme)
(color-theme-initialize)
(color-theme-sitaramv-nt)  
;;(color-theme-courior)

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode 0)

;;关闭菜单栏
(menu-bar-mode 0)
;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 更改光标的样式（不能生效，解决方案见第二集）
(setq cursor-type 'bar)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 关闭缩进 (第二天中被去除)
;; (electric-indent-mode -1)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 175)

;; 快速打开配置文件
(defun open-init-file()
(interactive)
(find-file "~/.emacs"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key ("C-9") 'open-init-file)

;;语法高亮
(require 'org)
(setq org-src-fontify-natively t)
;;主题
;;(load-theme 'Arjin 1)
(require 'color-theme)
(color-theme-initialize)
(color-theme-sitaramv-nt)
;; 关闭出错时的蜂鸣提示声
(setq visible-bell t)
;; 尽快显示按键序列
(setq echo-keystrokes 0.1)
;;在minibuffer里启用自动补全函数和变量
(icomplete-mode 1)
;; Linux 下复制内容到系统的剪切板
(setq x-select-enable-clipboard t)
;; 启用部分补全功能，如输入M-x q r r相当于M-x query-replace-regexp
;;(partial-completion-mode 1)

;; 在emacs读man文档时，使用当前buffer
(setq Man-notify-method 'pushy)
;;启用备份
(setq version-control t)
;;备份最原始的版本两次，记第一次编辑前的文档，和第二次编辑前的文档
(setq kept-old-versions 2)
;;备份最新的版本5次，理解同上
(setq kept-new-versions 5)
;;删掉不属于以上7版本的版本
(setq delete-old-versions t)
;;设置备份文件的路径
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))
;;备份设置方法，直接拷贝
;;(setq backup-by-copying(global-set-key (kbd "C-c k") 
;; 不生成名为#filename#的临时文件
(setq auto-save-default nil)
;; 自动保存
(setq auto-save-mode t)
;;自动重载更改的文件
(global-auto-revert-mode 1)
;;将C-F10绑定为显示菜单栏
(global-set-key [(C-f10)] 'menu-bar-mode)

;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线
(mouse-avoidance-mode 'animate)

;;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;; Tell Emacs fill commands to insert two after a colon
(setq colon-double-space t)

;; 在文档最后自动插入空白行
(setq require-final-newline t)

;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;在标题栏显示buffer的名字.区分不同的主机和用户名称
(setq frame-title-format '((:eval (getenv-internal "LOGNAME"))"@"(:eval (system-name))":"(:eval (or (buffer-file-name) (buffer-name)))))



