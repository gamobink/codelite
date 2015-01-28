; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=CodeLite
AppVerName=CodeLite
AppPublisher=Eran Ifrah
AppVersion=7.0.0
AppPublisherURL=http://codelite.org
AppSupportURL=http://codelite.org
AppUpdatesURL=http://codelite.org
DefaultDirName={reg:HKLM\Software\codelite\settings,InstallPath|{pf}\CodeLite}
DefaultGroupName=CodeLite
LicenseFile=license.txt
OutputDir=output
OutputBaseFilename=codelite-x86-7.0-BETA
ChangesEnvironment=yes
FlatComponentsList=yes
SetupIconFile=box_software.ico
Compression=lzma/ultra
SolidCompression=true
InternalCompressLevel=ultra
PrivilegesRequired=none

;;==================================
;; 32 bit setup
;;==================================
#define CODELITE_ROOT "C:\src\codelite"
#define WXWIN "C:\src\wxWidgets"
#define RUNTIME_MINGW "C:\MinGW-4.8.1"
#define RUNTIME_MINGW32 "C:\MinGW-4.8.1"
#define BINUTILS_DIR "C:\bin"

;; Define the path to the MinGW that we offer to the users
#define USER_MINGW "C:\MinGW-4.8.1"

[Languages]
Name: "eng"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#CODELITE_ROOT}\Runtime\codelite.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#CODELITE_ROOT}\Runtime\codelite-echo.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#CODELITE_ROOT}\Runtime\codelite-make.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#CODELITE_ROOT}\Runtime\codelite-terminal.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#CODELITE_ROOT}\LICENSE"; DestDir: "{app}"; Flags: ignoreversion

;; ---- wxWidgets DLLs
Source: "{#WXWIN}\lib\gcc_dll\wxmsw310u_gcc_cl.dll"; DestDir: "{app}"; Flags: ignoreversion

; ---- Binaries needed by codelite
Source: "{#CODELITE_ROOT}\InnoSetup\license.txt"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\sdk\wxconfig\wx-config.exe"; DestDir: "{app}"
Source: "{#CODELITE_ROOT}\Runtime\config\codelite.xml.default"; DestDir: "{app}\config";
Source: "{#CODELITE_ROOT}\Runtime\config\plugins.xml.default"; DestDir: "{app}\config";
Source: "{#CODELITE_ROOT}\Runtime\config\accelerators.conf.default"; DestDir: "{app}\config";
Source: "{#CODELITE_ROOT}\Runtime\config\debuggers.xml.default"; DestDir: "{app}\config";
Source: "{#CODELITE_ROOT}\Runtime\config\build_settings.xml.default.win"; DestDir: "{app}\config"; DestName: "build_settings.xml.default"
Source: "{#CODELITE_ROOT}\Runtime\rc\*"; DestDir: "{app}\rc"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\astyle.sample"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\config\codelite.layout.default"; DestDir: "{app}\config"; DestName: codelite.layout; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\sdk\codelite_cppcheck\cfg\*.cfg"; DestDir: "{app}\config\cppcheck"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\templates\*"; DestDir: "{app}\templates"; Flags: recursesubdirs 
Source: "{#CODELITE_ROOT}\SpellChecker\dics\*"; DestDir: "{app}\dics"; Flags: recursesubdirs 

;; ------- Bin Utils ------------------
Source: "{#BINUTILS_DIR}\rm.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#BINUTILS_DIR}\cp.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#BINUTILS_DIR}\cygwin1.dll"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#BINUTILS_DIR}\ls.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#BINUTILS_DIR}\grep.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#BINUTILS_DIR}\flex.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#BINUTILS_DIR}\mv.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#BINUTILS_DIR}\yacc.exe"; DestDir: "{app}"; Flags: ignoreversion;

; Override with Windows specific files
Source: "{#CODELITE_ROOT}\Runtime\templates\projects\dynamic-library\dynamic-library.project.windows"; DestName: dynamic-library.project; DestDir: "{app}\templates\projects\dynamic-library"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\templates\projects\dynamic-library-wx-enabled\dynamic-library-wx-enabled.project.windows"; DestName: dynamic-library-wx-enabled.project; DestDir: "{app}\templates\projects\dynamic-library-wx-enabled"; Flags: ignoreversion 

; XML settings
Source: "{#CODELITE_ROOT}\Runtime\lexers\*.xml"; DestDir: "{app}\lexers\"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\debuggers\DebuggerGDB.dll"; DestDir: "{app}\debuggers"; Flags: ignoreversion 

; Copy the plugins (by name)
Source: "{#CODELITE_ROOT}\Runtime\plugins\abbreviation.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\CallGraph.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\CodeFormatter.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\ContinuousBuild.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\Copyright.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\CppChecker.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\Cscope.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\DatabaseExplorer.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\ExternalTools.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\git.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\Gizmos.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\Outline.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\snipwiz.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\QMakePlugin.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\Subversion2.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\UnitTestPP.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\wxFormBuilder.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\ZoomNavigator.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\SFTP.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\Tweaks.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\CMakePlugin.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\CodeLiteDiff.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\LLDBDebugger.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\wxcrafter.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\WordCompletion.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\SpellCheck.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\PHP.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion 

Source: "{#CODELITE_ROOT}\lib\gcc_lib\libwxsqlite3u.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\lib\gcc_lib\libcodeliteu.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\lib\gcc_lib\libplugin_sdku.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\lib\gcc_lib\libdatabaselayersqliteu.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\lib\gcc_lib\libwxshapeframeworku.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\sdk\clang\lib\libclang.dll"; DestDir: "{app}\"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\sdk\libssh\lib\libssh.dll"; DestDir: "{app}\"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\sdk\clang\lib\clang-format.exe"; DestDir: "{app}\"; DestName: "codelite-clang-format.exe"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\plugins\resources\*"; DestDir: "{app}\plugins\resources\"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\codelite_indexer.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\codelite_launcher.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\codelite_cppcheck.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\codelite-cc.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\codelite-make.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\le_exec.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\makedir.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\patch.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\*.html"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\images\*"; DestDir: "{app}\images"; Flags: ignoreversion 
Source: "{#CODELITE_ROOT}\Runtime\*.zip"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#RUNTIME_MINGW32}\bin\mingwm10.dll"; DestDir: "{app}"; Flags: ignoreversion ; 
Source: "{#RUNTIME_MINGW32}\bin\libgcc_s_sjlj-1.dll"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#RUNTIME_MINGW32}\bin\exchndl.dll"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#RUNTIME_MINGW32}\bin\which.exe"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#RUNTIME_MINGW32}\bin\rm.exe"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#RUNTIME_MINGW32}\bin\cscope.exe"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#RUNTIME_MINGW32}\bin\cygncurses-8.dll"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#RUNTIME_MINGW32}\bin\cygwin1.dll"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#RUNTIME_MINGW32}\bin\libintl3.dll"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#RUNTIME_MINGW32}\bin\pthreadGC2.dll"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\Runtime\locale\*"; DestDir: "{app}\locale"; Flags: recursesubdirs 
Source: "{#CODELITE_ROOT}\Runtime\gdb_printers\*"; DestDir: "{app}\gdb_printers"; Flags: recursesubdirs 
Source: "{#CODELITE_ROOT}\Runtime\wxgui.zip";  DestDir: "{app}"; Flags: ignoreversion
Source: "{#CODELITE_ROOT}\Runtime\PHP.zip";  DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\CodeLite "; Filename: "{app}\codelite.exe"; WorkingDir: "{app}"
Name: "{group}\{cm:UninstallProgram, CodeLite}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\CodeLite "; Filename: "{app}\codelite.exe"; WorkingDir: "{app}" ;Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\CodeLite"; WorkingDir: "{app}"; Filename: "{app}\codelite.exe"; Tasks: quicklaunchicon

[Registry]
Root: HKLM; Subkey: "Software\codelite\settings"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"
Root: HKLM; Subkey: "Software\codelite\settings"; ValueType: string; ValueName: "PluginsDir";  ValueData: "{app}\plugins"

[UninstallDelete]
Type: filesandordirs; Name: "{app}"

[Code]
// var
//   MinGW_Page:      TInputDirWizardPage;
//   UnitTestPP_Page: TInputDirWizardPage;
// 
// procedure CreateMinGWPage();
// begin
//   MinGW_Page := CreateInputDirPage(wpSelectComponents,
//           'Select MinGW Installation Folder', 'Where should setup place MinGW?',
//           'MinGW will be stored in the following folder.'#13#10#13#10 +
//           'To continue, click Next. If you would like to select a different folder, click Browse.',
//           False, 'New Folder');
// 
//   // Add item (with an empty caption)
//   MinGW_Page.Add('');
// 
//   // Set initial value (optional)
//   MinGW_Page.Values[0] := ExpandConstant('{sd}\MinGW-4.8.1\');
// end;
// 
// function GetMinGWInstallDir(Param: String): String;
// begin
//   Result := MinGW_Page.Values[0];
// end;
// 
// procedure CreateUnitTestPPPage();
// begin
//   UnitTestPP_Page := CreateInputDirPage(wpSelectComponents,
//           'Select UnitTest++ Installation Folder', 'Where should setup place UnitTest++?',
//           'UnitTest++ framework will be stored in the following folder.'#13#10#13#10 +
//           'To continue, click Next. If you would like to select a different folder, click Browse.',
//           False, 'New Folder');
// 
//   // Add item (with an empty caption)
//   UnitTestPP_Page.Add('');
// 
//   // Set initial value (optional)
//   UnitTestPP_Page.Values[0] := ExpandConstant('{sd}\UnitTest++-1.3\');
// end;
// 
// function GetUnitTestPPInstallDir(Param: String): String;
// begin
//   Result := UnitTestPP_Page.Values[0];
// end;
// 
// procedure InitializeWizard();
// begin
//   CreateMinGWPage();
//   CreateUnitTestPPPage();
// end;

procedure DeleteFolder(ADirName: string);
var
  FindRec: TFindRec;
begin
  if FindFirst(ADirName + '\*', FindRec) then begin
    try
      repeat
        if FindRec.Attributes and FILE_ATTRIBUTE_DIRECTORY <> 0 then begin
          if (FindRec.Name <> '.') and (FindRec.Name <> '..') then begin
            DeleteFolder(ADirName + '\' + FindRec.Name);
            RemoveDir(ADirName + '\' + FindRec.Name);
          end;
        end else
          DeleteFile(ADirName + '\' + FindRec.Name);
      until not FindNext(FindRec);
    finally
      FindClose(FindRec);
    end;
  end;
  // Remove the folder itself
  RemoveDir(ADirName);
end;

// Uninstall
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  case CurUninstallStep of
    usUninstall:
      begin
        RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Open With CodeLite');
        // Prompt the user to delete all his settings, default to "No"
        if MsgBox('Do you want to delete all user settings as well?', mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = IDYES 
        then begin
            DeleteFolder(ExpandConstant('{userappdata}') + '\codelite');
        end;
      end;
    usPostUninstall:
      begin
      end;
  end;
end;

// function ShouldSkipPage(PageID: Integer): Boolean;
// begin
//   // by default dont skip the page
//   Result := False;
// 
//   if PageID = MinGW_Page.ID then begin
//     if IsComponentSelected('MinGW') = False then
//       Result := True;
//   end
//   if PageID = UnitTestPP_Page.ID then begin
//     if IsComponentSelected('UnitTestPP') = False then
//       Result := True;
//   end
// end;

//--------------------
// Uninstall
//--------------------

function GetUninstallString(): String;
var
  sUnInstPath: String;
  sUnInstallString: String;
begin
  sUnInstPath := 'Software\Microsoft\Windows\CurrentVersion\Uninstall\CodeLite_is1';
  sUnInstallString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
  Result := sUnInstallString;
end;

function UnInstallOldVersion(): Integer;
var
  sUnInstallString: String;
  sUnInstallStringOld: String;
  iResultCode: Integer;
begin
    // Return Values:
    // 1 - uninstall string is empty
    // 2 - error executing the UnInstallString
    // 3 - successfully executed the UnInstallString

  // default return value
  Result := 0;
  sUnInstallString    := GetUninstallString();
  if sUnInstallString <> '' then begin
    sUnInstallString := RemoveQuotes(sUnInstallString);
    if Exec(sUnInstallString, '/SILENT /NORESTART /SUPPRESSMSGBOXES','', SW_HIDE, ewWaitUntilTerminated, iResultCode) then
      Result := 3
    else
      Result := 2;
  end else
    Result := 1;
end;

function IsUpgrade(): Boolean;
begin
  Result := (GetUninstallString() <> '');
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  ResultCode: Integer;
begin
    case CurStep of
    ssInstall:
        begin
          if (IsUpgrade()) then
            begin
              UnInstallOldVersion();
            end;
        end;
    end;
end;
