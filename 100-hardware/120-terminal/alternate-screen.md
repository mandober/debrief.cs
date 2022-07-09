# Alternate screen

Many shell utilities (vim, less) make use of the alternative screen capability of a terminal that enables presenting info or running a command with lots of output on an alternate terminal screen. When the command is done, the original screen content is restored, and the terminal screen state gets restored looking like nothing happend. This keeps the screen and history buffer tidy, preventing a large dumps of output text.

The `tput` utility can provide the access the alternate screen:
- `smcup` switch to the alternate screen
- `rmcup` stop using alt screen, restore original screen state

```shell
# To make sure you exit the alt screen when your
# command is done, set up an exit (code 0) trap.
trap 'tput rmcup' 0

# switch to the alternate screen
tput smcup

# stop using alternate screen and restore original terminal state
tput rmcup
```




https://stackoverflow.com/questions/1002008/how-does-a-process-know-when-its-been-backgrounded/1002067#1002067
https://stackoverflow.com/questions/10777087/prompt-user-for-input-again-after-background-process-return
https://stackoverflow.com/questions/11023929/using-the-alternate-screen-in-a-bash-script
https://stackoverflow.com/questions/1844232/sending-a-signal-to-a-background-process/1844440#1844440
https://stackoverflow.com/questions/19330488/terminal-access-control-issues/19330855#19330855
https://stackoverflow.com/questions/33929816/save-and-restore-terminal-content?noredirect=1&lq=1
https://stackoverflow.com/questions/36814595/how-does-launching-less-differ-from-launching-cat-in-zsh-with-regards-to-the
https://stackoverflow.com/questions/39473817/linux-reasons-for-sigstop-and-how-to-deal-with-it/44828611#44828611
https://stackoverflow.com/questions/39477145/check-if-trap-is-set-in-bash/39477217#39477217
https://stackoverflow.com/questions/46061694/bash-why-cant-i-set-a-trap-for-sigint-in-a-background-shell/69985268#69985268
https://stackoverflow.com/questions/47708808/tab-competion-in-bash-hangs-at-select
https://stackoverflow.com/questions/47920541/why-trap-does-not-work-to-interrupt-nohup-command/47921993#47921993
https://stackoverflow.com/questions/64639759/executing-bash-shell-script-accepting-argument-and-running-in-background/64640008#64640008
https://stackoverflow.com/questions/66627808/using-setpgid-in-a-mini-shell-breaks-interactive-commands/66629998#66629998
https://stackoverflow.com/questions/8777602/why-must-detach-from-tty-when-writing-a-linux-daemon/8777697#8777697
https://stackoverflow.com/questions/8864973/my-server-wont-accept-connections-while-running-as-a-background-process/8865157#8865157
https://stackoverflow.com/questions/9306100/how-can-i-tell-if-a-child-is-asking-for-stdin-how-do-i-tell-it-to-stop-that/9306189#9306189
https://stackoverflow.com/questions/9385913/what-are-the-historical-reasons-for-processes-receiving-sigttyin-ttou-instead-of


https://stackoverflow.com/questions/tagged/bash-trap

https://stackoverflow.com/search?q=SIGTTIN+++SIGTTOU
