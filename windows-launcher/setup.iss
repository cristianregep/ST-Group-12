; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
; $Id: setup.iss,v 1.1 2005/04/11 14:04:46 veghead Exp $

[Setup]
AppName=Vmap
AppVerName=Vmap 1.0
AppPublisher=JISC eTools
AppPublisherURL=http://vmap.gold.ac.uk
AppSupportURL=http://vmap.gold.ac.uk
AppUpdatesURL=http://vmap.gold.ac.uk
DefaultDirName={pf}\Vmap
DefaultGroupName=Vmap
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Documents and Settings\Celt\Desktop\vmap-launcher\vmap.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Documents and Settings\Celt\Desktop\vmap-launcher\lib\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Vmap"; Filename: "{app}\vmap.exe"
Name: "{userdesktop}\Vmap"; Filename: "{app}\vmap.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Vmap"; Filename: "{app}\vmap.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\vmap.exe"; Description: "{cm:LaunchProgram,Vmap}"; Flags: nowait postinstall skipifsilent

