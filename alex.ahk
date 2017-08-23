:*:[b::
Send, browser-sync start --server --files "**"
Return

:*:[d::
Send, docsify serve docs
Return

:*:[rd::
Send, npm run dev
Return

:*:[rb::
Send, npm run build
Return

:*:[ga::
Send, git add .
Return

:*:[gc::
Send, git commit -m
Return

:*:[gca::
Send, git commit -am
Return