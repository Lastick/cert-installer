
[Setup]
AppId={{51A57131-4C67-4ADE-A263-AFDEB00B5878}
AppName=Karbo Root Cert
AppVersion=1.1
VersionInfoVersion=1.1.0.0
VersionInfoCopyright=Karbo Developers
AppPublisher=Alexander Gladun
AppPublisherURL=https://www.karbo.io/
AppSupportURL=https://www.karbo.io/
AppUpdatesURL=https://www.karbo.io/
DefaultDirName={pf}\KarboRootCert
DisableDirPage=yes
DisableProgramGroupPage=yes
LicenseFile=License.txt
OutputBaseFilename=karbo-cert-setup
Compression=lzma
SolidCompression=yes
SetupIconFile=karbo.ico
UninstallDisplayIcon={app}\unins000.exe
UninstallDisplayName=Karbo Root Cert

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "public.crt"; DestDir: "{app}"; Flags: ignoreversion

[Run]
Filename: "certutil.exe"; Parameters: "-addstore ""Root"" ""{app}\public.crt"""; StatusMsg: "Adding Karbo Root Cert..."

[UninstallRun]
Filename: "certutil.exe"; Parameters: "-delstore ""Root"" ""Karbo Developers"""; StatusMsg: "Deling Karbo Root Cert..."