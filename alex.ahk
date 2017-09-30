; browsersync 本地服务器启动命令
:*:[b::  ; 按下快捷键组合： `[` 和 `b`
Send, browser-sync start --server --files "**" ; 它会自动帮你输入 `browser-sync start --server --files`
Return

; docsify 本地服务器启动命令
:*:[d::  ; 按下快捷键组合： `[` 和 `d`
Send, docsify serve docs ; 它会自动帮你输入 `docsify serve docs`
Return

; -------------------------------------------------------------------------

; 执行 npm scripts
; dev: 启动开发模式
; build: 启动构建模式
:*:rd::
Send, npm run dev
Return

:*:rb::
Send, npm run build
Return

; -------------------------------------------------------------------------

; 常用 git 命令
:*:gl::
Send, git clone
Return

:*:gp::
Send, git pull
Return

:*:gh::
Send, git push
Return

:*:gs::
Send, git status
Return

:*:gga::
Send, git add .
Return

:*:gc::
Send, git commit -m '
Return

:*:gac::
Send, git commit -am '
Return

:*:gt::
Send, git stash
Return

:*:ggo::
Send, git stash pop
Return

; -------------------------------------------------------------------------

; 查看 ipconfig
:*:iip::
Send, ipconfig
Return

; 在文件资源管理器中打开当前目录（ win ）
:*:ee::
Send, explorer .
Return

; -------------------------------------------------------------------------

; 常用输入
:*:tt::
Send, true
Return

:*:ff::
Send, false
Return

:*:[l::
Send, console.log();
Return

; -------------------------------------------------------------------------

; (中文)热词速写

:*:]b::  ; 按下快捷键组合： `]` 和 `b`
FastInput("【文章推荐阅读】") ; 它会自动帮你输入 `【文章推荐阅读】`，你可以随便修改双引号中的内容
return


:*:]t::
FastInput("Todo: ")
return

; 定义了一个 `FastInput` 方法，用来将你定义好的中文短语粘贴出来，简单解释下：
FastInput(FastWord)
{
	temp=%ClipBoard%        ; 将你粘贴板上的内容取出，保存到一个临时变量
	sleep,50                ; 等待 50ms 再执行下面的语句
	ClipBoard=%FastWord%    ; 把你自定义的（中文）短语复制到剪贴板上
	send,^v                 ; 把你剪贴板上的内容粘贴出来
	ClipBoard=%temp%        ; 恢复你剪贴板上原来的内容
}

; -------------------------------------------------------------------------

; 快捷输入当前日期时间
:*:]n::  ; 按下快捷键组合： `]` 和 `n`
getNow()
return

getNow()
{
	FormatTime, NowDateTime,, yyyy-MM-d dddd HH:mm:ss  ; 定义时间的显示格式为 `yyyy-MM-d dddd HH:mm:ss` => `2017-09-30 星期六 14:37:47`，可以随意修改
	send, %NowDateTime%
}

; -------------------------------------------------------------------------

; 其他功能（真神器啊！！）

; Run a program. Note: most programs will require a FULL file path.
; 运行一个程序。 注意: 大多数程序需要提供一个完整的路径。
Run, %A_ProgramFiles%\Some_Program\Program.exe

; Run a website
; 运行一个网站（使用默认浏览器快捷打开某个网站）
Run, https://autohotkey.com

; 可以这样使用上面的功能：
:*:*a::  ; 按下快捷键组合： `*` 和 `a`
Run, https://autohotkey.com  ; 自动打开 autohotkey 官网
return