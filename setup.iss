
[Setup]
AppId={{3E7ADF50-7AAF-42E6-99B9-D7E73311520A}
AppName=Karbo Root Cert
AppVersion=1.0
UninstallDisplayName=Karbo Root Cert
VersionInfoVersion=1.0.0.0
VersionInfoCopyright=Karbo Developers
AppPublisher=Karbo Developers
AppPublisherURL=http://www.karbo.io/
AppSupportURL=http://www.karbo.io/
AppUpdatesURL=http://www.karbo.io/
DefaultDirName={pf}\KarboRootCert
DisableDirPage=yes
DisableProgramGroupPage=yes
LicenseFile=License.txt
OutputBaseFilename=karbo-cert-setup
Compression=lzma
SolidCompression=yes
SetupIconFile=karbo.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "public.cer"; DestDir: "{app}"; Flags: ignoreversion

[Run]
Filename: "certutil.exe"; Parameters: "-addstore ""Root"" ""{app}\public.cer"""; StatusMsg: "Adding Karbo Root Cert..."

[UninstallRun]
Filename: "certutil.exe"; Parameters: "-delstore ""Root"" ""Karbo Developers"""; StatusMsg: "Deling Karbo Root Cert..."