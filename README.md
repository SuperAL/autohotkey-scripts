[English Readme](https://github.com/SuperAL/autohotkey-scripts/blob/master/README-en.md)

# autohotkey-scripts
用来存放我的 `.ahk` 文件的仓库。

## 如何30秒内使用
### 步骤 1
**下载 AutoHotkey 的安装程序或者 `.zip` 文件**

[这里下载](https://autohotkey.com/download/) 或者直接 `git clone` 我的仓库, 我已经将安装程序上传上去了。

> 下载安装程序的话，直接双击安装即可; 如果下载的 `.zip` 文件，直接解压即可（这样就能够运行 `.ahk` 文件了）

> 如果遇到任何问题, 找到 `AutoHotkey.chm` 这个文件，打开即可看到使用教程，很详细，很多功能里面都有详细的使用说明。

### 步骤 2
**下载 `alex.ahk`, 双击它 或者 右击然后 `Run Script` 运行该文件**

> 这样就可以直接使用里面定义好的快捷键了，你尝试按下快捷键组合 `[` 和 `b` 试试（**按照顺序来**，先 `[` 后 `b` ）。

### 步骤 3
**可以直接使用代码编辑器（如 sublime）来查看和编辑 `alex.ahk` 文件**

> sublime 上可以安装插件 [AutoHotkey](https://packagecontrol.io/packages/AutoHotkey) 来使得编辑 `ahk` 文件时有语法高亮，注释切换，自动补全等功能。

> 如果在文件运行时你做了修改，保存修改后，你可以右击通知栏中的 `H` 图标，点击 `Reload This Script` 使修改的代码生效。
![运行中的图标](https://github.com/SuperAL/autohotkey-scripts/raw/master/readme/script.png)
![重新运行该脚本](https://github.com/SuperAL/autohotkey-scripts/raw/master/readme/contextMenu.png)

## 简单的语法说明
**英文输入**
`:*:[b::` 这是快捷键定义，其中 `:*:` 和 `::` 中间的 `[b` 就是你定义的快捷键组合，`Send, browser-sync start --server --files "**"` 中 `Send, ` 后面就是你自定义的输入内容。
按下 `[` 和 `b` 即可触发快捷键，它会自动帮你键入你写好的内容。

```ahk
; browsersync 本地服务器启动命令
:*:[b::  ; 按下快捷键组合： `[` 和 `b`
Send, browser-sync start --server --files "**" ; 它会自动帮你输入 `browser-sync start --server --files`
Return

; docsify 本地服务器启动命令
:*:[d::  ; 按下快捷键组合： `[` 和 `d`
Send, docsify serve docs ; 它会自动帮你输入 `docsify serve docs`
Return
```

**中文输入**
以上的方法是针对键盘按键的，可以自动帮你键入你定义好的键盘上能找到的按键，因此只适合英文输入。如果你想要输入中文，请定位到 `alex.ahk` 文件中的 `(中文)热词速写` 部分。

```
:*:]b::  ; 按下快捷键组合： `]` 和 `b`
FastInput("【文章推荐阅读】") ; 它会自动帮你输入 `【文章推荐阅读】`，你可以随便修改双引号中的内容
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
```
> **注意**：如果发现输出的中文短语是乱码的话，就将 `.ahk` 文件保存为 `UTF-8 with BOM` 格式。在 sublime 编辑中你可以这样做： `File` -> `Save With Encoding` -> `UTF-8 with BOM`。
![文件保存格式](https://github.com/SuperAL/autohotkey-scripts/raw/master/readme/encoding.png)

**其他功能**

```
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

; 快捷输入当前日期时间
:*:]n::  ; 按下快捷键组合： `]` 和 `n`
getNow()
return

getNow()
{
	FormatTime, NowDateTime,, yyyy-MM-dd HH:mm:ss  ; 定义时间的显示格式为 `yyyy-MM-d dddd HH:mm:ss` => `2017-09-30 星期六 14:37:47`，可以随意修改
	send, %NowDateTime%
}
```

## 总结
多多查看 `AutoHotkey.chm`，你会发现里面有很多很实用的功能供你把玩。
我个人的使用场景是：快捷输入一些常用的 git 命令、一些常用的中文短语等。
当你发现你经常重复性的输入一些内容时（无论是编程时常用的命令行语句或者聊天时常打的短语），你就非常需要这个工具了！