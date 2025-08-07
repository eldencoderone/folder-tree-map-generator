@echo off
setlocal EnableDelayedExpansion

REM =====================================================
REM FOLDER TREE MAP GENERATOR v0.0.5
REM Created by elDENcoder - DM 2025 v0.0.5
REM GitHub: https://github.com/eldencoderone
REM =====================================================

REM =====================================================
REM LANGUAGE DETECTION
REM =====================================================
set "lang=en"
if /i "%LANG%"=="es" set "lang=es"
if /i "%LANG%"=="it" set "lang=it"
if /i "%LANG%"=="ja" set "lang=ja"
if /i "%LANG%"=="fr" set "lang=fr"
if /i "%LANG%"=="pt" set "lang=pt"
if /i "%1"=="es" set "lang=es"
if /i "%1"=="en" set "lang=en"
if /i "%1"=="it" set "lang=it"
if /i "%1"=="ja" set "lang=ja"
if /i "%1"=="fr" set "lang=fr"
if /i "%1"=="pt" set "lang=pt"

REM =====================================================
REM LANGUAGE STRINGS
REM =====================================================
if "%lang%"=="es" (
    set "title=GENERADOR DE MAPAS DE CARPETAS v0.0.5 by elDenCoder"
    set "github_url=GitHub: https://github.com/eldencoderone"
    set "not_installed=Este script no esta instalado en el sistema."
    set "what_do=Que quieres hacer?"
    set "opt1=Instalar en menu contextual (click derecho)"
    set "opt2=Generar mapa solo en esta carpeta"
    set "opt3=Desinstalar del sistema"
    set "opt4=Cambiar idioma"
    set "opt5=Salir"
    set "choose=Elige opcion (1/2/3/4/5): "
    set "invalid=Opcion invalida. Intentalo de nuevo."
    set "generating=GENERANDO MAPA DE CARPETAS"
    set "processing=Procesando carpeta: "
    set "generated=Mapa generado: "
    set "opening=Abriendo archivo automaticamente..."
    set "installing=INSTALANDO EN MENU CONTEXTUAL"
    set "admin_error=ERROR: Se necesitan permisos de administrador"
    set "admin_help1=Para instalar:"
    set "admin_help2=1. Click derecho sobre este BAT"
    set "admin_help3=2. Selecciona 'Ejecutar como administrador'"
    set "admin_help4=3. Elige opcion 1 nuevamente"
    set "install_complete=INSTALACION COMPLETA"
    set "now_you_can=Ahora puedes:"
    set "right_click=- Click derecho en cualquier carpeta"
    set "select_option=- Seleccionar 'Generar Mapa de Carpetas'"
    set "uninstalling=DESINSTALANDO DEL SISTEMA"
    set "not_installed_error=ERROR: El script no esta instalado en el sistema"
    set "nothing_to_uninstall=No hay nada que desinstalar."
    set "uninstall_complete=DESINSTALACION COMPLETA"
    set "completely_removed=La opcion del menu contextual ha sido completamente eliminada."
    set "explorer_restarted=Explorer ha sido reiniciado para limpiar el cache."
    set "if_still_appears=Si la opcion sigue apareciendo, reinicia tu PC."
    set "return_menu=Presiona cualquier tecla para volver al menu..."
    set "status_installed=Estado: INSTALADO en menu contextual"
    set "status_not_installed=Estado: NO INSTALADO"
    set "folder_structure=ESTRUCTURA DE CARPETA: "
    set "generated_on=GENERADO: "
    set "structure_complete=MAPA COMPLETO"
    set "context_menu_text=Generar Mapa de Carpetas"
    set "language_changed=Idioma cambiado a Español"
    set "choose_language=Elige idioma: 1)English 2)Español 3)Italiano 4)日本語 5)Français 6)Português: "
) else if "%lang%"=="it" (
    set "title=GENERATORE MAPPA CARTELLE v0.0.5 by elDenCoder"
    set "github_url=GitHub: https://github.com/eldencoderone"
    set "not_installed=Questo script non e installato nel sistema."
    set "what_do=Cosa vuoi fare?"
    set "opt1=Installa nel menu contestuale (click destro)"
    set "opt2=Genera mappa solo in questa cartella"
    set "opt3=Disinstalla dal sistema"
    set "opt4=Cambia lingua"
    set "opt5=Esci"
    set "choose=Scegli opzione (1/2/3/4/5): "
    set "invalid=Opzione non valida. Riprova."
    set "generating=GENERANDO MAPPA CARTELLE"
    set "processing=Elaborazione cartella: "
    set "generated=Mappa generata: "
    set "opening=Apertura automatica file..."
    set "installing=INSTALLAZIONE NEL MENU CONTESTUALE"
    set "admin_error=ERRORE: Sono richiesti i permessi di amministratore"
    set "admin_help1=Per installare:"
    set "admin_help2=1. Click destro su questo file BAT"
    set "admin_help3=2. Seleziona 'Esegui come amministratore'"
    set "admin_help4=3. Scegli opzione 1 di nuovo"
    set "install_complete=INSTALLAZIONE COMPLETA"
    set "now_you_can=Ora puoi:"
    set "right_click=- Click destro su qualsiasi cartella"
    set "select_option=- Seleziona 'Genera Mappa Cartelle'"
    set "uninstalling=DISINSTALLAZIONE DAL SISTEMA"
    set "not_installed_error=ERRORE: Lo script non e installato nel sistema"
    set "nothing_to_uninstall=Niente da disinstallare."
    set "uninstall_complete=DISINSTALLAZIONE COMPLETA"
    set "completely_removed=L'opzione del menu contestuale e stata completamente rimossa."
    set "explorer_restarted=Explorer e stato riavviato per pulire la cache."
    set "if_still_appears=Se l'opzione appare ancora, riavvia il PC."
    set "return_menu=Premi qualsiasi tasto per tornare al menu..."
    set "status_installed=Stato: INSTALLATO nel menu contestuale"
    set "status_not_installed=Stato: NON INSTALLATO"
    set "folder_structure=STRUTTURA CARTELLA: "
    set "generated_on=GENERATO: "
    set "structure_complete=MAPPA COMPLETA"
    set "context_menu_text=Genera Mappa Cartelle"
    set "language_changed=Lingua cambiata in Italiano"
    set "choose_language=Scegli lingua: 1)English 2)Español 3)Italiano 4)日本語 5)Français 6)Português: "
) else if "%lang%"=="ja" (
    set "title=フォルダツリーマップジェネレータ v0.0.5 by elDenCoder"
    set "github_url=GitHub: https://github.com/eldencoderone"
    set "not_installed=このスクリプトはシステムにインストールされていません。"
    set "what_do=何をしますか？"
    set "opt1=コンテキストメニューにインストール（右クリック）"
    set "opt2=このフォルダのみでマップを生成"
    set "opt3=システムからアンインストール"
    set "opt4=言語を変更"
    set "opt5=終了"
    set "choose=オプションを選択 (1/2/3/4/5): "
    set "invalid=無効なオプションです。再試行してください。"
    set "generating=フォルダマップを生成中"
    set "processing=フォルダを処理中: "
    set "generated=マップが生成されました: "
    set "opening=ファイルを自動的に開いています..."
    set "installing=コンテキストメニューにインストール中"
    set "admin_error=エラー: 管理者権限が必要です"
    set "admin_help1=インストールするには:"
    set "admin_help2=1. このBATファイルを右クリック"
    set "admin_help3=2. '管理者として実行'を選択"
    set "admin_help4=3. もう一度オプション1を選択"
    set "install_complete=インストール完了"
    set "now_you_can=これでできるようになりました:"
    set "right_click=- 任意のフォルダを右クリック"
    set "select_option=- 'フォルダマップを生成'を選択"
    set "uninstalling=システムからアンインストール中"
    set "not_installed_error=エラー: スクリプトがシステムにインストールされていません"
    set "nothing_to_uninstall=アンインストールするものがありません。"
    set "uninstall_complete=アンインストール完了"
    set "completely_removed=コンテキストメニューオプションが完全に削除されました。"
    set "explorer_restarted=エクスプローラがキャッシュクリアのため再起動されました。"
    set "if_still_appears=オプションがまだ表示される場合は、PCを再起動してください。"
    set "return_menu=メニューに戻るには任意のキーを押してください..."
    set "status_installed=状態: コンテキストメニューにインストール済み"
    set "status_not_installed=状態: インストールされていません"
    set "folder_structure=フォルダ構造: "
    set "generated_on=生成日時: "
    set "structure_complete=マップ完了"
    set "context_menu_text=フォルダマップを生成"
    set "language_changed=言語が日本語に変更されました"
    set "choose_language=言語を選択: 1)English 2)Español 3)Italiano 4)日本語 5)Français 6)Português: "
) else if "%lang%"=="fr" (
    set "title=GENERATEUR CARTE ARBORESCENCE v0.0.5 by elDenCoder"
    set "github_url=GitHub: https://github.com/eldencoderone"
    set "not_installed=Ce script n'est pas installe sur le systeme."
    set "what_do=Que voulez-vous faire?"
    set "opt1=Installer dans le menu contextuel (clic droit)"
    set "opt2=Generer la carte dans ce dossier uniquement"
    set "opt3=Desinstaller du systeme"
    set "opt4=Changer la langue"
    set "opt5=Quitter"
    set "choose=Choisir option (1/2/3/4/5): "
    set "invalid=Option invalide. Essayez a nouveau."
    set "generating=GENERATION CARTE DOSSIERS"
    set "processing=Traitement du dossier: "
    set "generated=Carte generee: "
    set "opening=Ouverture automatique du fichier..."
    set "installing=INSTALLATION DANS MENU CONTEXTUEL"
    set "admin_error=ERREUR: Permissions administrateur requises"
    set "admin_help1=Pour installer:"
    set "admin_help2=1. Clic droit sur ce fichier BAT"
    set "admin_help3=2. Selectionnez 'Executer en tant qu'administrateur'"
    set "admin_help4=3. Choisissez l'option 1 a nouveau"
    set "install_complete=INSTALLATION TERMINEE"
    set "now_you_can=Vous pouvez maintenant:"
    set "right_click=- Clic droit sur n'importe quel dossier"
    set "select_option=- Selectionner 'Generer Carte Dossiers'"
    set "uninstalling=DESINSTALLATION DU SYSTEME"
    set "not_installed_error=ERREUR: Le script n'est pas installe sur le systeme"
    set "nothing_to_uninstall=Rien a desinstaller."
    set "uninstall_complete=DESINSTALLATION TERMINEE"
    set "completely_removed=L'option du menu contextuel a ete completement supprimee."
    set "explorer_restarted=Explorer a ete redémarre pour vider le cache."
    set "if_still_appears=Si l'option apparait encore, redémarrez votre PC."
    set "return_menu=Appuyez sur une touche pour revenir au menu..."
    set "status_installed=Statut: INSTALLE dans le menu contextuel"
    set "status_not_installed=Statut: NON INSTALLE"
    set "folder_structure=STRUCTURE DOSSIER: "
    set "generated_on=GENERE: "
    set "structure_complete=CARTE COMPLETE"
    set "context_menu_text=Generer Carte Dossiers"
    set "language_changed=Langue changee en Français"
    set "choose_language=Choisir langue: 1)English 2)Español 3)Italiano 4)日本語 5)Français 6)Português: "
) else if "%lang%"=="pt" (
    set "title=GERADOR MAPA ARVORE PASTAS v0.0.5 by elDenCoder"
    set "github_url=GitHub: https://github.com/eldencoderone"
    set "not_installed=Este script nao esta instalado no sistema."
    set "what_do=O que voce quer fazer?"
    set "opt1=Instalar no menu contextual (clique direito)"
    set "opt2=Gerar mapa apenas nesta pasta"
    set "opt3=Desinstalar do sistema"
    set "opt4=Mudar idioma"
    set "opt5=Sair"
    set "choose=Escolha opcao (1/2/3/4/5): "
    set "invalid=Opcao invalida. Tente novamente."
    set "generating=GERANDO MAPA DE PASTAS"
    set "processing=Processando pasta: "
    set "generated=Mapa gerado: "
    set "opening=Abrindo arquivo automaticamente..."
    set "installing=INSTALANDO NO MENU CONTEXTUAL"
    set "admin_error=ERRO: Permissoes de administrador necessarias"
    set "admin_help1=Para instalar:"
    set "admin_help2=1. Clique direito neste arquivo BAT"
    set "admin_help3=2. Selecione 'Executar como administrador'"
    set "admin_help4=3. Escolha opcao 1 novamente"
    set "install_complete=INSTALACAO COMPLETA"
    set "now_you_can=Agora voce pode:"
    set "right_click=- Clique direito em qualquer pasta"
    set "select_option=- Selecionar 'Gerar Mapa de Pastas'"
    set "uninstalling=DESINSTALANDO DO SISTEMA"
    set "not_installed_error=ERRO: O script nao esta instalado no sistema"
    set "nothing_to_uninstall=Nada para desinstalar."
    set "uninstall_complete=DESINSTALACAO COMPLETA"
    set "completely_removed=A opcao do menu contextual foi completamente removida."
    set "explorer_restarted=Explorer foi reiniciado para limpar cache."
    set "if_still_appears=Se a opcao ainda aparecer, reinicie seu PC."
    set "return_menu=Pressione qualquer tecla para voltar ao menu..."
    set "status_installed=Status: INSTALADO no menu contextual"
    set "status_not_installed=Status: NAO INSTALADO"
    set "folder_structure=ESTRUTURA DA PASTA: "
    set "generated_on=GERADO: "
    set "structure_complete=MAPA COMPLETO"
    set "context_menu_text=Gerar Mapa de Pastas"
    set "language_changed=Idioma alterado para Portugues"
    set "choose_language=Escolher idioma: 1)English 2)Español 3)Italiano 4)日本語 5)Français 6)Português: "
) else (
    set "title=FOLDER TREE MAP GENERATOR v0.0.5 by elDenCoder"
    set "github_url=GitHub: https://github.com/eldencoderone"
    set "not_installed=This script is not installed on the system."
    set "what_do=What do you want to do?"
    set "opt1=Install in context menu (right click)"
    set "opt2=Generate tree map in this folder only"
    set "opt3=Uninstall from system"
    set "opt4=Change language"
    set "opt5=Exit"
    set "choose=Choose option (1/2/3/4/5): "
    set "invalid=Invalid option. Try again."
    set "generating=GENERATING FOLDER TREE MAP"
    set "processing=Processing folder: "
    set "generated=Tree map generated: "
    set "opening=Opening file automatically..."
    set "installing=INSTALLING IN CONTEXT MENU"
    set "admin_error=ERROR: Administrator permissions required"
    set "admin_help1=To install:"
    set "admin_help2=1. Right click on this BAT file"
    set "admin_help3=2. Select 'Run as administrator'"
    set "admin_help4=3. Choose option 1 again"
    set "install_complete=INSTALLATION COMPLETE"
    set "now_you_can=Now you can:"
    set "right_click=- Right click on any folder"
    set "select_option=- Select 'Generate Folder Tree Map'"
    set "uninstalling=UNINSTALLING FROM SYSTEM"
    set "not_installed_error=ERROR: The script is not installed on the system"
    set "nothing_to_uninstall=Nothing to uninstall."
    set "uninstall_complete=UNINSTALLATION COMPLETE"
    set "completely_removed=The context menu option has been completely removed."
    set "explorer_restarted=Explorer has been restarted to clear all cache."
    set "if_still_appears=If the option still appears, restart your PC."
    set "return_menu=Press any key to return to menu..."
    set "status_installed=Status: INSTALLED in context menu"
    set "status_not_installed=Status: NOT INSTALLED"
    set "folder_structure=FOLDER STRUCTURE: "
    set "generated_on=GENERATED: "
    set "structure_complete=TREE MAP COMPLETE"
    set "context_menu_text=Generate Folder Tree Map"
    set "language_changed=Language changed to English"
    set "choose_language=Choose language: 1)English 2)Español 3)Italiano 4)日本語 5)Français 6)Português: "
)

:MAIN_LOOP
REM =====================================================
REM AUTO-DETECT WHAT TO DO
REM =====================================================
if exist "%ProgramFiles%\FolderTreeMapGenerator\generate_tree_map.bat" (
    set installed=true
) else (
    set installed=false
)

REM Si se ejecuta desde la instalacion del sistema, generar directamente
if "%~dp0"=="%ProgramFiles%\FolderTreeMapGenerator\" goto GENERATE_STRUCTURE

goto SHOW_MENU

:SHOW_MENU
cls
echo.
echo ===========================================================
echo.
echo               %title%
echo               %github_url%
echo.
echo ===========================================================
echo.
if "%installed%"=="true" (
    echo ^> %status_installed%
) else (
    echo ^> %status_not_installed%
)
echo.
echo %what_do%
echo.
echo -----------------------------------------------------------
echo   [1] %opt1%
echo   [2] %opt2%
echo   [3] %opt3%
echo   [4] %opt4% (Current: %lang%)
echo   [5] %opt5%
echo -----------------------------------------------------------
echo.
set /p option=%choose%

if "%option%"=="1" goto INSTALL
if "%option%"=="2" goto GENERATE_STRUCTURE_MENU
if "%option%"=="3" goto UNINSTALL
if "%option%"=="4" goto CHANGE_LANGUAGE
if "%option%"=="5" exit /b
echo %invalid%
timeout /t 2 >nul
goto SHOW_MENU

:CHANGE_LANGUAGE
cls
echo.
echo ===========================================================
echo.
echo %choose_language%
set /p lang_option=

if "%lang_option%"=="1" (
    set "lang=en"
    set "language_changed=Language changed to English"
) else if "%lang_option%"=="2" (
    set "lang=es"
    set "language_changed=Idioma cambiado a Español"
) else if "%lang_option%"=="3" (
    set "lang=it"
    set "language_changed=Lingua cambiata in Italiano"
) else if "%lang_option%"=="4" (
    set "lang=ja"
    set "language_changed=言語が日本語に変更されました"
) else if "%lang_option%"=="5" (
    set "lang=fr"
    set "language_changed=Langue changee en Français"
) else if "%lang_option%"=="6" (
    set "lang=pt"
    set "language_changed=Idioma alterado para Portugues"
) else (
    echo Invalid option. Returning to menu...
    timeout /t 2 >nul
    goto SHOW_MENU
)

echo.
echo ^> %language_changed%
timeout /t 2 >nul
goto MAIN_LOOP

:GENERATE_STRUCTURE_MENU
call :GENERATE_STRUCTURE
goto SHOW_MENU

:GENERATE_STRUCTURE
cls
echo.
echo ===========================================================
echo.
echo               %generating%
echo.
echo ===========================================================
echo.

REM Get current folder name
for %%I in (.) do set folder_name=%%~nxI

REM Create file name
set file_name=TreeMap_%folder_name%.txt

echo ^> %processing%%folder_name%
echo.
echo -----------------------------------------------------------
echo   Creating beautiful folder tree map...
echo -----------------------------------------------------------

REM Create header with clean format
echo =========================================================== > "%file_name%"
echo. >> "%file_name%"
echo                FOLDER TREE MAP >> "%file_name%"
echo                v0.0.5 by elDenCoder >> "%file_name%"
echo        GitHub: https://github.com/eldencoderone >> "%file_name%"
echo. >> "%file_name%"
echo =========================================================== >> "%file_name%"
echo. >> "%file_name%"
echo ^> %folder_structure%%folder_name% >> "%file_name%"
echo ^> %generated_on%%date% %time% >> "%file_name%"
echo. >> "%file_name%"
echo ----------------------------------------------------------- >> "%file_name%"

REM Generate clean structure using PowerShell
powershell -Command "& { function Get-Tree { param($Path, $Prefix = ''); $items = Get-ChildItem -Path $Path -Force | Sort-Object @{Expression={$_.PSIsContainer}; Descending=$true}, Name; for ($i = 0; $i -lt $items.Count; $i++) { $item = $items[$i]; if ($i -eq ($items.Count - 1)) { $connector = '+-- '; $newPrefix = $Prefix + '    ' } else { $connector = '+-- '; $newPrefix = $Prefix + '|   ' }; if ($item.PSIsContainer) { Write-Output ('{0}{1}{2}/' -f $Prefix, $connector, $item.Name); Get-Tree -Path $item.FullName -Prefix $newPrefix } else { Write-Output ('{0}{1}{2}' -f $Prefix, $connector, $item.Name) } } }; Get-Tree -Path '.' }" >> "%file_name%"

echo ----------------------------------------------------------- >> "%file_name%"
echo. >> "%file_name%"
echo =========================================================== >> "%file_name%"
echo. >> "%file_name%"
echo                %structure_complete% >> "%file_name%"
echo                v0.0.5 by elDenCoder >> "%file_name%"
echo. >> "%file_name%"
echo =========================================================== >> "%file_name%"

REM Si se ejecuta desde el sistema, generar silenciosamente y salir
if "%~dp0"=="%ProgramFiles%\FolderTreeMapGenerator\" (
    exit /b
)

echo.
echo ^> %generated%%file_name%
echo ^> %opening%
start notepad "%file_name%"

echo.
echo %return_menu%
pause >nul
goto SHOW_MENU

:END
exit /b
goto :eof

:INSTALL
cls
echo.
echo ===========================================================
echo.
echo               %installing%
echo.
echo ===========================================================
echo.

REM Check administrator permissions
net session >nul 2>&1
if not %errorLevel% == 0 (
    echo ^> %admin_error%
    echo.
    echo %admin_help1%
    echo %admin_help2%
    echo %admin_help3%
    echo %admin_help4%
    echo.
    echo %return_menu%
    pause >nul
    goto SHOW_MENU
)

REM Create directory for the script
set script_directory=%ProgramFiles%\FolderTreeMapGenerator
if not exist "%script_directory%" mkdir "%script_directory%"

REM Copy this script to system directory
copy "%~f0" "%script_directory%\generate_tree_map.bat" >nul

echo -----------------------------------------------------------
echo   [1/3] ✓ Script copied to system
echo   [2/3] ⚙ Configuring registry...

REM Add to registry for folders
reg add "HKEY_CLASSES_ROOT\Directory\shell\GenerateTreeMap" /ve /d "%context_menu_text%" /f >nul 2>&1
reg add "HKEY_CLASSES_ROOT\Directory\shell\GenerateTreeMap\command" /ve /d "\"%script_directory%\generate_tree_map.bat\"" /f >nul 2>&1

REM Add to registry for folder background
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\GenerateTreeMap" /ve /d "%context_menu_text%" /f >nul 2>&1
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\GenerateTreeMap\command" /ve /d "\"%script_directory%\generate_tree_map.bat\"" /f >nul 2>&1

echo   [3/3] ✓ Registry configured
echo -----------------------------------------------------------

echo.
echo ===========================================================
echo.
echo                %install_complete%
echo.
echo ===========================================================
echo.
echo %now_you_can%
echo %right_click%
echo %select_option%
echo.
echo %return_menu%
pause >nul
goto SHOW_MENU

:UNINSTALL
cls
echo.
echo ===========================================================
echo.
echo               %uninstalling%
echo.
echo ===========================================================
echo.

REM Check if actually installed
if not exist "%ProgramFiles%\FolderTreeMapGenerator\generate_tree_map.bat" (
    echo ^> %not_installed_error%
    echo %nothing_to_uninstall%
    echo.
    echo %return_menu%
    pause >nul
    goto SHOW_MENU
)

REM Check administrator permissions
net session >nul 2>&1
if not %errorLevel% == 0 (
    echo ^> %admin_error%
    echo.
    echo %admin_help1%
    echo %admin_help2%
    echo %admin_help3%
    echo 3. Choose option 3 again
    echo.
    echo %return_menu%
    pause >nul
    goto SHOW_MENU
)

echo -----------------------------------------------------------
echo   [1/6] ⚙ Removing registry entries...

REM Remove all possible registry entries
reg delete "HKEY_CLASSES_ROOT\Directory\shell\GenerateTreeMap" /f >nul 2>&1
reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\GenerateTreeMap" /f >nul 2>&1
reg delete "HKEY_CLASSES_ROOT\Directory\shell\GenerateStructure" /f >nul 2>&1
reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\GenerateStructure" /f >nul 2>&1

echo   [2/6] ⚙ Clearing icon cache...
ie4uinit.exe -ClearIconCache >nul 2>&1

echo   [3/6] ⚙ Removing system files...

REM Remove all possible script directories
set script_directory=%ProgramFiles%\FolderTreeMapGenerator
if exist "%script_directory%\generate_tree_map.bat" (
    del "%script_directory%\generate_tree_map.bat" >nul 2>&1
)
if exist "%script_directory%" (
    rmdir "%script_directory%" >nul 2>&1
)

REM Remove old directory names too
if exist "%ProgramFiles%\StructureGenerator" (
    rmdir /s /q "%ProgramFiles%\StructureGenerator" >nul 2>&1
)

echo   [4/6] ⚙ Refreshing registry...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d 0 /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /f >nul 2>&1

echo   [5/6] ⚙ Restarting Windows Explorer...
taskkill /f /im explorer.exe >nul 2>&1
timeout /t 2 >nul
start explorer.exe

echo   [6/6] ✓ Deep cleanup complete
echo -----------------------------------------------------------

echo.
echo ===========================================================
echo.
echo               %uninstall_complete%
echo.
echo ===========================================================
echo.
echo %completely_removed%
echo %explorer_restarted%
echo.
echo %if_still_appears%
echo.
echo %return_menu%
pause >nul