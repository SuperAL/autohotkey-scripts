; browsersync 本地服务器启动命令
:*:[b::
Send, browser-sync start --server --files "**"
Return

; docsify 本地服务器启动命令
:*:[d::
Send, docsify serve docs
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

:*:]b::
FastInput("【文章推荐阅读】")
return

:*:]t::
FastInput("Todo: ")
return

FastInput(FastWord)
{
	temp=%ClipBoard%
	sleep,50
	ClipBoard=%FastWord%
	send,^v
	ClipBoard=%temp%
}

; -------------------------------------------------------------------------

; 当前日期
:*:]n::
getNow()
return

getNow()
{
	FormatTime, IniDateTime,, yyyy-MM-dd HH:mm:ss
	send, %IniDateTime%
}

; -------------------------------------------------------------------------

; 其他功能（真神器啊！！）

; Run a program. Note: most programs will require a FULL file path.
Run, %A_ProgramFiles%\Some_Program\Program.exe

; Run a website
Run, https://autohotkey.com

