# Signals on Windows

Signals are a feature of UNIX OSs, not really supported on Windows platform, although the handling of some signals can be emulated.

The C standard defines only 6 signals. They are all defined in `signal.h` header (`csignal` header in C++):
* SIGABRT - abort, abnormal termination
* SIGFPE  - floating point exception
* SIGILL  - illegal, invalid instruction
* SIGINT  - interrupt, interactive attention request sent to the program
* SIGSEGV - segmentation violation, invalid memory access
* SIGTERM - terminate, termination request sent to the program

Additional signals may be specified in the `signal.h` header by the implementation. For example, Linux defines much more signals.

The 6 signals listed above are the only signals "supported" by Windows. There is a function for listening to signals, `signal()`, but Windows has no function to send a signal, like `kill()`.

So, this is all about finding adequate replacement functions to "fake" signals on Windows. Some such functions:
* SIGTERM: `SendMessage(WM_CLOSE)`, used by `taskkill.exe`, works for windowed processes
* SIGKILL: `TerminateProcess()`, used by `taskkill.exe /f`, works for windowed and console processes
* SIGINT: `GenerateConsoleCtrlEvent()`, works for console processes, simulates Ctrl+C

List of UNIX signals
https://en.wikipedia.org/wiki/Signal_(IPC)

Microsoft: UNIX Application Migration Guide (and signals)
https://docs.microsoft.com/en-us/previous-versions/ms811896(v=msdn.10)
