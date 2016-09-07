# w10_rmapp

移除 windows 10 內建的 App

Fork from [W4RH4WK/Debloat-Windows-10](https://github.com/W4RH4WK/Debloat-Windows-10)

# 使用方法

開始 / Powershell 右鍵 管理員開啟

切換到本腳本資料夾(如 c:\Users\kerker\desktop\w10_rmapp\)

    PS> cd c:\Users\kerker\desktop\w10_rmapp\

關閉安全限制

    PS> Set-ExecutionPolicy Unrestricted

選 Y

解除網路下載的檔案限制

    PS > ls -r *.ps* | Unblock-File

執行欲執行的腳本

移除 內建 APP

    PS> .\scripts\w10_rmapp.ps1

移除 OneDrive

    PS> .\scripts\remove-onedrive.ps1


## License

    "THE BEER-WARE LICENSE" (Revision 42):

    As long as you retain this notice you can do whatever you want with this
    stuff. If we meet some day, and you think this stuff is worth it, you can
    buy us a beer in return.

    This project is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
    FITNESS FOR A PARTICULAR PURPOSE.
