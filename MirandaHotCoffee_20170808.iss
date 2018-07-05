#define debug 0                                                             ; for developers only: 0 - debug off, 1 - debug on
#define splash 0                                                            ; splash screen: 0 - splash off, 1 - splash on
#define aero 1                                                              ; aero theme: 0 - disable, 1 - full, 2 - top, 3 - bottom, 4 - top/bottom.
#define fulltype 1                                                          ; full type: 0 - disable, 1 - enable
#define freezecheckbox 0                                                    ; freezecheckbox: 0 - disable, 1 - enable

#define AppId "HotCoffee�"
#define AppName "Miranda NG HotCoffee"
#define AppPath "Miranda HotCoffee"
#define AppShortName "HotCoffee"
#define AppINI "HotCoffee.ini"
#define AppNameSetup "HotCoffeeSetup"
#define AppNameInstall "MirandaHotCoffee"

#define AppArch "x86"                                                       ; must be x86 or x64

#ifdef AppArchx64
 #define AppArch "x64"
#endif
#ifdef AppArchx86
 #define AppArch "x86"
#endif

#define AppVerMajor "0"
#define AppVerMinor "95"
#define AppVerBuild "6"
#define AppVerRevis "18429"
#define AppVerStatusBuild " alpha build #"
#define AppStatus "Test"                                                    ; must be Test, Alpha, Beta or Final
#define AppRelease "R55"

#define AppShortVer AppVerMajor + "." + AppVerMinor + "." + AppVerBuild
#define AppVer AppVerMajor + "." + AppVerMinor + "." + AppVerBuild + "." + AppVerRevis
#define AppFullVer AppVerMajor + "." + AppVerMinor + "." + AppVerBuild + "." + AppVerRevis + " " + AppStatus + " " + AppRelease
#define AppMirVer AppArch == "x86" ? AppShortVer + AppVerStatusBuild + AppVerRevis : AppShortVer + AppVerStatusBuild + AppVerRevis + " x64"
#define AppDevOrStub AppStatus == "Final" ? "StableVersion" : "DevelopmentVersion"

#define AppUpdateVersion "0.95.4.13028,0.95.5.15968,0.95.6.18429"           ; product version update range

#define AppWidth "65"                                                       ; Increasing width of the client
#define AppHeight "25"                                                      ; Increasing height of the client

#define AppSkinUp "1"                                                       ; selective skin if IsUpdate: 0 - disable, 1 - enable

#define AppPublisher "HotCoffee�"

#define AppContacts "im.hotcoffee@gmail.com"
#define AppLnk "HotCoffee"
#define AppStartMenuLnk "Miranda HotCoffee"

#define AppProfile "%APPDATA%\" + AppPath                                   ; profiles dir for default install

#define AppExeName AppArch == "x86" ? "Miranda32.exe" : "Miranda64.exe"
#define AppExeOppName AppArch == "x86" ? "Miranda64.exe" : "Miranda32.exe"

; defaults
#define TypeDefault "optimal"
#define SelectedTasksDefault "curuser"
#define SelectedSettingsDefault \
  "UpdateSettings,AppDevOrStub,ContactList,CompactMode,UseSound,CLCNoVScrollBar,SendingMessage," + \
  "SendCtrlEnter,SendEnter,AutoSizeInputArea,TabSRMMNoVScrollBar," + \
  "AutoAwayDetection,AutoIdleDetection"
#define SelectedStyleSettingsDefault \
  "SkinDefaultWinLight,IconsXpk,IEViewAnimation,IEViewShortLink,FontPrinting"

#define IncompatibleDir "{app}\incompatible"                                ; incompatible dir
#define ExcludeList \
  IncompatibleDir + ", \
  {app}\icons, \
  {app}\inbox, \
  {app}\profiles, \
  {app}\skins, \
  {app}\uninstall, \
  {app}\plugins\listeningto\foo_mlt.dll, \
  {app}\plugins\listeningto\gen_mlt.dll"

#define CLUIFrames \
  "protocols\aim," + \
  "protocols\facebook," + \
  "protocols\gg," + \
  "protocols\icq\icq," + \
  "protocols\icq\icq2," + \
  "protocols\icq\icq3," + \
  "protocols\icq\icq4," + \
  "protocols\icq\icq5," + \
  "protocols\irc," + \
  "protocols\jabber\gmail," + \
  "protocols\jabber\google," + \
  "protocols\jabber\gtalk," + \
  "protocols\jabber\hangouts," + \
  "protocols\jabber\jabber," + \
  "protocols\jabber\jabberru," + \
  "protocols\jabber\lj," + \
  "protocols\jabber\ok," + \
  "protocols\jabber\xmpp," + \
  "protocols\mra," + \
  "protocols\msn," + \
  "protocols\skype," + \
  "protocols\tox," + \
  "protocols\twitter," + \
  "protocols\vkontakte"

#dim theme[14]
#define theme[0] "defaultmirl"
#define theme[1] "defaultwinl"
;#define theme[2] "diplomatd"
;#define theme[3] "diplomatl"
#define theme[2] "glamourd"
#define theme[3] "glamourl"
;#define theme[4] "goldtimed"
;#define theme[5] "goldtimel"
#define theme[4] "graphited"
#define theme[5] "graphitel"
#define theme[6] "photooned"
#define theme[7] "photoonel"
#define theme[8] "surfaceb"
#define theme[9] "surfacew"
#define theme[10] "textolited"
#define theme[11] "textolitel"
#define theme[12] "winstyled"
#define theme[13] "winstylel"

; {#AppShortName}_{#AppArch}.ini
#expr WriteIni(AddBackslash(SourcePath) + "x86\profiles\" + AppShortName + "_" + AppArch + ".ini", "FileInfo_1", "FileVersion", '"' + GetDateTimeString('yyyy.m.d', '', '') + '"')
#expr WriteIni(AddBackslash(SourcePath) + "x86\profiles\" + AppShortName + "_" + AppArch + ".ini", "FileInfo_1", "DiskFileName", '"' + AppNameInstall + "_" + AppVer + '_' + AppArch + ".exe" + '"')
#expr WriteIni(AddBackslash(SourcePath) + "x86\profiles\" + AppShortName + "_" + AppArch + ".ini", "FileInfo_1", "DownloadURL", '"' + "http://miranda-ng.org/distr/packs/" + AppShortName + "/installer/" + AppNameInstall + "_" + AppVer + '_' + AppArch + ".exe" + '"')
#expr WriteIni(AddBackslash(SourcePath) + "x86\profiles\" + AppShortName + "_" + AppArch + ".ini", "FileInfo_30", "FileVersion", '"' + GetDateTimeString('yyyy.m.d', '', '') + '"')
#expr WriteIni(AddBackslash(SourcePath) + "x86\profiles\" + AppShortName + "_" + AppArch + ".ini", "FileInfo_35", "FileVersion", '"' + GetDateTimeString('yyyy.m.d', '', '') + '"')

[Setup]
CloseApplications=no
AppID={#AppId}
AppName={#AppName}
AppVerName={#AppName}
AppVersion={#AppVer}
#if AppArch == "x64"
ArchitecturesAllowed=x64 ia64
ArchitecturesInstallIn64BitMode=x64 ia64
#endif
OutputBaseFilename={#AppNameInstall}_{#if AppStatus != "Test"}{#AppVer}{#else}test{#endif}_{#AppArch}
DefaultDirName={pf}\{#AppPath}
DirExistsWarning=no
DefaultGroupName={#AppPath}
AllowNetworkDrive=no
PrivilegesRequired=none
CreateUninstallRegKey=IsDefaultSetupType
ComponentsListTVStyle=yes
AllowNoIcons=yes
MinVersion=0,5.1
VersionInfoVersion={#AppVer}
VersionInfoDescription={#AppName} {#AppStatus} {#AppRelease} ({#AppArch})
AppPublisher={#AppPublisher}
AppPublisherURL={cm:AppURL}
AppSupportURL={cm:AppURL}
AppUpdatesURL={cm:AppURL}
AppContact={#AppContacts}
SetupIconFile=resources\icon.ico
UninstallIconFile=resources\uninst.ico
UninstallDisplayIcon={uninstallexe},0
UninstallFilesDir={app}\uninstall
Uninstallable=IsDefaultSetupType
Compression=lzma2/ultra
InternalCompressLevel=ultra
SolidCompression=true
BitmapResource=splash:"resources\images\logo.bmp"|border:"resources\images\border.bmp"
RawDataResource=WizardSmallImage:"resources\images\WizardSmallImage.bmp"

; image resources
#define WizardImageFile "WizardImage.bmp"
#define InstallLogo "Install.bmp"
#define PortableLogo "Portable.bmp"
#define RecycleLogo "Recycle.bmp"

[Languages]
Name: en; MessagesFile: resources\english.isl,resources\{#AppShortName}_en.isl; LicenseFile: resources\License_en.rtf; InfoBeforeFile: resources\InfoBefore_en.rtf; InfoAfterFile: resources\{#if AppStatus != "Test"}InfoAfter_en{#else}InfoAfter_en_Test{#endif}.rtf;
Name: ru; MessagesFile: resources\russian.isl,resources\{#AppShortName}_ru.isl; LicenseFile: resources\License_ru.rtf; InfoBeforeFile: resources\InfoBefore_ru.rtf; InfoAfterFile: resources\{#if AppStatus != "Test"}InfoAfter_ru{#else}InfoAfter_ru_Test{#endif}.rtf;

[Messages]
;BeveledLabel={#AppName} {#AppVer} ({#AppArch}){#if AppStatus = "Test"} Test{#endif} � {#AppPublisher}, 2010 - {#GetDateTimeString('yyyy', '', '')}
BeveledLabel={#AppName} {#AppVer} {#AppStatus} {#AppRelease} ({#AppArch}) � {#AppPublisher}, 2010 - {#GetDateTimeString('yyyy', '', '')}

[Types]
Name: minimal; Description: {code:TypesHelper|MinimalInstall};
Name: optimal; Description: {code:TypesHelper|OptimalInstall};
Name: advanced; Description: {code:TypesHelper|AdvancedInstall};
#if fulltype == 1
Name: full; Description: {code:TypesHelper|FullInstall};
#endif
Name: custom; Description: {code:TypesHelper|CustomInstall}; Flags: iscustom;

[Dirs]
Name: {app}\inbox;
Name: {app}\skins\smileys\msn; Components: protocols\msn and resources\smileys;

#define ICQProtocols "protocols\icq\icq and protocols\icq\icq2 and protocols\icq\icq3 and protocols\icq\icq4 and protocols\icq\icq5"
#define JabberProtocols "protocols\jabber\gmail and protocols\jabber\google and protocols\jabber\gtalk and protocols\jabber\hangouts and protocols\jabber\jabber and protocols\jabber\jabberru and protocols\jabber\lj and protocols\jabber\ok and protocols\jabber\xmpp"

[InstallDelete]
 ; main
Type: filesandordirs; Name: {app}\docs; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\{#AppExeOppName}; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\libeay32.dll; Check: IsPortableSetupType and IsUpdate; MinVersion: 0,6.0;
Type: files; Name: {app}\ssleay32.dll; Check: IsPortableSetupType and IsUpdate; MinVersion: 0,6.0;
;Type: files; Name: {app}\plugins\openssl.dll; Check: IsPortableSetupType and IsUpdate; MinVersion: 0,6.0;
Type: filesandordirs; Name: {app}\plugins\cryptors; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\dbx_mmap_sa.dll; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\flashavatars.dll; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\langpack_russian.txt; Languages: en; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\languages\langpack_russian.txt; Languages: en; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\languages; Languages: en; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\uninstall; Check: IsPortableSetupType and IsUpdate;
 ; protocols
 ; protocols\aim
Type: files; Name: {app}\plugins\AIM.dll; Components: not protocols\aim; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_AIM.dll; Components: not protocols\aim; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_AIM.dll; Components: not protocols\aim; Check: IsPortableSetupType and IsUpdate;
 ; protocols\facebook
Type: files; Name: {app}\plugins\Facebook.dll; Components: not protocols\facebook; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_Facebook.dll; Components: not protocols\facebook; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_Facebook.dll; Components: not protocols\facebook; Check: IsPortableSetupType and IsUpdate;
 ; protocols\gg
Type: files; Name: {app}\plugins\GG.dll; Components: not protocols\gg; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_GG.dll; Components: not protocols\gg; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_GG.dll; Components: not protocols\gg; Check: IsPortableSetupType and IsUpdate;
 ; protocols\icq
Type: files; Name: {app}\plugins\ICQ.dll; Components: not ({#ICQProtocols}); Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_ICQ.dll; Components: not ({#ICQProtocols}); Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_ICQ.dll; Components: not ({#ICQProtocols}); Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\xStatus_ICQ.dll; Components: not ({#ICQProtocols}); Check: IsPortableSetupType and IsUpdate;
 ; protocols\icq\icq2
Type: files; Name: {app}\icons\Proto_ICQ2.dll; Components: not protocols\icq\icq2; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_ICQ2.dll; Components: not protocols\icq\icq2; Check: IsPortableSetupType and IsUpdate;
 ; protocols\icq\icq3
Type: files; Name: {app}\icons\Proto_ICQ3.dll; Components: not protocols\icq\icq3; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_ICQ3.dll; Components: not protocols\icq\icq3; Check: IsPortableSetupType and IsUpdate;
 ; protocols\icq\icq4
Type: files; Name: {app}\icons\Proto_ICQ4.dll; Components: not protocols\icq\icq4; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_ICQ4.dll; Components: not protocols\icq\icq4; Check: IsPortableSetupType and IsUpdate;
 ; protocols\icq\icq5
Type: files; Name: {app}\icons\Proto_ICQ5.dll; Components: not protocols\icq\icq5; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_ICQ5.dll; Components: not protocols\icq\icq5; Check: IsPortableSetupType and IsUpdate;
 ; protocols\irc
Type: files; Name: {app}\plugins\IRC.dll; Components: not protocols\irc; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_IRC.dll; Components: not protocols\irc; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_IRC.dll; Components: not protocols\irc; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\myavatars\irc.png; Components: not protocols\irc; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber
Type: files; Name: {app}\plugins\Jabber.dll; Components: not ({#JabberProtocols}); Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\xStatus_Jabber.dll; Components: not ({#JabberProtocols}); Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\myavatars\jabber.png; Components: not ({#JabberProtocols}); Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\fb
Type: files; Name: {app}\icons\Proto_FB.dll; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_FB.dll; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\gmail
Type: files; Name: {app}\icons\Proto_GMail.dll; Components: not protocols\jabber\gmail; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_GMail.dll; Components: not protocols\jabber\gmail; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\google
Type: files; Name: {app}\icons\Proto_Google.dll; Components: not protocols\jabber\google; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_Google.dll; Components: not protocols\jabber\google; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\gtalk
Type: files; Name: {app}\icons\Proto_GTalk.dll; Components: not protocols\jabber\gtalk; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_GTalk.dll; Components: not protocols\jabber\gtalk; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\hangouts
Type: files; Name: {app}\icons\Proto_Hangouts.dll; Components: not protocols\jabber\hangouts; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_Hangouts.dll; Components: not protocols\jabber\hangouts; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\jabber
Type: files; Name: {app}\icons\Proto_Jabber.dll; Components: not protocols\jabber\jabber; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_Jabber.dll; Components: not protocols\jabber\jabber; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\jabberru
Type: files; Name: {app}\icons\Proto_Jabberru.dll; Components: not protocols\jabber\jabberru; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_Jabberru.dll; Components: not protocols\jabber\jabberru; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\lj
Type: files; Name: {app}\icons\Proto_LJ.dll; Components: not protocols\jabber\lj; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_LJ.dll; Components: not protocols\jabber\lj; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\ok
Type: files; Name: {app}\icons\Proto_OK.dll; Components: not protocols\jabber\ok; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_OK.dll; Components: not protocols\jabber\ok; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\vk
Type: files; Name: {app}\icons\proto_vk.dll; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\proto_conn_vk.dll; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\xmpp
Type: files; Name: {app}\icons\Proto_XMPP.dll; Components: not protocols\jabber\xmpp; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_XMPP.dll; Components: not protocols\jabber\xmpp; Check: IsPortableSetupType and IsUpdate;
 ; protocols\jabber\yandex
Type: files; Name: {app}\icons\Proto_Yandex.dll; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_Yandex.dll; Check: IsPortableSetupType and IsUpdate;
 ; protocols\mra
Type: files; Name: {app}\plugins\MRA.dll; Components: not protocols\mra; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_MRA.dll; Components: not protocols\mra; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_MRA.dll; Components: not protocols\mra; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\xStatus_MRA.dll; Components: not protocols\mra; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\myavatars\mra.png; Components: not protocols\mra; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\_dark\mra; Components: not protocols\mra; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\_light\mra; Components: not protocols\mra; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\mra; Components: not protocols\mra; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\mra\flash; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\ieview\!tools\tZersFiles\mailru; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\smileys\mra\*.asl; Check: IsPortableSetupType and IsUpdate;
 ; protocols\msn
Type: files; Name: {app}\plugins\MSN.dll; Components: not protocols\msn; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_MSN.dll; Components: not protocols\msn; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_MSN.dll; Components: not protocols\msn; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\myavatars\msn.png; Components: not protocols\msn; Check: IsPortableSetupType and IsUpdate;
;Type: files; Name: {app}\plugins\MSN.dll; Check: IsPortableSetupType and IsUpdate;
;Type: files; Name: {app}\icons\Proto_MSN.dll; Check: IsPortableSetupType and IsUpdate;
;Type: files; Name: {app}\icons\Proto_conn_MSN.dll; Check: IsPortableSetupType and IsUpdate;
;Type: files; Name: {app}\skins\myavatars\msn.png; Check: IsPortableSetupType and IsUpdate;
 ; protocols\skype
Type: files; Name: {app}\plugins\skype.dll; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\SkypeKit.exe; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\SkypeWeb.dll; Components: not protocols\skype; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_Skype.dll; Components: not protocols\skype; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_Skype.dll; Components: not protocols\skype; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\flags; Components: not protocols\skype; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\_dark\skype; Components: not protocols\skype; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\_light\skype; Components: not protocols\skype; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\skype; Check: IsPortableSetupType and IsUpdate;
;Type: files; Name: {app}\skins\sounds\disconnect.wav; Components: not protocols\skype; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\call_in.wav; Components: not protocols\skype; Check: IsPortableSetupType and IsUpdate;
 ; protocols\tox
Type: files; Name: {app}\libs\libtox.dll; Components: not protocols\tox; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\libtox.dll; Components: not protocols\tox; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\Tox.dll; Components: not protocols\tox; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\tox.ini; Components: not protocols\tox; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\proto_conn_Tox.dll; Components: not protocols\tox; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_Tox.dll; Components: not protocols\tox; Check: IsPortableSetupType and IsUpdate;
 ; protocols\twitter
Type: files; Name: {app}\plugins\Twitter.dll; Components: not protocols\twitter; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_Twitter.dll; Components: not protocols\twitter; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_Twitter.dll; Components: not protocols\twitter; Check: IsPortableSetupType and IsUpdate;
 ; protocols\vkontakte
Type: files; Name: {app}\plugins\VKontakte.dll; Components: not protocols\vkontakte; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_VKontakte.dll; Components: not protocols\vkontakte; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_VKontakte.dll; Components: not protocols\vkontakte; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\stickers\vk; Components: not protocols\vkontakte; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\vk; Check: IsPortableSetupType and IsUpdate;
 ; protocols\whatsapp
Type: files; Name: {app}\plugins\WhatsApp.dll; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\WART-1.6.3.0.exe; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_WhatsApp.dll; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_WhatsApp.dll; Check: IsPortableSetupType and IsUpdate;
 ; protocols\yahoo
Type: files; Name: {app}\plugins\Yahoo.dll; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_Yahoo.dll; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_conn_Yahoo.dll; Check: IsPortableSetupType and IsUpdate;
 ; protocols\other\metacontacts
Type: files; Name: {app}\plugins\metacontacts.dll; Check: IsPortableSetupType and IsUpdate;
 ; protocols\other
 ; protocols\other\dropbox
Type: files; Name: {app}\plugins\Dropbox.dll; Components: not protocols\other\dropbox; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_Dropbox.dll; Components: not protocols\other\dropbox; Check: IsPortableSetupType and IsUpdate;
 ; protocols\other\mradio
Type: files; Name: {app}\plugins\mRadio.dll; Components: not protocols\other\mradio; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\mradio.ini; Components: not protocols\other\mradio; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\player.ini; Components: not protocols\other\mradio; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_mRadio.dll; Components: not protocols\other\mradio; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\myavatars\mradio.png; Components: not protocols\other\mradio; Check: IsPortableSetupType and IsUpdate;
 ; protocols\other\newsaggregator
Type: files; Name: {app}\plugins\NewsAggregator.dll; Components: not protocols\other\newsaggregator; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_NewsAggregator.dll; Components: not protocols\other\newsaggregator; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\myavatars\rss.png; Components: not protocols\other\newsaggregator; Check: IsPortableSetupType and IsUpdate;
 ; protocols\other\quotes
Type: files; Name: {app}\plugins\Quotes.dll; Components: not protocols\other\quotes; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_Quotes.dll; Components: not protocols\other\quotes; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\myavatars\quotes.png; Components: not protocols\other\quotes; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\plugins\quotes; Components: not protocols\other\quotes; Check: IsPortableSetupType and IsUpdate;
 ; protocols\other\weather
Type: files; Name: {app}\plugins\Weather.dll; Components: not protocols\other\weather; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_Weather.dll; Components: not protocols\other\weather; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\plugins\weather; Components: not protocols\other\weather; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\update.wav; Components: not protocols\other\weather; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\alert.wav; Components: not protocols\other\weather; Check: IsPortableSetupType and IsUpdate;
 ; protocols\other\yamn
Type: files; Name: {app}\plugins\YAMN.dll; Components: not protocols\other\yamn; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Proto_YAMN.dll; Components: not protocols\other\yamn; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\yamn_icons.dll; Check: IsPortableSetupType and IsUpdate;
 ; plugins
 ; plugins\actman
Type: files; Name: {app}\plugins\actman30.dll; Check: IsPortableSetupType and IsUpdate;
 ; plugins\authstate
Type: files; Name: {app}\plugins\AuthState.dll; Components: not plugins\authstate; Check: IsPortableSetupType and IsUpdate;
 ; plugins\bosskey
Type: files; Name: {app}\plugins\BossKey.dll; Components: not plugins\bosskey; Check: IsPortableSetupType and IsUpdate;
 ; plugins\buddyex
Type: files; Name: {app}\plugins\BuddyExpectator.dll; Components: not plugins\buddyex; Check: IsPortableSetupType and IsUpdate;
 ; plugins\ckl
Type: files; Name: {app}\plugins\ChangeKeyboardLayout.dll; Components: not plugins\ckl; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\TranslitSwitcher.dll; Components: not plugins\ckl; Check: IsPortableSetupType and IsUpdate;
 ; plugins\dbeditor
Type: files; Name: {app}\plugins\DbEditorPP.dll; Components: not plugins\dbeditor; Check: IsPortableSetupType and IsUpdate;
 ; plugins\fingerprint
Type: files; Name: {app}\plugins\Fingerprint.dll; Components: not plugins\fingerprint; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Fp_icons.dll; Components: not plugins\fingerprint; Check: IsPortableSetupType and IsUpdate;
 ; plugins\flag
Type: files; Name: {app}\plugins\Flags.dll; Components: not plugins\flag; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Flag_icons.dll; Components: not plugins\flag; Check: IsPortableSetupType and IsUpdate;
 ; plugins\fltcontacts
Type: files; Name: {app}\plugins\FltContacts.dll; Components: not plugins\fltcontacts; Check: IsPortableSetupType and IsUpdate;
 ; gtalkext
Type: files; Name: {app}\plugins\GTalkExt.dll; Check: IsPortableSetupType and IsUpdate;
 ; plugins\historypp
Type: files; Name: {app}\plugins\HistoryPP.dll; Components: not plugins\historypp; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\HistoryPP_icons.dll; Components: not plugins\historypp; Check: IsPortableSetupType and IsUpdate;
 ; plugins\historysweeperlight
Type: files; Name: {app}\plugins\HistorySweeperLight.dll; Components: not plugins\historysweeperlight; Check: IsPortableSetupType and IsUpdate;
 ; plugins\ignorestate
Type: files; Name: {app}\plugins\IgnoreState.dll; Components: not plugins\ignorestate; Check: IsPortableSetupType and IsUpdate;
 ; plugins\keepstatus
Type: files; Name: {app}\plugins\keepstatus.dll; Check: IsPortableSetupType and IsUpdate;
 ; plugins\keyboardnotify
Type: files; Name: {app}\plugins\KeyboardNotify.dll; Components: not plugins\keyboardnotify; Check: IsPortableSetupType and IsUpdate;
 ; plugins\listeningto
Type: files; Name: {app}\plugins\ListeningTo.dll; Components: not plugins\listeningto; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\plugins\listeningto; Components: not plugins\listeningto; Check: IsPortableSetupType and IsUpdate;
 ; messagestate
Type: files; Name: {app}\plugins\MessageState.dll; Components: not (protocols\facebook and protocols\vkontakte); Check: IsPortableSetupType and IsUpdate;
 ; plugins\modernopt
Type: files; Name: {app}\plugins\ModernOpt.dll; Check: IsPortableSetupType and IsUpdate;
 ; plugins\newxstatusnotify
Type: files; Name: {app}\plugins\NewXstatusNotify.dll; Components: not plugins\newxstatusnotify; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\away.wav; Components: not plugins\newxstatusnotify; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\changex.wav; Components: not plugins\newxstatusnotify; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\scan.wav; Components: not plugins\newxstatusnotify; Check: IsPortableSetupType and IsUpdate;
 ; nudge
Type: files; Name: {app}\plugins\Nudge.dll; Components: not ({#JabberProtocols} and protocols\mra and protocols\msn); Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\nudge.wav; Components: not ({#JabberProtocols} and protocols\mra and protocols\msn); Check: IsPortableSetupType and IsUpdate;
 ; plugins\quickmessages
Type: files; Name: {app}\plugins\QuickMessages.dll; Components: not plugins\quickmessages; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\QuickMessages_icons.dll; Components: not plugins\quickmessages; Check: IsPortableSetupType and IsUpdate;
 ; plugins\quicksearch
Type: files; Name: {app}\plugins\QuickSearch.dll; Components: not plugins\quicksearch; Check: IsPortableSetupType and IsUpdate;
 ; plugins\mirotr
Type: files; Name: {app}\plugins\MirOTR.dll; Components: not plugins\mirotr; Check: IsPortableSetupType and IsUpdate;
 ; plugins\secureim
Type: files; Name: {app}\plugins\CryptoPP.dll; Components: not plugins\secureim; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\SecureIM.dll; Components: not plugins\secureim; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\SecureIM_icons.dll; Components: not plugins\secureim; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\securein.wav; Components: not plugins\secureim; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\secureout.wav; Components: not plugins\secureim; Check: IsPortableSetupType and IsUpdate;
 ; plugins\sessions
Type: files; Name: {app}\plugins\Sessions.dll; Components: not plugins\sessions; Check: IsPortableSetupType and IsUpdate;
 ; plugins\sms
Type: files; Name: {app}\plugins\SMS.dll; Components: not (protocols\icq and protocols\mra) ; Check: IsPortableSetupType and IsUpdate;
 ; plugins\schecker
Type: files; Name: {app}\plugins\SpellChecker.dll; Components: not plugins\schecker; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\plugins\dictionaries; Components: not plugins\schecker; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\Flags_icons.dll; Components: not plugins\schecker; Check: IsPortableSetupType and IsUpdate;
 ; plugins\startupstatus
Type: files; Name: {app}\plugins\startupstatus.dll; Check: IsPortableSetupType and IsUpdate;
 ; plugins\stopspam
Type: files; Name: {app}\plugins\StopSpam.dll; Components: not plugins\stopspam; Check: IsPortableSetupType and IsUpdate;
 ; plugins\uinfoex
Type: files; Name: {app}\plugins\UInfoEx.dll; Components: not plugins\uinfoex; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\icons\UinfoEx_icons.dll; Components: not plugins\uinfoex; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\birthday.wav; Components: not (plugins\birthday and plugins\uinfoex); Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\birthdaycoming.wav; Components: not (plugins\birthday and plugins\uinfoex); Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\reminder.wav; Components: not plugins\uinfoex; Check: IsPortableSetupType and IsUpdate;
 ; plugins\birthday
Type: files; Name: {app}\plugins\WhenWasIt.dll; Components: not plugins\birthday; Check: IsPortableSetupType and IsUpdate;
 ; resources
 ; resources\ieview
Type: files; Name: {app}\plugins\IEView.dll; Components: not resources\ieview; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\ieview; Components: not resources\ieview; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\ieview\!tools\fonts\*.css; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\ieview\!tools\other; Check: IsPortableSetupType and IsUpdate;
 ; IEViewAnimation old
Type: files; Name: {app}\skins\ieview\!tools\skripte\animation0.js; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\ieview\!tools\skripte\animation1.js; Check: IsPortableSetupType and IsUpdate;
 ; resources\popup
Type: files; Name: {app}\plugins\Popup.dll; Components: not resources\popup; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\plugins\mTextControl.dll; Components: not resources\popup; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\popup; Components: not resources\popup; Check: IsPortableSetupType and IsUpdate;
 ; resources\smileys
Type: files; Name: {app}\plugins\SmileyAdd.dll; Components: not resources\smileys; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys; Components: not resources\smileys; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\_flash; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\dark_skin; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\light_skin; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\smileys\other; Check: IsPortableSetupType and IsUpdate;
; resources\sounds
Type: files; Name: {app}\plugins\BASS_interface.dll; Components: not resources\sounds; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\plugins\bass; Components: not (resources\sounds and protocols\other\mradio); Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\sounds; Components: not resources\sounds; Check: IsPortableSetupType and IsUpdate;
 ; resources\splashscreen
Type: files; Name: {app}\plugins\SplashScreen.dll; Components: not resources\splashscreen; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\splash; Components: not resources\splashscreen; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\skins\sounds\startup.wav; Components: not resources\splashscreen; Check: IsPortableSetupType and IsUpdate;
 ; resources\tipper
Type: files; Name: {app}\plugins\Tipper.dll; Components: not resources\tipper; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\skins\tipper; Components: not resources\tipper; Check: IsPortableSetupType and IsUpdate;

#define ICQProtocol "protocols\icq\icq or protocols\icq\icq2 or protocols\icq\icq3 or protocols\icq\icq4 or protocols\icq\icq5"
#define JabberProtocol "protocols\jabber\gmail or protocols\jabber\google or protocols\jabber\gtalk or protocols\jabber\hangouts or protocols\jabber\jabber or protocols\jabber\jabberru or protocols\jabber\lj or protocols\jabber\ok or protocols\jabber\xmpp"

[Files]
 ; image resources
Source: resources\7za.exe; Flags: dontcopy;
Source: resources\images\*.*; Flags: dontcopy;
#if debug == 0
 ; fonts
Source: resources\fonts\monotype_corsiva.ttf; DestDir: {fonts}; FontInstall: Monotype Corsiva; Flags: onlyifdoesntexist uninsneveruninstall;
Source: resources\fonts\segoepr.ttf; DestDir: {fonts}; FontInstall: Segoe Print; Flags: onlyifdoesntexist uninsneveruninstall;
Source: resources\fonts\segoeprb.ttf; DestDir: {fonts}; FontInstall: Segoe Print Bold; Flags: onlyifdoesntexist uninsneveruninstall;
 ; core
Source: {#AppArch}\core\*; DestDir: {app}\core; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
 ; libs
Source: {#AppArch}\libs\lua53.dll; DestDir: {app}\libs; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\libs\libaxolotl.mir; DestDir: {app}\libs; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\libs\libcurl.mir; DestDir: {app}\libs; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\libs\libeay32.mir; DestDir: {app}\libs; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\libs\libjson.mir; DestDir: {app}\libs; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\libs\liblua.mir; DestDir: {app}\libs; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\libs\mir_app.mir; DestDir: {app}\libs; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\libs\mir_core.mir; DestDir: {app}\libs; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\libs\Pcre16.mir; DestDir: {app}\libs; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\libs\ssleay32.mir; DestDir: {app}\libs; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\libs\Zlib.mir; DestDir: {app}\libs; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\{#AppExeName}; DestDir: {app}; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\*.bat; DestDir: {app}; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\msvcp100.dll; DestDir: {app}; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\msvcr100.dll; DestDir: {app}; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
;Source: {#AppArch}\libeay32.dll; DestDir: {app}; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails; OnlyBelowVersion: 0,6.0;
;Source: {#AppArch}\ssleay32.dll; DestDir: {app}; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails; OnlyBelowVersion: 0,6.0;
Source: x86\languages\langpack_russian.txt; DestDir: {app}\languages; Languages: ru; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\mirandaboot.ini; DestDir: {app}; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\profiles\settings_en.ini; DestDir: {app}\profiles; DestName: settings.ini; Languages: en; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\profiles\update_en.ini; DestDir: {app}\profiles; DestName: update.ini; Languages: en; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\profiles\update_en.ini; DestDir: {app}\profiles; DestName: autoexec_update.ini; Languages: en; Flags: ignoreversion; Components: maincore; Check: IsUpdate; AfterInstall: AddDetails;
Source: x86\profiles\settings_ru.ini; DestDir: {app}\profiles; DestName: settings.ini; Languages: ru; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\profiles\update_ru.ini; DestDir: {app}\profiles; DestName: update.ini; Languages: ru; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\profiles\update_ru.ini; DestDir: {app}\profiles; DestName: autoexec_update.ini; Languages: ru; Flags: ignoreversion; Components: maincore; Check: IsUpdate; AfterInstall: AddDetails;
;Source: x86\docs\*; DestDir: {app}\docs; Flags: ignoreversion recursesubdirs createallsubdirs; Components: maincore; AfterInstall: AddDetails;
;Source: x86\icons\Action_icons.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\icons\MirLua_icons.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\icons\Proto_conn.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\icons\Proto_MetaContacts.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\icons\TabSRMM_icons.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\icons\Toolbar_icons.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
;Source: {#AppArch}\plugins\actman.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\plugins\services.ini; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\AdvaImg.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
;Source: {#AppArch}\plugins\advancedautoaway.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\AVS.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\Clist_modern.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\CrashDumper.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
;Source: {#AppArch}\plugins\cryptors\*.dll; DestDir: {app}\plugins\cryptors; Flags: ignoreversion; Components: maincore; Check: IsUpdate and CheckUpdateVersion('0.94.3.4725,0.94.5.5220,0.94.6.6493'); AfterInstall: AddDetails;
Source: {#AppArch}\plugins\Db_autobackups.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\DbChecker.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
;Source: {#AppArch}\plugins\dbx_mmap_sa.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; Check: IsUpdate and CheckUpdateVersion('0.94.3.4725,0.94.5.5220,0.94.6.6493'); AfterInstall: AddDetails;
Source: {#AppArch}\plugins\Dbx_mmap.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
;Source: {#AppArch}\plugins\flashavatars.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\Folders.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\Import.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\scripts\*.dll; DestDir: {app}\scripts; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\scripts\*.lua; DestDir: {app}\scripts; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\skins\sounds\hny.mp3; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\MenuEx.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\MirLua.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\NewAwaySys.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
;Source: {#AppArch}\plugins\openssl.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails; OnlyBelowVersion: 0,6.0;
Source: {#AppArch}\plugins\PackUpdater.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\PluginUpdater.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\pu_stub.exe; DestDir: {app}; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\StatusManager.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\TabSRMM.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\TopToolBar.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\Variables.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\skins\fonts\*; DestDir: {app}\skins\fonts; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\skins\fonts\handwriting.ini; DestDir: {app}\profiles; DestName: autoexec_zfont.ini; Flags: ignoreversion; Components: maincore; Check: IsStyleChecked('FontHandwriting'); AfterInstall: AddDetails;
Source: x86\skins\fonts\printing.ini; DestDir: {app}\profiles; DestName: autoexec_zfont.ini; Flags: ignoreversion; Components: maincore; Check: IsStyleChecked('FontPrinting'); AfterInstall: AddDetails;
Source: x86\skins\icons\*; DestDir: {app}\skins\icons; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\skins\defaultmirl.ini; DestDir: {app}\skins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\skins\defaultwinl.ini; DestDir: {app}\skins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
Source: x86\skins\myavatars\no_avatar.png; DestDir: {app}\skins\myavatars; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
;Source: autoexec_pass.ini; DestDir: {app}\profiles; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;

;Source: {#AppArch}\plugins\alarms.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
#if AppStatus == "Test"
Source: {#AppArch}\plugins\Console.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
#endif
;Source: {#AppArch}\plugins\mydetails.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;

 ; protocols
 ; protocols\aim
Source: {#AppArch}\plugins\AIM.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\aim; AfterInstall: AddDetails;
Source: x86\icons\Proto_AIM.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\aim; AfterInstall: AddDetails;
Source: x86\icons\Proto_conn_AIM.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\aim; AfterInstall: AddDetails;
 ; protocols\facebook
Source: {#AppArch}\plugins\Facebook.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\facebook; AfterInstall: AddDetails;
Source: x86\icons\Proto_conn_Facebook.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\facebook; AfterInstall: AddDetails;
Source: x86\icons\Proto_Facebook.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\facebook; AfterInstall: AddDetails;
 ; protocols\gg
Source: {#AppArch}\plugins\GG.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\gg; AfterInstall: AddDetails;
Source: x86\icons\Proto_conn_GG.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\gg; AfterInstall: AddDetails;
Source: x86\icons\Proto_GG.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\gg; AfterInstall: AddDetails;
 ; protocols\icq
 ; protocols\icq\icq
Source: {#AppArch}\plugins\ICQ.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: {#ICQProtocol}; AfterInstall: AddDetails;
Source: x86\icons\Proto_conn_ICQ.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: {#ICQProtocol}; AfterInstall: AddDetails;
Source: x86\icons\Proto_ICQ.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: {#ICQProtocol}; AfterInstall: AddDetails;
Source: x86\icons\xStatus_ICQ.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: {#ICQProtocol}; AfterInstall: AddDetails;
 ; protocols\icq\icq2
Source: x86\icons\Proto_conn_ICQ2.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\icq\icq2; AfterInstall: AddDetails;
Source: x86\icons\Proto_ICQ2.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\icq\icq2; AfterInstall: AddDetails;
 ; protocols\icq\icq3
Source: x86\icons\Proto_conn_ICQ3.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\icq\icq3; AfterInstall: AddDetails;
Source: x86\icons\Proto_ICQ3.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\icq\icq3; AfterInstall: AddDetails;
 ; protocols\icq\icq4
Source: x86\icons\Proto_conn_ICQ4.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\icq\icq4; AfterInstall: AddDetails;
Source: x86\icons\Proto_ICQ4.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\icq\icq4; AfterInstall: AddDetails;
 ; protocols\icq\icq5
Source: x86\icons\Proto_conn_ICQ5.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\icq\icq5; AfterInstall: AddDetails;
Source: x86\icons\Proto_ICQ5.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\icq\icq5; AfterInstall: AddDetails;
 ; protocols\irc
Source: {#AppArch}\plugins\IRC.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\irc; AfterInstall: AddDetails;
Source: x86\icons\Proto_conn_IRC.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\irc; AfterInstall: AddDetails;
Source: x86\icons\Proto_IRC.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\irc; AfterInstall: AddDetails;
Source: x86\skins\myavatars\irc.png; DestDir: {app}\skins\myavatars; Flags: ignoreversion; Components: protocols\irc; AfterInstall: AddDetails;
 ; protocols\jabber
Source: {#AppArch}\plugins\Jabber.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: {#JabberProtocol}; AfterInstall: AddDetails;
Source: x86\icons\xStatus_Jabber.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: {#JabberProtocol}; AfterInstall: AddDetails;
Source: x86\skins\myavatars\jabber.png; DestDir: {app}\skins\myavatars; Flags: ignoreversion; Components: {#JabberProtocol}; AfterInstall: AddDetails;
 ; protocols\jabber\gmail
Source: x86\icons\Proto_conn_GMail.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\gmail; AfterInstall: AddDetails;
Source: x86\icons\Proto_GMail.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\gmail; AfterInstall: AddDetails;
 ; protocols\jabber\google
Source: x86\icons\Proto_conn_Google.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\google; AfterInstall: AddDetails;
Source: x86\icons\Proto_Google.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\google; AfterInstall: AddDetails;
 ; protocols\jabber\gtalk
Source: x86\icons\Proto_conn_GTalk.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\gtalk; AfterInstall: AddDetails;
Source: x86\icons\Proto_GTalk.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\gtalk; AfterInstall: AddDetails;
 ; protocols\jabber\hangouts
Source: x86\icons\Proto_conn_Hangouts.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\hangouts; AfterInstall: AddDetails;
Source: x86\icons\Proto_Hangouts.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\hangouts; AfterInstall: AddDetails;
 ; protocols\jabber\jabber
Source: x86\icons\Proto_conn_Jabber.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\jabber; AfterInstall: AddDetails;
Source: x86\icons\Proto_Jabber.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\jabber; AfterInstall: AddDetails;
 ; protocols\jabber\jabberru
Source: x86\icons\Proto_conn_Jabberru.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\jabberru; AfterInstall: AddDetails;
Source: x86\icons\Proto_Jabberru.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\jabberru; AfterInstall: AddDetails;
 ; protocols\jabber\lj
Source: x86\icons\Proto_conn_LJ.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\lj; AfterInstall: AddDetails;
Source: x86\icons\Proto_LJ.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\lj; AfterInstall: AddDetails;
 ; protocols\jabber\ok
Source: x86\icons\Proto_conn_OK.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\ok; AfterInstall: AddDetails;
Source: x86\icons\Proto_OK.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\ok; AfterInstall: AddDetails;
 ; protocols\jabber\xmpp
Source: x86\icons\Proto_conn_XMPP.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\xmpp; AfterInstall: AddDetails;
Source: x86\icons\Proto_XMPP.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\xmpp; AfterInstall: AddDetails;
 ; protocols\jabber\yandex
;Source: x86\icons\Proto_conn_Yandex.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\yandex; AfterInstall: AddDetails;
;Source: x86\icons\Proto_Yandex.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\jabber\yandex; AfterInstall: AddDetails;
 ; protocols\mra
Source: {#AppArch}\plugins\MRA.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\mra; AfterInstall: AddDetails;
Source: x86\icons\Proto_conn_MRA.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\mra; AfterInstall: AddDetails;
Source: x86\icons\Proto_MRA.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\mra; AfterInstall: AddDetails;
Source: x86\icons\xStatus_MRA.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\mra; AfterInstall: AddDetails;
Source: x86\skins\smileys\_dark\mra\*; DestDir: {app}\skins\smileys\_dark\mra; Flags: ignoreversion recursesubdirs createallsubdirs; Components: protocols\mra and resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\smileys\_dark\mra\mra_big_pack.msl; DestDir: {app}\skins\smileys\_dark\mra; DestName: mra.msl; Flags: ignoreversion; Components: protocols\mra and resources\smileys\big_pack; AfterInstall: AddDetails;
Source: x86\skins\smileys\_dark\mra\mra_small_pack.msl; DestDir: {app}\skins\smileys\_dark\mra; DestName: mra.msl; Flags: ignoreversion; Components: protocols\mra and resources\smileys\small_pack; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\mra\*; DestDir: {app}\skins\smileys\_light\mra; Flags: ignoreversion recursesubdirs createallsubdirs; Components: protocols\mra and resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\mra\mra_big_pack.msl; DestDir: {app}\skins\smileys\_light\mra; DestName: mra.msl; Flags: ignoreversion; Components: protocols\mra and resources\smileys\big_pack; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\mra\mra_small_pack.msl; DestDir: {app}\skins\smileys\_light\mra; DestName: mra.msl; Flags: ignoreversion; Components: protocols\mra and resources\smileys\small_pack; AfterInstall: AddDetails;
Source: x86\skins\smileys\mra\*; DestDir: {app}\skins\smileys\mra; Flags: ignoreversion recursesubdirs createallsubdirs; Components: protocols\mra and resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\myavatars\mra.png; DestDir: {app}\skins\myavatars; Flags: ignoreversion; Components: protocols\mra; AfterInstall: AddDetails;
 ; protocols\msn
Source: {#AppArch}\plugins\MSN.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\msn; AfterInstall: AddDetails;
Source: x86\icons\Proto_conn_MSN.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\msn; AfterInstall: AddDetails;
Source: x86\icons\Proto_MSN.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\msn; AfterInstall: AddDetails;
Source: x86\skins\myavatars\msn.png; DestDir: {app}\skins\myavatars; Flags: ignoreversion; Components: protocols\msn; AfterInstall: AddDetails;
 ; protocols\skype
Source: {#AppArch}\plugins\SkypeWeb.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\skype; AfterInstall: AddDetails;
Source: x86\icons\Proto_conn_Skype.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\skype; AfterInstall: AddDetails;
Source: x86\icons\Proto_Skype.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\skype; AfterInstall: AddDetails;
Source: x86\skins\smileys\flags\*; DestDir: {app}\skins\smileys\flags; Flags: ignoreversion recursesubdirs createallsubdirs; Components: protocols\skype and resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\smileys\_dark\skype\*; DestDir: {app}\skins\smileys\_dark\skype; Flags: ignoreversion recursesubdirs createallsubdirs; Components: protocols\skype and resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\smileys\_dark\skype\skype_big_pack.msl; DestDir: {app}\skins\smileys\_dark\skype; DestName: skype.msl; Flags: ignoreversion; Components: protocols\skype and resources\smileys\big_pack; AfterInstall: AddDetails;
Source: x86\skins\smileys\_dark\skype\skype_small_pack.msl; DestDir: {app}\skins\smileys\_dark\skype; DestName: skype.msl; Flags: ignoreversion; Components: protocols\skype and resources\smileys\small_pack; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\skype\*; DestDir: {app}\skins\smileys\_light\skype; Flags: ignoreversion recursesubdirs createallsubdirs; Components: protocols\skype and resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\skype\skype_big_pack.msl; DestDir: {app}\skins\smileys\_light\skype; DestName: skype.msl; Flags: ignoreversion; Components: protocols\skype and resources\smileys\big_pack; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\skype\skype_small_pack.msl; DestDir: {app}\skins\smileys\_light\skype; DestName: skype.msl; Flags: ignoreversion; Components: protocols\skype and resources\smileys\small_pack; AfterInstall: AddDetails;
;Source: x86\skins\sounds\disconnect.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: protocols\skype; AfterInstall: AddDetails;
Source: x86\skins\sounds\call_in.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: protocols\skype; AfterInstall: AddDetails;
 ; protocols\tox
Source: {#AppArch}\libs\libtox.dll; DestDir: {app}\libs; Flags: ignoreversion; Components: protocols\tox; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\Tox.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\tox; AfterInstall: AddDetails;
Source: x86\plugins\tox.ini; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\tox; AfterInstall: AddDetails;
Source: x86\icons\proto_conn_Tox.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\tox; AfterInstall: AddDetails;
Source: x86\icons\Proto_Tox.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\tox; AfterInstall: AddDetails;
 ; protocols\twitter
Source: {#AppArch}\plugins\Twitter.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\twitter; AfterInstall: AddDetails;
Source: x86\icons\Proto_conn_Twitter.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\twitter; AfterInstall: AddDetails;
Source: x86\icons\Proto_Twitter.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\twitter; AfterInstall: AddDetails;
 ; protocols\vkontakte
Source: {#AppArch}\plugins\VKontakte.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\vkontakte; AfterInstall: AddDetails;
Source: x86\icons\Proto_conn_VKontakte.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\vkontakte; AfterInstall: AddDetails;
Source: x86\icons\Proto_VKontakte.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\vkontakte; AfterInstall: AddDetails;
Source: x86\skins\smileys\stickers\vk\*; DestDir: {app}\skins\smileys\stickers\vk; Flags: ignoreversion recursesubdirs createallsubdirs; Components: protocols\vkontakte and resources\smileys; AfterInstall: AddDetails;
 ; protocols\whatsapp
;Source: {#AppArch}\plugins\WhatsApp.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\whatsapp; AfterInstall: AddDetails;
;Source: x86\plugins\WART-1.6.3.0.exe; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\whatsapp; AfterInstall: AddDetails;
;Source: x86\icons\Proto_conn_WhatsApp.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\whatsapp; AfterInstall: AddDetails;
;Source: x86\icons\Proto_WhatsApp.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\whatsapp; AfterInstall: AddDetails;
 ; protocols\yahoo
;Source: {#AppArch}\plugins\Yahoo.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\yahoo; AfterInstall: AddDetails;
;Source: x86\icons\Proto_conn_Yahoo.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\yahoo; AfterInstall: AddDetails;
;Source: x86\icons\Proto_Yahoo.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\yahoo; AfterInstall: AddDetails;
 ; protocols\other
 ; protocols\other\dropbox
Source: {#AppArch}\plugins\Dropbox.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\other\dropbox; AfterInstall: AddDetails;
Source: x86\icons\Proto_Dropbox.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\other\dropbox; AfterInstall: AddDetails;
 ; protocols\other\mradio
Source: {#AppArch}\plugins\mRadio.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\other\mradio; AfterInstall: AddDetails;
Source: x86\plugins\mradio.ini; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\other\mradio; AfterInstall: AddDetails;
Source: x86\plugins\player.ini; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\other\mradio; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\bass\*; DestDir: {app}\plugins\bass; Flags: ignoreversion; Components: protocols\other\mradio; AfterInstall: AddDetails;
Source: x86\icons\Proto_mRadio.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\other\mradio; AfterInstall: AddDetails;
Source: x86\skins\myavatars\mradio.png; DestDir: {app}\skins\myavatars; Flags: ignoreversion; Components: protocols\other\mradio; AfterInstall: AddDetails;
 ; protocols\other\newsaggregator
Source: {#AppArch}\plugins\NewsAggregator.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\other\newsaggregator; AfterInstall: AddDetails;
Source: x86\icons\Proto_NewsAggregator.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\other\newsaggregator; AfterInstall: AddDetails;
Source: x86\skins\myavatars\rss.png; DestDir: {app}\skins\myavatars; Flags: ignoreversion; Components: protocols\other\newsaggregator; AfterInstall: AddDetails;
 ; protocols\other\quotes
Source: {#AppArch}\plugins\Quotes.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\other\quotes; AfterInstall: AddDetails;
Source: x86\plugins\quotes\*; DestDir: {app}\plugins\quotes; Flags: ignoreversion; Components: protocols\other\quotes; AfterInstall: AddDetails;
Source: x86\icons\Proto_Quotes.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\other\quotes; AfterInstall: AddDetails;
Source: x86\skins\myavatars\quotes.png; DestDir: {app}\skins\myavatars; Flags: ignoreversion; Components: protocols\other\quotes; AfterInstall: AddDetails;
 ; protocols\other\weather
Source: {#AppArch}\plugins\Weather.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\other\weather; AfterInstall: AddDetails;
Source: x86\plugins\weather\*.png; DestDir: {app}\plugins\weather; Flags: ignoreversion; Components: protocols\other\weather; AfterInstall: AddDetails;
Source: x86\plugins\weather\*.ini; DestDir: {app}\plugins\weather; Flags: ignoreversion; Components: protocols\other\weather; AfterInstall: AddDetails;
Source: x86\icons\Proto_Weather.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\other\weather; AfterInstall: AddDetails;
Source: x86\skins\sounds\update.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: protocols\other\weather and resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\alert.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: protocols\other\weather and resources\sounds; AfterInstall: AddDetails;
 ; protocols\other\yamn
Source: {#AppArch}\plugins\YAMN.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\other\yamn; AfterInstall: AddDetails;
Source: x86\icons\Proto_YAMN.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: protocols\other\yamn; AfterInstall: AddDetails;

 ; plugins
 ; plugins\authstate
Source: {#AppArch}\plugins\AuthState.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\authstate; AfterInstall: AddDetails;
 ; plugins\bosskey
Source: {#AppArch}\plugins\BossKey.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\bosskey; AfterInstall: AddDetails;
 ; plugins\buddyex
Source: {#AppArch}\plugins\BuddyExpectator.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\buddyex; AfterInstall: AddDetails;
 ; plugins\ckl
Source: {#AppArch}\plugins\ChangeKeyboardLayout.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\ckl; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\TranslitSwitcher.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\ckl; AfterInstall: AddDetails;
 ; plugins\dbeditor
Source: {#AppArch}\plugins\DbEditorPP.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\dbeditor; AfterInstall: AddDetails;
 ; plugins\favcontacts
;Source: {#AppArch}\plugins\favcontacts.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\favcontacts; AfterInstall: AddDetails;
 ; plugins\fingerprint
Source: {#AppArch}\plugins\Fingerprint.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\fingerprint; AfterInstall: AddDetails;
Source: x86\icons\Fp_icons.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: plugins\fingerprint; AfterInstall: AddDetails;
 ; plugins\flag
Source: {#AppArch}\plugins\Flags.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\flag; AfterInstall: AddDetails;
Source: x86\icons\Flag_icons.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: plugins\flag; AfterInstall: AddDetails;
 ; plugins\fltcontacts
Source: {#AppArch}\plugins\FltContacts.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\fltcontacts; AfterInstall: AddDetails;
 ; gtalkext
;Source: {#AppArch}\plugins\GTalkExt.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\jabber\gmail or protocols\jabber\google or protocols\jabber\gtalk or protocols\jabber\hangouts; AfterInstall: AddDetails;
 ; plugins\historypp
Source: {#AppArch}\plugins\HistoryPP.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\historypp; AfterInstall: AddDetails;
Source: x86\icons\HistoryPP_icons.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: maincore; AfterInstall: AddDetails;
 ; plugins\historysweeperlight
Source: {#AppArch}\plugins\HistorySweeperLight.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\historysweeperlight; AfterInstall: AddDetails;
 ; plugins\ignorestate
Source: {#AppArch}\plugins\IgnoreState.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\ignorestate; AfterInstall: AddDetails;
 ; plugins\keepstatus
;Source: {#AppArch}\plugins\keepstatus.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\keepstatus; AfterInstall: AddDetails;
 ; plugins\keyboardnotify
Source: {#AppArch}\plugins\KeyboardNotify.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\keyboardnotify; AfterInstall: AddDetails;
 ; plugins\listeningto
Source: {#AppArch}\plugins\ListeningTo.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\listeningto; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\listeningto\*; DestDir: {app}\plugins\listeningto; Flags: ignoreversion; Components: plugins\listeningto; AfterInstall: AddDetails;
 ; messagestate
Source: {#AppArch}\plugins\MessageState.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\facebook or protocols\vkontakte; AfterInstall: AddDetails;
 ; plugins\modernopt
;Source: {#AppArch}\plugins\ModernOpt.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\modernopt; AfterInstall: AddDetails;
 ; plugins\newxstatusnotify
Source: {#AppArch}\plugins\NewXstatusNotify.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\newxstatusnotify; AfterInstall: AddDetails;
Source: x86\skins\sounds\away.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: plugins\newxstatusnotify; AfterInstall: AddDetails;
Source: x86\skins\sounds\changex.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: plugins\newxstatusnotify; AfterInstall: AddDetails;
Source: x86\skins\sounds\scan.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: plugins\newxstatusnotify; AfterInstall: AddDetails;
 ; nudge
Source: {#AppArch}\plugins\Nudge.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: {#JabberProtocol} or protocols\mra or protocols\msn; AfterInstall: AddDetails;
Source: x86\skins\sounds\nudge.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: {#JabberProtocol} or protocols\mra or protocols\msn; AfterInstall: AddDetails;
 ; plugins\quickmessages
Source: {#AppArch}\plugins\QuickMessages.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\quickmessages; AfterInstall: AddDetails;
Source: x86\icons\QuickMessages_icons.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: plugins\quickmessages; AfterInstall: AddDetails;
 ; plugins\quicksearch
Source: {#AppArch}\plugins\QuickSearch.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\quicksearch; AfterInstall: AddDetails;
 ; plugins\mirotr
Source: {#AppArch}\plugins\MirOTR.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\mirotr; AfterInstall: AddDetails;
 ; plugins\secureim
Source: {#AppArch}\plugins\CryptoPP.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\secureim; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\SecureIM.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\secureim; AfterInstall: AddDetails;
Source: x86\icons\SecureIM_icons.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: plugins\secureim; AfterInstall: AddDetails;
Source: x86\skins\sounds\securein.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: plugins\secureim; AfterInstall: AddDetails;
Source: x86\skins\sounds\secureout.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: plugins\secureim; AfterInstall: AddDetails;
 ; plugins\sessions
Source: {#AppArch}\plugins\Sessions.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\sessions; AfterInstall: AddDetails;
 ; plugins\sms
Source: {#AppArch}\plugins\SMS.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: protocols\icq or protocols\mra; AfterInstall: AddDetails;
 ; plugins\schecker
Source: {#AppArch}\libs\hunspell.mir; DestDir: {app}\libs; Flags: ignoreversion; Components: plugins\schecker; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\SpellChecker.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\schecker; AfterInstall: AddDetails;
Source: x86\plugins\dictionaries\en_US.*; DestDir: {app}\plugins\dictionaries; Flags: ignoreversion; Components: plugins\schecker; AfterInstall: AddDetails;
Source: x86\plugins\dictionaries\ru_RU.*; DestDir: {app}\plugins\dictionaries; Languages: ru; Flags: ignoreversion; Components: plugins\schecker; AfterInstall: AddDetails;
Source: x86\icons\Flags_icons.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: plugins\schecker; AfterInstall: AddDetails;
 ; plugins\startupstatus
;Source: {#AppArch}\plugins\startupstatus.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\startupstatus; AfterInstall: AddDetails;
 ; plugins\stopspam
Source: {#AppArch}\plugins\StopSpam.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\stopspam; AfterInstall: AddDetails;
 ; plugins\uinfoex
Source: {#AppArch}\plugins\UInfoEx.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\uinfoex; AfterInstall: AddDetails;
Source: x86\icons\UinfoEx_icons.dll; DestDir: {app}\icons; Flags: ignoreversion; Components: plugins\uinfoex; AfterInstall: AddDetails;
Source: x86\skins\sounds\birthday.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: plugins\birthday or plugins\uinfoex and resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\birthdaycoming.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: plugins\birthday or plugins\uinfoex and resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\reminder.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: plugins\uinfoex and resources\sounds; AfterInstall: AddDetails;
 ; plugins\birthday
Source: {#AppArch}\plugins\WhenWasIt.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: plugins\birthday; AfterInstall: AddDetails;

 ; resources
 ; resources\ieview
 ; resources\ieview\anim
 ; resources\ieview\avatar
Source: {#AppArch}\plugins\IEView.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\!tools\filetypes\*; DestDir: {app}\skins\ieview\!tools\filetypes; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\!tools\fonts\*; DestDir: {app}\skins\ieview\!tools\fonts; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\!tools\icons\*; DestDir: {app}\skins\ieview\!tools\icons; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\!tools\icons\packs\fugue.7z; DestDir: {app}\skins\ieview\!tools\icons; Check: IsStyleChecked('IconsFugue'); AfterInstall: Extract();
Source: x86\skins\ieview\!tools\icons\packs\nova.7z; DestDir: {app}\skins\ieview\!tools\icons; Check: IsStyleChecked('IconsNova'); AfterInstall: Extract();
Source: x86\skins\ieview\!tools\icons\packs\xpk.7z; DestDir: {app}\skins\ieview\!tools\icons; Check: IsStyleChecked('IconsXpk'); AfterInstall: Extract();
Source: x86\skins\ieview\!tools\player\*; DestDir: {app}\skins\ieview\!tools\player; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\!tools\scripts\*; DestDir: {app}\skins\ieview\!tools\scripts; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\ieview; AfterInstall: AddDetails;
;Source: x86\skins\ieview\!tools\scripts\en\*; DestDir: {app}\skins\ieview\!tools\scripts; Languages: en; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
;Source: x86\skins\ieview\!tools\scripts\ru\*; DestDir: {app}\skins\ieview\!tools\scripts; Languages: ru; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\!tools\tZersFiles\animationen\*; DestDir: {app}\skins\ieview\!tools\tZersFiles\animationen; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\!tools\tZersFiles\grafiken\*; DestDir: {app}\skins\ieview\!tools\tZersFiles\grafiken; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\defaultwinl.ivt; DestDir: {app}\skins\ieview; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\styles\defaultwinl.css; DestDir: {app}\skins\ieview\styles; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\styles\defaultwinl\*; DestDir: {app}\skins\ieview\styles\defaultwinl; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\styles\*.png; DestDir: {app}\skins\ieview\styles; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\config.css; DestDir: {app}\skins\ieview; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\noavatar.png; DestDir: {app}\skins\ieview; Flags: ignoreversion; Components: resources\ieview; AfterInstall: AddDetails;
 ; resources\popup
Source: {#AppArch}\plugins\Popup.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: resources\popup; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\mTextControl.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: resources\popup; AfterInstall: AddDetails;
 ; resources\smileys
Source: {#AppArch}\plugins\SmileyAdd.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\smileys\flash\*; DestDir: {app}\skins\smileys\flash; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\smileys\_dark\emoji\*; DestDir: {app}\skins\smileys\_dark\emoji; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\emoji\*; DestDir: {app}\skins\smileys\_light\emoji; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\smileys\_dark\kolobok\*; DestDir: {app}\skins\smileys\_dark\kolobok; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\kolobok\*; DestDir: {app}\skins\smileys\_light\kolobok; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\smileys; AfterInstall: AddDetails;
Source: x86\skins\smileys\emoji\*; DestDir: {app}\skins\smileys\emoji; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\smileys; AfterInstall: AddDetails;
 ; resources\smileys\big_pack emoji
Source: x86\skins\smileys\_dark\emoji\emoji_big_pack.msl; DestDir: {app}\skins\smileys\_dark\emoji; DestName: emoji.msl; Flags: ignoreversion; Components: resources\smileys\big_pack; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\emoji\emoji_big_pack.msl; DestDir: {app}\skins\smileys\_light\emoji; DestName: emoji.msl; Flags: ignoreversion; Components: resources\smileys\big_pack; AfterInstall: AddDetails;
 ; resources\smileys\small_pack emoji
Source: x86\skins\smileys\_dark\emoji\emoji_small_pack.msl; DestDir: {app}\skins\smileys\_dark\emoji; DestName: emoji.msl; Flags: ignoreversion; Components: resources\smileys\small_pack; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\emoji\emoji_small_pack.msl; DestDir: {app}\skins\smileys\_light\emoji; DestName: emoji.msl; Flags: ignoreversion; Components: resources\smileys\small_pack; AfterInstall: AddDetails;
 ; resources\smileys\big_pack kolobok
Source: x86\skins\smileys\_dark\kolobok\kolobok_big_pack.msl; DestDir: {app}\skins\smileys\_dark\kolobok; DestName: kolobok.msl; Flags: ignoreversion; Components: resources\smileys\big_pack; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\kolobok\kolobok_big_pack.msl; DestDir: {app}\skins\smileys\_light\kolobok; DestName: kolobok.msl; Flags: ignoreversion; Components: resources\smileys\big_pack; AfterInstall: AddDetails;
 ; resources\smileys\small_pack kolobok
Source: x86\skins\smileys\_dark\kolobok\kolobok_small_pack.msl; DestDir: {app}\skins\smileys\_dark\kolobok; DestName: kolobok.msl; Flags: ignoreversion; Components: resources\smileys\small_pack; AfterInstall: AddDetails;
Source: x86\skins\smileys\_light\kolobok\kolobok_small_pack.msl; DestDir: {app}\skins\smileys\_light\kolobok; DestName: kolobok.msl; Flags: ignoreversion; Components: resources\smileys\small_pack; AfterInstall: AddDetails;
 ; resources\sounds
Source: {#AppArch}\plugins\BASS_interface.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: {#AppArch}\plugins\bass\bass.dll; DestDir: {app}\plugins\bass; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
;Source: x86\skins\sounds\*.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\add.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\back.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\change.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\del.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\error.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\event.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\file.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\global.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\in.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\notification.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\out.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\press.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\read.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\request.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\typing.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\url.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
 ;
Source: x86\skins\sounds\calling.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\denied.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\reminders.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
Source: x86\skins\sounds\stop.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds; AfterInstall: AddDetails;
 ; resources\splashscreen
Source: {#AppArch}\plugins\SplashScreen.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: resources\splashscreen; AfterInstall: AddDetails;
Source: x86\skins\splash\HotSplash0.png; DestDir: {app}\skins\splash; Flags: ignoreversion; Components: resources\splashscreen; AfterInstall: AddDetails;
Source: x86\skins\splash\HotSplash1.png; DestDir: {app}\skins\splash; Flags: ignoreversion; Components: resources\splashscreen; AfterInstall: AddDetails;
Source: x86\skins\splash\HotSplash2.png; DestDir: {app}\skins\splash; Flags: ignoreversion; Components: resources\splashscreen; AfterInstall: AddDetails;
Source: x86\skins\splash\HotSplash3.png; DestDir: {app}\skins\splash; Flags: ignoreversion; Components: resources\splashscreen; AfterInstall: AddDetails;
Source: x86\skins\splash\HotSplash4.png; DestDir: {app}\skins\splash; Flags: ignoreversion; Components: resources\splashscreen; AfterInstall: AddDetails;
Source: x86\skins\splash\HotSplash5en.png; DestDir: {app}\skins\splash; DestName: HotSplash5.png; Languages: en; Flags: ignoreversion; Components: resources\splashscreen; AfterInstall: AddDetails;
Source: x86\skins\splash\HotSplash5ru.png; DestDir: {app}\skins\splash; DestName: HotSplash5.png; Languages: ru; Flags: ignoreversion; Components: resources\splashscreen; AfterInstall: AddDetails;
Source: x86\skins\sounds\startup.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\splashscreen and resources\sounds; AfterInstall: AddDetails;
 ; resources\tipper
Source: {#AppArch}\plugins\Tipper.dll; DestDir: {app}\plugins; Flags: ignoreversion; Components: resources\tipper; AfterInstall: AddDetails;
 ; resources\themes
#define public i 2
#sub AddTheme
Source: x86\skins\clist_modern\{#theme[i]}\*; DestDir: {app}\skins\clist_modern\{#theme[i]}; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\{#theme[i]}; AfterInstall: AddDetails;
Source: x86\skins\clist_modern\{#theme[i]}.msf; DestDir: {app}\skins\clist_modern; Flags: ignoreversion; Components: resources\themes\{#theme[i]}; AfterInstall: AddDetails;
Source: x86\skins\tabsrmm\{#theme[i]}\*; DestDir: {app}\skins\tabsrmm\{#theme[i]}; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\{#theme[i]}; AfterInstall: AddDetails;
Source: x86\skins\tipper\{#theme[i]}\*; DestDir: {app}\skins\tipper\{#theme[i]}; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: resources\themes\{#theme[i]} and resources\tipper; AfterInstall: AddDetails;
Source: x86\skins\popup\{#theme[i]}\*; DestDir: {app}\skins\popup\{#theme[i]}; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: resources\themes\{#theme[i]} and resources\popup; AfterInstall: AddDetails;
Source: x86\skins\{#theme[i]}.ini; DestDir: {app}\skins; Flags: ignoreversion; Components: resources\themes\{#theme[i]}; AfterInstall: AddDetails;
Source: x86\skins\ieview\styles\{#theme[i]}\*; DestDir: {app}\skins\ieview\styles\{#theme[i]}; Flags: ignoreversion; Components: resources\themes\{#theme[i]} and resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\styles\{#theme[i]}.css; DestDir: {app}\skins\ieview\styles; Flags: ignoreversion; Components: resources\themes\{#theme[i]} and resources\ieview; AfterInstall: AddDetails;
Source: x86\skins\ieview\{#theme[i]}.ivt; DestDir: {app}\skins\ieview; Flags: ignoreversion; Components: resources\themes\{#theme[i]} and resources\ieview; AfterInstall: AddDetails;
#endsub
#for {i = 2; i < 14; i++} AddTheme
;Source: x86\skins\ieview\!tools\other\config.js; DestDir: {app}\skins\ieview; Flags: ignoreversion; Components: resources\ieview; BeforeInstall: AddDetails; AfterInstall: IEViewConfig

 ; copy autoexec_skin.ini for clean installation
#if AppSkinUp == "0"
Source: x86\skins\defaultmirl.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Check: IsStyleChecked('SkinDefaultMirLight') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\defaultwinl.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Check: IsStyleChecked('SkinDefaultWinLight') and not IsUpdate; AfterInstall: AddDetails;
;Source: x86\skins\diplomatd.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\diplomatd; Check: IsStyleChecked('SkinDiplomatDark') and not IsUpdate; AfterInstall: AddDetails;
;Source: x86\skins\diplomatl.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\diplomatl; Check: IsStyleChecked('SkinDiplomatLight') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\glamourd.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\glamourd; Check: IsStyleChecked('SkinGlamourDark') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\glamourl.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\glamourl; Check: IsStyleChecked('SkinGlamourLight') and not IsUpdate; AfterInstall: AddDetails;
;Source: x86\skins\goldtimed.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\goldtimed; Check: IsStyleChecked('SkinGoldtimeDark') and not IsUpdate; AfterInstall: AddDetails;
;Source: x86\skins\goldtimel.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\goldtimel; Check: IsStyleChecked('SkinGoldtimeLight') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\graphited.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\graphited; Check: IsStyleChecked('SkinGraphiteDark') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\graphitel.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\graphitel; Check: IsStyleChecked('SkinGraphiteLight') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\photooned.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\photooned; Check: IsStyleChecked('SkinPhotooneDark') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\photoonel.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\photoonel; Check: IsStyleChecked('SkinPhotooneLight') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\surfaceb.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\surfaceb; Check: IsStyleChecked('SkinSurfaceBlack') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\surfacew.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\surfacew; Check: IsStyleChecked('SkinSurfaceWhite') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\textolited.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\textolited; Check: IsStyleChecked('SkinTextoliteDark') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\textolitel.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\textolitel; Check: IsStyleChecked('SkinTextoliteLight') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\winstyled.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\winstyled; Check: IsStyleChecked('SkinWinstyleDark') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\skins\winstylel.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\winstylel; Check: IsStyleChecked('SkinWinstyleLight') and not IsUpdate; AfterInstall: AddDetails;
#endif
#if AppSkinUp == "1"
Source: x86\skins\defaultmirl.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Check: IsStyleChecked('SkinDefaultMirLight'); AfterInstall: AddDetails;
Source: x86\skins\defaultwinl.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Check: IsStyleChecked('SkinDefaultWinLight'); AfterInstall: AddDetails;
;Source: x86\skins\diplomatd.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\diplomatd; Check: IsStyleChecked('SkinDiplomatDark'); AfterInstall: AddDetails;
;Source: x86\skins\diplomatl.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\diplomatl; Check: IsStyleChecked('SkinDiplomatLight'); AfterInstall: AddDetails;
Source: x86\skins\glamourd.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\glamourd; Check: IsStyleChecked('SkinGlamourDark'); AfterInstall: AddDetails;
Source: x86\skins\glamourl.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\glamourl; Check: IsStyleChecked('SkinGlamourLight'); AfterInstall: AddDetails;
;Source: x86\skins\goldtimed.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\goldtimed; Check: IsStyleChecked('SkinGoldtimeDark'); AfterInstall: AddDetails;
;Source: x86\skins\goldtimel.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\goldtimel; Check: IsStyleChecked('SkinGoldtimeLight'); AfterInstall: AddDetails;
Source: x86\skins\graphited.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\graphited; Check: IsStyleChecked('SkinGraphiteDark'); AfterInstall: AddDetails;
Source: x86\skins\graphitel.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\graphitel; Check: IsStyleChecked('SkinGraphiteLight'); AfterInstall: AddDetails;
Source: x86\skins\photooned.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\photooned; Check: IsStyleChecked('SkinPhotooneDark'); AfterInstall: AddDetails;
Source: x86\skins\photoonel.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\photoonel; Check: IsStyleChecked('SkinPhotooneLight'); AfterInstall: AddDetails;
Source: x86\skins\surfaceb.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\surfaceb; Check: IsStyleChecked('SkinSurfaceBlack'); AfterInstall: AddDetails;
Source: x86\skins\surfacew.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\surfacew; Check: IsStyleChecked('SkinSurfaceWhite'); AfterInstall: AddDetails;
Source: x86\skins\textolited.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\textolited; Check: IsStyleChecked('SkinTextoliteDark'); AfterInstall: AddDetails;
Source: x86\skins\textolitel.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\textolitel; Check: IsStyleChecked('SkinTextoliteLight'); AfterInstall: AddDetails;
Source: x86\skins\winstyled.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\winstyled; Check: IsStyleChecked('SkinWinstyleDark'); AfterInstall: AddDetails;
Source: x86\skins\winstylel.ini; DestDir: {app}\profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Components: resources\themes\winstylel; Check: IsStyleChecked('SkinWinstyleLight'); AfterInstall: AddDetails;
#endif
#endif

[Components]
#if fulltype == 0
 ; core
Name: maincore; Description: {code:ComponentsHelper|CoreFiles}; Types: minimal optimal advanced custom; Flags: fixed disablenouninstallwarning;

 ; protocols
Name: protocols; Description: {code:ComponentsHelper|Protocols}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: protocols\aim; Description: {code:ComponentsHelper|ProtocolsAIM}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\facebook; Description: {code:ComponentsHelper|ProtocolsFacebook}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\gg; Description: {code:ComponentsHelper|ProtocolsGG}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\icq; Description: {code:ComponentsHelper|ProtocolsDefICQ}; Types: minimal optimal advanced custom; Flags: collapsed disablenouninstallwarning;
Name: protocols\icq\icq; Description: {code:ComponentsHelper|ProtocolsDefICQ1}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: protocols\icq\icq2; Description: {code:ComponentsHelper|ProtocolsDefICQ2}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\icq\icq3; Description: {code:ComponentsHelper|ProtocolsDefICQ3}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\icq\icq4; Description: {code:ComponentsHelper|ProtocolsDefICQ4}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\icq\icq5; Description: {code:ComponentsHelper|ProtocolsDefICQ5}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\irc; Description: {code:ComponentsHelper|ProtocolsIRC}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\jabber; Description: {code:ComponentsHelper|ProtocolsJabber}; Types: minimal optimal advanced custom; Flags: collapsed disablenouninstallwarning;
Name: protocols\jabber\gmail; Description: {code:ComponentsHelper|ProtocolsJabberGMail}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\jabber\google; Description: {code:ComponentsHelper|ProtocolsJabberGoogle}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\jabber\gtalk; Description: {code:ComponentsHelper|ProtocolsJabberGTalk}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\jabber\hangouts; Description: {code:ComponentsHelper|ProtocolsJabberHangouts}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\jabber\jabber; Description: {code:ComponentsHelper|ProtocolsJabberJabber}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: protocols\jabber\jabberru; Description: {code:ComponentsHelper|ProtocolsJabberJabberru}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\jabber\lj; Description: {code:ComponentsHelper|ProtocolsJabberLJ}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\jabber\ok; Description: {code:ComponentsHelper|ProtocolsJabberOK}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\jabber\xmpp; Description: {code:ComponentsHelper|ProtocolsJabberXMPP}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
;Name: protocols\jabber\yandex; Description: {code:ComponentsHelper|ProtocolsJabberYandex}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\mra; Description: {code:ComponentsHelper|ProtocolsMRA}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\msn; Description: {code:ComponentsHelper|ProtocolsMSN}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\skype; Description: {code:ComponentsHelper|ProtocolsSkype}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: protocols\tox; Description: {code:ComponentsHelper|ProtocolsTox}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\twitter; Description: {code:ComponentsHelper|ProtocolsTwitter}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\vkontakte; Description: {code:ComponentsHelper|ProtocolsVKontakte}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
;Name: protocols\whatsapp; Description: {code:ComponentsHelper|ProtocolsWhatsApp}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
;Name: protocols\yahoo; Description: {code:ComponentsHelper|ProtocolsYAHOO}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\other; Description: {code:ComponentsHelper|ProtocolsOther}; Types: minimal optimal advanced custom; Flags: collapsed disablenouninstallwarning;
;Name: protocols\other\metacontacts; Description: {code:ComponentsHelper|ProtocolsOtherMetaContacts}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: protocols\other\dropbox; Description: {code:ComponentsHelper|ProtocolsOtherDropbox}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\other\mradio; Description: {code:ComponentsHelper|ProtocolsOthermRadio}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\other\newsaggregator; Description: {code:ComponentsHelper|ProtocolsOtherNewsAggregator}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\other\quotes; Description: {code:ComponentsHelper|ProtocolsOtherQuotes}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\other\weather; Description: {code:ComponentsHelper|ProtocolsOtherWeather}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: protocols\other\yamn; Description: {code:ComponentsHelper|ProtocolsOtherYAMN}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;

 ; plugins
Name: plugins; Description: {code:ComponentsHelper|PluginsFiles}; Types: minimal optimal advanced custom; Flags: collapsed disablenouninstallwarning;
Name: plugins\authstate; Description: {code:ComponentsHelper|AuthState}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: plugins\bosskey; Description: {code:ComponentsHelper|BossKey}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: plugins\buddyex; Description: {code:ComponentsHelper|Buddyex}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: plugins\ckl; Description: {code:ComponentsHelper|CKL}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: plugins\dbeditor; Description: {code:ComponentsHelper|DBEditor}; Types: advanced custom; Flags: disablenouninstallwarning;
;Name: plugins\favcontacts; Description: {code:ComponentsHelper|FavContacts}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: plugins\fingerprint; Description: {code:ComponentsHelper|Fingerprint}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: plugins\flag; Description: {code:ComponentsHelper|Flag}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: plugins\fltcontacts; Description: {code:ComponentsHelper|FltContacts}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: plugins\historypp; Description: {code:ComponentsHelper|Historypp}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: plugins\historysweeperlight; Description: {code:ComponentsHelper|Historysweeperlight}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: plugins\ignorestate; Description: {code:ComponentsHelper|Ignorestate}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
;Name: plugins\keepstatus; Description: {code:ComponentsHelper|Keepstatus}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: plugins\keyboardnotify; Description: {code:ComponentsHelper|Keybrdnotify}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: plugins\listeningto; Description: {code:ComponentsHelper|Listeningto}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
;Name: plugins\modernopt; Description: {code:ComponentsHelper|Modernopt}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: plugins\newxstatusnotify; Description: {code:ComponentsHelper|Newxstatusnotify}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: plugins\quickmessages; Description: {code:ComponentsHelper|Quickmessages}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: plugins\quicksearch; Description: {code:ComponentsHelper|Quicksearch}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: plugins\mirotr; Description: {code:ComponentsHelper|MirOTR}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: plugins\secureim; Description: {code:ComponentsHelper|Secureim}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: plugins\sessions; Description: {code:ComponentsHelper|Sessions}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: plugins\schecker; Description: {code:ComponentsHelper|SpellChecker}; Types: advanced custom; Flags: disablenouninstallwarning;
;Name: plugins\startupstatus; Description: {code:ComponentsHelper|Startupstatus}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: plugins\stopspam; Description: {code:ComponentsHelper|Stopspam}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: plugins\uinfoex; Description: {code:ComponentsHelper|Uinfoex}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: plugins\birthday; Description: {code:ComponentsHelper|Birthday}; Types: advanced custom; Flags: disablenouninstallwarning;

 ; resources
Name: resources; Description: {code:ComponentsHelper|Resources}; Types: minimal optimal advanced custom; Flags: collapsed disablenouninstallwarning;
Name: resources\ieview; Description: {code:ComponentsHelper|IEView}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: resources\popup; Description: {code:ComponentsHelper|PopUp}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\smileys; Description: {code:ComponentsHelper|Smileys}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\smileys\big_pack; Description: {code:ComponentsHelper|SmileysBigPack}; Flags: exclusive disablenouninstallwarning;
Name: resources\smileys\small_pack; Description: {code:ComponentsHelper|SmileysSmallPack}; Types: minimal optimal advanced custom; Flags: exclusive disablenouninstallwarning;
Name: resources\sounds; Description: {code:ComponentsHelper|Sounds}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\splashscreen; Description: {code:ComponentsHelper|Splash}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\tipper; Description: {code:ComponentsHelper|Tipper}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes; Description: {code:ComponentsHelper|Themes}; Types: advanced custom; Flags: collapsed disablenouninstallwarning;
;Name: resources\themes\diplomatd; Description: {code:ComponentsHelper|DiplomatDark}; Types: advanced custom; Flags: disablenouninstallwarning;
;Name: resources\themes\diplomatl; Description: {code:ComponentsHelper|DiplomatLight}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\glamourd; Description: {code:ComponentsHelper|GlamourDark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\glamourl; Description: {code:ComponentsHelper|GlamourLight}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
;Name: resources\themes\goldtimed; Description: {code:ComponentsHelper|GoldtimeDark}; Types: advanced custom; Flags: disablenouninstallwarning;
;Name: resources\themes\goldtimel; Description: {code:ComponentsHelper|GoldtimeLight}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\graphited; Description: {code:ComponentsHelper|GraphiteDark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\graphitel; Description: {code:ComponentsHelper|GraphiteLight}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\photooned; Description: {code:ComponentsHelper|PhotooneDark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\photoonel; Description: {code:ComponentsHelper|PhotooneLight}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\surfaceb; Description: {code:ComponentsHelper|SurfaceBlack}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\surfacew; Description: {code:ComponentsHelper|SurfaceWhite}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\textolited; Description: {code:ComponentsHelper|TextoliteDark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\textolitel; Description: {code:ComponentsHelper|TextoliteLight}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\winstyled; Description: {code:ComponentsHelper|WinstyleDark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: resources\themes\winstylel; Description: {code:ComponentsHelper|WinstyleLight}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
#endif

#if fulltype == 1
 ; core
Name: maincore; Description: {code:ComponentsHelper|CoreFiles}; Types: minimal optimal advanced full custom; Flags: fixed disablenouninstallwarning;

 ; protocols
Name: protocols; Description: {code:ComponentsHelper|Protocols}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: protocols\aim; Description: {code:ComponentsHelper|ProtocolsAIM}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\facebook; Description: {code:ComponentsHelper|ProtocolsFacebook}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\gg; Description: {code:ComponentsHelper|ProtocolsGG}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\icq; Description: {code:ComponentsHelper|ProtocolsDefICQ}; Types: minimal optimal advanced full custom; Flags: collapsed disablenouninstallwarning;
Name: protocols\icq\icq; Description: {code:ComponentsHelper|ProtocolsDefICQ1}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: protocols\icq\icq2; Description: {code:ComponentsHelper|ProtocolsDefICQ2}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\icq\icq3; Description: {code:ComponentsHelper|ProtocolsDefICQ3}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\icq\icq4; Description: {code:ComponentsHelper|ProtocolsDefICQ4}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\icq\icq5; Description: {code:ComponentsHelper|ProtocolsDefICQ5}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\irc; Description: {code:ComponentsHelper|ProtocolsIRC}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\jabber; Description: {code:ComponentsHelper|ProtocolsJabber}; Types: minimal optimal advanced full custom; Flags: collapsed disablenouninstallwarning;
Name: protocols\jabber\gmail; Description: {code:ComponentsHelper|ProtocolsJabberGMail}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\jabber\google; Description: {code:ComponentsHelper|ProtocolsJabberGoogle}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\jabber\gtalk; Description: {code:ComponentsHelper|ProtocolsJabberGTalk}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\jabber\hangouts; Description: {code:ComponentsHelper|ProtocolsJabberHangouts}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\jabber\jabber; Description: {code:ComponentsHelper|ProtocolsJabberJabber}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: protocols\jabber\jabberru; Description: {code:ComponentsHelper|ProtocolsJabberJabberru}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\jabber\lj; Description: {code:ComponentsHelper|ProtocolsJabberLJ}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\jabber\ok; Description: {code:ComponentsHelper|ProtocolsJabberOK}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\jabber\xmpp; Description: {code:ComponentsHelper|ProtocolsJabberXMPP}; Types: full custom; Flags: disablenouninstallwarning;
;Name: protocols\jabber\yandex; Description: {code:ComponentsHelper|ProtocolsJabberYandex}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\mra; Description: {code:ComponentsHelper|ProtocolsMRA}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\msn; Description: {code:ComponentsHelper|ProtocolsMSN}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\skype; Description: {code:ComponentsHelper|ProtocolsSkype}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: protocols\tox; Description: {code:ComponentsHelper|ProtocolsTox}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\twitter; Description: {code:ComponentsHelper|ProtocolsTwitter}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\vkontakte; Description: {code:ComponentsHelper|ProtocolsVKontakte}; Types: full custom; Flags: disablenouninstallwarning;
;Name: protocols\whatsapp; Description: {code:ComponentsHelper|ProtocolsWhatsApp}; Types: full custom; Flags: disablenouninstallwarning;
;Name: protocols\yahoo; Description: {code:ComponentsHelper|ProtocolsYAHOO}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\other; Description: {code:ComponentsHelper|ProtocolsOther}; Types: minimal optimal advanced full custom; Flags: collapsed disablenouninstallwarning;
;Name: protocols\other\metacontacts; Description: {code:ComponentsHelper|ProtocolsOtherMetaContacts}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: protocols\other\dropbox; Description: {code:ComponentsHelper|ProtocolsOtherDropbox}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\other\mradio; Description: {code:ComponentsHelper|ProtocolsOthermRadio}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\other\newsaggregator; Description: {code:ComponentsHelper|ProtocolsOtherNewsAggregator}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\other\quotes; Description: {code:ComponentsHelper|ProtocolsOtherQuotes}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\other\weather; Description: {code:ComponentsHelper|ProtocolsOtherWeather}; Types: full custom; Flags: disablenouninstallwarning;
Name: protocols\other\yamn; Description: {code:ComponentsHelper|ProtocolsOtherYAMN}; Types: full custom; Flags: disablenouninstallwarning;

 ; plugins
Name: plugins; Description: {code:ComponentsHelper|PluginsFiles}; Types: minimal optimal advanced full custom; Flags: collapsed disablenouninstallwarning;
Name: plugins\authstate; Description: {code:ComponentsHelper|AuthState}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\bosskey; Description: {code:ComponentsHelper|BossKey}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\buddyex; Description: {code:ComponentsHelper|Buddyex}; Types: full custom; Flags: disablenouninstallwarning;
Name: plugins\ckl; Description: {code:ComponentsHelper|CKL}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\dbeditor; Description: {code:ComponentsHelper|DBEditor}; Types: advanced full custom; Flags: disablenouninstallwarning;
;Name: plugins\favcontacts; Description: {code:ComponentsHelper|FavContacts}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\fingerprint; Description: {code:ComponentsHelper|Fingerprint}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\flag; Description: {code:ComponentsHelper|Flag}; Types: full custom; Flags: disablenouninstallwarning;
Name: plugins\fltcontacts; Description: {code:ComponentsHelper|FltContacts}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\historypp; Description: {code:ComponentsHelper|Historypp}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\historysweeperlight; Description: {code:ComponentsHelper|Historysweeperlight}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\ignorestate; Description: {code:ComponentsHelper|Ignorestate}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
;Name: plugins\keepstatus; Description: {code:ComponentsHelper|Keepstatus}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\keyboardnotify; Description: {code:ComponentsHelper|Keybrdnotify}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\listeningto; Description: {code:ComponentsHelper|Listeningto}; Types: full custom; Flags: disablenouninstallwarning;
;Name: plugins\modernopt; Description: {code:ComponentsHelper|Modernopt}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\newxstatusnotify; Description: {code:ComponentsHelper|Newxstatusnotify}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\quickmessages; Description: {code:ComponentsHelper|Quickmessages}; Types: full custom; Flags: disablenouninstallwarning;
Name: plugins\quicksearch; Description: {code:ComponentsHelper|Quicksearch}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\mirotr; Description: {code:ComponentsHelper|MirOTR}; Types: full custom; Flags: disablenouninstallwarning;
Name: plugins\secureim; Description: {code:ComponentsHelper|Secureim}; Types: full custom; Flags: disablenouninstallwarning;
Name: plugins\sessions; Description: {code:ComponentsHelper|Sessions}; Types: full custom; Flags: disablenouninstallwarning;
Name: plugins\schecker; Description: {code:ComponentsHelper|SpellChecker}; Types: advanced full custom; Flags: disablenouninstallwarning;
;Name: plugins\startupstatus; Description: {code:ComponentsHelper|Startupstatus}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\stopspam; Description: {code:ComponentsHelper|Stopspam}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\uinfoex; Description: {code:ComponentsHelper|Uinfoex}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: plugins\birthday; Description: {code:ComponentsHelper|Birthday}; Types: advanced full custom; Flags: disablenouninstallwarning;

 ; resources
Name: resources; Description: {code:ComponentsHelper|Resources}; Types: minimal optimal advanced full custom; Flags: collapsed disablenouninstallwarning;
Name: resources\ieview; Description: {code:ComponentsHelper|IEView}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: resources\popup; Description: {code:ComponentsHelper|PopUp}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\smileys; Description: {code:ComponentsHelper|Smileys}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\smileys\big_pack; Description: {code:ComponentsHelper|SmileysBigPack}; Flags: exclusive disablenouninstallwarning;
Name: resources\smileys\small_pack; Description: {code:ComponentsHelper|SmileysSmallPack}; Types: minimal optimal advanced full custom; Flags: exclusive disablenouninstallwarning;
Name: resources\sounds; Description: {code:ComponentsHelper|Sounds}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\splashscreen; Description: {code:ComponentsHelper|Splash}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\tipper; Description: {code:ComponentsHelper|Tipper}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes; Description: {code:ComponentsHelper|Themes}; Types: advanced full custom; Flags: collapsed disablenouninstallwarning;
;Name: resources\themes\diplomatd; Description: {code:ComponentsHelper|DiplomatDark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
;Name: resources\themes\diplomatl; Description: {code:ComponentsHelper|DiplomatLight}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\glamourd; Description: {code:ComponentsHelper|GlamourDark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\glamourl; Description: {code:ComponentsHelper|GlamourLight}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
;Name: resources\themes\goldtimed; Description: {code:ComponentsHelper|GoldtimeDark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
;Name: resources\themes\goldtimel; Description: {code:ComponentsHelper|GoldtimeLight}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\graphited; Description: {code:ComponentsHelper|GraphiteDark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\graphitel; Description: {code:ComponentsHelper|GraphiteLight}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\photooned; Description: {code:ComponentsHelper|PhotooneDark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\photoonel; Description: {code:ComponentsHelper|PhotooneLight}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\surfaceb; Description: {code:ComponentsHelper|SurfaceBlack}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\surfacew; Description: {code:ComponentsHelper|SurfaceWhite}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\textolited; Description: {code:ComponentsHelper|TextoliteDark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\textolitel; Description: {code:ComponentsHelper|TextoliteLight}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\winstyled; Description: {code:ComponentsHelper|WinstyleDark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: resources\themes\winstylel; Description: {code:ComponentsHelper|WinstyleLight}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
#endif

[Tasks]
Name: alluser; Description: {code:TasksHelper|ForAllComputerUsers}; GroupDescription: {cm:CreateShortcut}; Flags: exclusive; Check: IsDefaultSetupType;
Name: curuser; Description: {code:TasksHelper|OnlyForTheCurrentUser}; GroupDescription: {cm:CreateShortcut}; Flags: exclusive unchecked; Check: IsDefaultSetupType;
Name: curuser; Description: {code:TasksHelper|OnlyForTheCurrentUser}; GroupDescription: {cm:CreateShortcut}; Flags: exclusive; Check: IsPortableSetupType;
Name: desktopicon; Description: {code:TasksHelper|CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Check: IsDefaultSetupType;
Name: desktopicon; Description: {code:TasksHelper|CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; Check: IsPortableSetupType;
Name: quicklaunchicon; Description: {code:TasksHelper|CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 0,6.1;
Name: pintotaskbar; Description: {code:TasksHelper|PinToTaskbarIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; MinVersion: 0,6.1;
Name: pintostartmenu; Description: {code:TasksHelper|PinToStartMenuIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked;
Name: autorun; Description: {code:TasksHelper|CreateAutorunIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked;

[Icons]
 ; allusers
Name: {group}\{#AppLnk}; Filename: {app}\{#AppExeName}; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:Dbtool}; Filename: {app}\{#AppExeName}; Parameters: /svc:dbchecker; IconFilename: {app}\plugins\DbChecker.dll; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:Homepage}; Filename: {cm:AppURL}; Tasks: alluser; Check: not WizardNoIcons;
;Name: {group}\{cm:SupportWiki}; Filename: {cm:AppURLWiki}; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:SupportMNG}; Filename: {cm:AppURLMNG}; Tasks: alluser; Check: not WizardNoIcons;
;Name: {group}\{cm:SupportMP}; Filename: {cm:AppURLMP}; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:SupportBlog}; Filename: {cm:AppSupportBlogURL}; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:SupportFaq}; Filename: {cm:AppFaqURL}; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:Uninstall}; Filename: {uninstallexe}; Tasks: alluser; Check: not WizardNoIcons;
Name: {commondesktop}\{#AppName}; Filename: {app}\{#AppExeName}; Tasks: alluser and desktopicon;
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}; Filename: {app}\{#AppExeName}; Tasks: alluser and quicklaunchicon; AfterInstall: CreateQLShortcuts;
Name: {commonstartup}\{#AppLnk}; Filename: {app}\{#AppExeName}; Tasks: alluser and autorun;
 ; current user
Name: {userprograms}\{code:ExtractFileName|{group}}\{#AppLnk}; Filename: {app}\{#AppExeName}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:Dbtool}; Filename: {app}\{#AppExeName}; Parameters: /svc:dbchecker; IconFilename: {app}\plugins\DbChecker.dll; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:Homepage}; Filename: {cm:AppURL}; Tasks: curuser; Check: not WizardNoIcons;
;Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:SupportWiki}; Filename: {cm:AppURLWiki}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:SupportMNG}; Filename: {cm:AppURLMNG}; Tasks: curuser; Check: not WizardNoIcons;
;Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:SupportMP}; Filename: {cm:AppURLMP}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:SupportBlog}; Filename: {cm:AppSupportBlogURL}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:SupportFaq}; Filename: {cm:AppFaqURL}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:Uninstall}; Filename: {uninstallexe}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userdesktop}\{#AppName}; Filename: {app}\{#AppExeName}; Tasks: curuser and desktopicon;
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}; Filename: {app}\{#AppExeName}; Tasks: curuser and quicklaunchicon;
Name: {userstartup}\{#AppLnk}; Filename: {app}\{#AppExeName}; Tasks: curuser and autorun;

[Run]
; patcher
Filename: {app}\skins\icons\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Fugue /SILENT"; Flags: runhidden; Check: IsStyleChecked('IconsFugue');
Filename: {app}\skins\icons\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Fugue_HotCoffee /VERYSILENT"; Flags: runhidden; Check: IsStyleChecked('IconsFugue');
Filename: {app}\skins\icons\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Nova /SILENT"; Flags: runhidden; Check: IsStyleChecked('IconsNova');
Filename: {app}\skins\icons\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Nova_HotCoffee /VERYSILENT"; Flags: runhidden; Check: IsStyleChecked('IconsNova');
;Filename: {app}\skins\icons\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Xpk /SILENT"; Flags: runhidden; Check: IsStyleChecked('IconsXpk');
;Filename: {app}\skins\icons\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Xpk_HotCoffee /VERYSILENT"; Flags: runhidden; Check: IsStyleChecked('IconsXpk');
; postinstall
Filename: {app}\{#AppExeName}; Description: {cm:LaunchProgram,{#AppName}}; Flags: nowait postinstall runascurrentuser skipifsilent;
Filename: {cm:AppURL}; Description: {cm:AppURLOpen}; Flags: nowait postinstall skipifsilent shellexec unchecked;
;Filename: {cm:AppURLWiki}; Description: {cm:AppURLWikiOpen}; Flags: nowait postinstall skipifsilent shellexec unchecked;
Filename: {cm:AppURLMNG}; Description: {cm:AppURLMNGOpen}; Flags: nowait postinstall skipifsilent shellexec;
;Filename: {cm:AppURLMP}; Description: {cm:AppURLMPOpen}; Flags: nowait postinstall skipifsilent shellexec unchecked;
Filename: {cm:AppSupportBlogURL}; Description: {cm:AppSupportBlogURLOpen}; Flags: nowait postinstall skipifsilent shellexec unchecked;
Filename: {cm:AppFaqURL}; Description: {cm:AppFaqURLOpen}; Flags: nowait postinstall skipifsilent shellexec unchecked;

[Registry]
 ; allusers
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppExeName}; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Check: IsRunAsAdmin
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {group}\{#AppLnk}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: alluser; Check: not WizardNoIcons and IsRunAsAdmin
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {commondesktop}\{#AppName}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: alluser and desktopicon; Check: IsRunAsAdmin
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: alluser and quicklaunchicon; Check: IsRunAsAdmin
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {commonstartup}\{#AppLnk}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: alluser and autorun; Check: IsRunAsAdmin
 ; current user
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppExeName}; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Check: IsRunAsAdmin
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {userprograms}\{code:ExtractFileName|{group}}\{#AppLnk}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: curuser; Check: not WizardNoIcons and IsRunAsAdmin
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {userdesktop}\{#AppName}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: curuser and desktopicon; Check: IsRunAsAdmin
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: curuser and quicklaunchicon; Check: IsRunAsAdmin
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {userstartup}\{#AppLnk}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: curuser and autorun; Check: IsRunAsAdmin

#define DarkSkin "IsStyleChecked('SkinGlamourDark') or IsStyleChecked('SkinGraphiteDark') or IsStyleChecked('SkinPhotooneDark') or IsStyleChecked('SkinSurfaceBlack') or IsStyleChecked('SkinTextoliteDark') or IsStyleChecked('SkinWinstyleDark')"
#define LightSkin "IsStyleChecked('SkinDefaultMirLight') or IsStyleChecked('SkinDefaultWinLight') or IsStyleChecked('SkinGlamourLight') or IsStyleChecked('SkinGraphiteLight') or IsStyleChecked('SkinPhotooneLight') or IsStyleChecked('SkinSurfaceWhite') or IsStyleChecked('SkinTextoliteLight') or IsStyleChecked('SkinWinstyleLight')"

[INI]
Filename: {app}\mirandaboot.ini; Section: Database; Key: ProfileDir; String: {#AppProfile}\profiles; Check: IsDefaultSetupType;
Filename: {app}\mirandaboot.ini; Section: Language; Key: DefaultLanguage; String: langpack_russian.txt; Languages: ru;
 ; settings.ini
Filename: {app}\profiles\settings.ini; Section: Langpack; Key: Current; String: udefault; Languages: en;
Filename: {app}\profiles\settings.ini; Section: Langpack; Key: Current; String: ulangpack_russian.txt; Languages: ru;
 ;
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: "Name"; String: u{#AppName};
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Version; String: u{#AppVer} {#AppStatus} {#AppRelease};
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Architecture; String: u{#AppArch};
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: MirVer; String: u{#AppMirVer};
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Production; String: u{#AppPublisher};
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Contacts; String: g\r\ne-mail: {#AppContacts}\r\njid: hotcoffee@xmpp.ru;
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: ReleaseDate; String: u{#GetDateTimeString("dd.mm.yyyy", "", "")};
Filename: {app}\profiles\settings.ini; Section: PackUpdater; Key: File_VersionURL; String: uhttp://im-hotcoffee.narod.ru/hotcoffee_{#AppArch}.ini;
Filename: {app}\profiles\settings.ini; Section: PackUpdater; Key: File_1_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\profiles\settings.ini; Section: PackUpdater; Key: File_30_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\profiles\settings.ini; Section: PackUpdater; Key: File_35_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\profiles\settings.ini; Section: CLUIFrames; Key: Height10; String: w{code:GetCLUIFrames|Height10};
Filename: {app}\profiles\settings.ini; Section: CLUIFrames; Key: TBVisile10; String: b{code:GetCLUIFrames|TBVisile10};
Filename: {app}\profiles\settings.ini; Section: CLUI; Key: EqualSections; String: b{code:GetCLUIFrames|EqualSections};
Filename: {app}\profiles\settings.ini; Section: CLUI; Key: StatusBarProtosPerLine; String: b{code:GetCLUIFrames|StatusBarProtosPerLine};
 ; update.ini
Filename: {app}\profiles\update.ini; Section: Langpack; Key: Current; String: udefault; Languages: en;
Filename: {app}\profiles\update.ini; Section: Langpack; Key: Current; String: ulangpack_russian.txt; Languages: ru;
 ;
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: "Name"; String: u{#AppName};
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Version; String: u{#AppVer} {#AppStatus} {#AppRelease};
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Architecture; String: u{#AppArch};
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Production; String: u{#AppPublisher};
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Contacts; String: g\r\ne-mail: {#AppContacts}\r\njid: hotcoffee@xmpp.ru;
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: ReleaseDate; String: u{#GetDateTimeString("dd.mm.yyyy", "", "")};
Filename: {app}\profiles\update.ini; Section: PackUpdater; Key: File_VersionURL; String: uhttp://im-hotcoffee.narod.ru/hotcoffee_{#AppArch}.ini;
Filename: {app}\profiles\update.ini; Section: PackUpdater; Key: File_1_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\profiles\update.ini; Section: PackUpdater; Key: File_30_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\profiles\update.ini; Section: PackUpdater; Key: File_35_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\profiles\update.ini; Section: CLUIFrames; Key: Height10; String: w{code:GetCLUIFrames|Height10};
Filename: {app}\profiles\update.ini; Section: CLUIFrames; Key: TBVisile10; String: b{code:GetCLUIFrames|TBVisile10};
Filename: {app}\profiles\update.ini; Section: CLUI; Key: EqualSections; String: b{code:GetCLUIFrames|EqualSections};
Filename: {app}\profiles\update.ini; Section: CLUI; Key: StatusBarProtosPerLine; String: b{code:GetCLUIFrames|StatusBarProtosPerLine};
 ; autoexec_update.ini
Filename: {app}\profiles\autoexec_update.ini; Section: Langpack; Key: Current; String: udefault; Languages: en; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: Langpack; Key: Current; String: ulangpack_russian.txt; Languages: ru; Check: IsUpdate;
 ;
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: "Name"; String: u{#AppName}; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Version; String: u{#AppVer} {#AppStatus} {#AppRelease}; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Architecture; String: u{#AppArch}; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: MirVer; String: u{#AppMirVer}; Check: IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Production; String: u{#AppPublisher}; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Contacts; String: g\r\ne-mail: {#AppContacts}\r\njid: hotcoffee@xmpp.ru; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: ReleaseDate; String: u{#GetDateTimeString("dd.mm.yyyy", "", "")}; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: PackUpdater; Key: File_VersionURL; String: uhttp://im-hotcoffee.narod.ru/hotcoffee_{#AppArch}.ini; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: PackUpdater; Key: File_1_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")}; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: PackUpdater; Key: File_30_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")}; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: PackUpdater; Key: File_35_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")}; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: CLUIFrames; Key: Height10; String: w{code:GetCLUIFrames|Height10}; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: CLUIFrames; Key: TBVisile10; String: b{code:GetCLUIFrames|TBVisile10}; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: CLUI; Key: EqualSections; String: b{code:GetCLUIFrames|EqualSections}; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: CLUI; Key: StatusBarProtosPerLine; String: b{code:GetCLUIFrames|StatusBarProtosPerLine}; Check: IsUpdate;
 ; protocols\other\newsaggregator
Filename: {app}\profiles\settings.ini; Section: NewsAggregator; Key: AM_BaseProto; String: sNewsAggregator; Flags: uninsdeleteentry; Components: protocols\other\newsaggregator;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 0; String: sNewsAggregator; Flags: uninsdeleteentry; Components: protocols\other\newsaggregator;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 200; String: d0; Flags: uninsdeleteentry; Components: protocols\other\newsaggregator;
 ; protocols\other\quotes
Filename: {app}\profiles\settings.ini; Section: Quotes; Key: AM_BaseProto; String: sQuotes; Flags: uninsdeleteentry; Components: protocols\other\quotes;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 1; String: sQuotes; Flags: uninsdeleteentry; Components: protocols\other\quotes;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 201; String: d1; Flags: uninsdeleteentry; Components: protocols\other\quotes;
 ; protocols\other\weather
Filename: {app}\profiles\settings.ini; Section: Weather; Key: AM_BaseProto; String: sWeather; Flags: uninsdeleteentry; Components: protocols\other\weather;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 2; String: sWeather; Flags: uninsdeleteentry; Components: protocols\other\weather;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 202; String: d2; Flags: uninsdeleteentry; Components: protocols\other\weather;
 ; protocols\other\yamn
Filename: {app}\profiles\settings.ini; Section: YAMN; Key: AM_BaseProto; String: sYAMN; Flags: uninsdeleteentry; Components: protocols\other\yamn;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 3; String: sYAMN; Flags: uninsdeleteentry; Components: protocols\other\yamn;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 203; String: d3; Flags: uninsdeleteentry; Components: protocols\other\yamn;
 ; protocols\aim
Filename: {app}\profiles\settings.ini; Section: AIM; Key: AM_BaseProto; String: sAIM; Flags: uninsdeleteentry; Components: protocols\aim;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 5; String: sAIM; Flags: uninsdeleteentry; Components: protocols\aim;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 205; String: d5; Flags: uninsdeleteentry; Components: protocols\aim;
Filename: {app}\profiles\update.ini; Section: AIM; Key: AM_BaseProto; String: sAIM; Flags: uninsdeleteentry; Components: protocols\aim;
Filename: {app}\profiles\autoexec_update.ini; Section: AIM; Key: AM_BaseProto; String: sAIM; Flags: uninsdeleteentry; Components: protocols\aim; Check: IsUpdate;
 ; protocols\facebook
Filename: {app}\profiles\settings.ini; Section: Facebook; Key: AM_BaseProto; String: sFacebook; Flags: uninsdeleteentry; Components: protocols\facebook;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 8; String: sFacebook; Flags: uninsdeleteentry; Components: protocols\facebook;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 208; String: d8; Flags: uninsdeleteentry; Components: protocols\facebook;
Filename: {app}\profiles\update.ini; Section: Facebook; Key: AM_BaseProto; String: sFacebook; Flags: uninsdeleteentry; Components: protocols\facebook;
Filename: {app}\profiles\autoexec_update.ini; Section: Facebook; Key: AM_BaseProto; String: sFacebook; Flags: uninsdeleteentry; Components: protocols\facebook; Check: IsUpdate;
 ; protocols\gg
Filename: {app}\profiles\settings.ini; Section: GG; Key: AM_BaseProto; String: sGG; Flags: uninsdeleteentry; Components: protocols\gg;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 15; String: sGG; Flags: uninsdeleteentry; Components: protocols\gg;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 215; String: d15; Flags: uninsdeleteentry; Components: protocols\gg;
Filename: {app}\profiles\update.ini; Section: GG; Key: AM_BaseProto; String: sGG; Flags: uninsdeleteentry; Components: protocols\gg;
Filename: {app}\profiles\autoexec_update.ini; Section: GG; Key: AM_BaseProto; String: sGG; Flags: uninsdeleteentry; Components: protocols\gg; Check: IsUpdate;
 ; protocols\jabber\gmail
Filename: {app}\profiles\settings.ini; Section: GMail; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\gmail;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 18; String: sGMail; Flags: uninsdeleteentry; Components: protocols\jabber\gmail;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 218; String: d18; Flags: uninsdeleteentry; Components: protocols\jabber\gmail;
Filename: {app}\profiles\update.ini; Section: GMail; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\gmail;
Filename: {app}\profiles\autoexec_update.ini; Section: GMail; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\gmail; Check: IsUpdate;
 ; protocols\jabber\google
Filename: {app}\profiles\settings.ini; Section: Google; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\google;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 20; String: sGoogle; Flags: uninsdeleteentry; Components: protocols\jabber\google;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 220; String: d20; Flags: uninsdeleteentry; Components: protocols\jabber\google;
Filename: {app}\profiles\update.ini; Section: Google; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\google;
Filename: {app}\profiles\autoexec_update.ini; Section: Google; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\google; Check: IsUpdate;
 ; protocols\jabber\gtalk
Filename: {app}\profiles\settings.ini; Section: GTalk; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\gtalk;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 25; String: sGTalk; Flags: uninsdeleteentry; Components: protocols\jabber\gtalk;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 225; String: d25; Flags: uninsdeleteentry; Components: protocols\jabber\gtalk;
Filename: {app}\profiles\update.ini; Section: GTalk; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\gtalk;
Filename: {app}\profiles\autoexec_update.ini; Section: GTalk; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\gtalk; Check: IsUpdate;
 ; protocols\jabber\hangouts
Filename: {app}\profiles\settings.ini; Section: Hangouts; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\hangouts;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 27; String: sHangouts; Flags: uninsdeleteentry; Components: protocols\jabber\hangouts;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 227; String: d27; Flags: uninsdeleteentry; Components: protocols\jabber\hangouts;
Filename: {app}\profiles\update.ini; Section: Hangouts; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\hangouts;
Filename: {app}\profiles\autoexec_update.ini; Section: Hangouts; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\hangouts; Check: IsUpdate;
 ; protocols\icq\icq
Filename: {app}\profiles\settings.ini; Section: ICQ; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 30; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 230; String: d30; Flags: uninsdeleteentry; Components: protocols\icq\icq;
Filename: {app}\profiles\update.ini; Section: ICQ; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq;
Filename: {app}\profiles\autoexec_update.ini; Section: ICQ; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq; Check: IsUpdate;
 ; protocols\icq\icq2
Filename: {app}\profiles\settings.ini; Section: ICQ2; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq2;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 31; String: sICQ2; Flags: uninsdeleteentry; Components: protocols\icq\icq2;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 231; String: d31; Flags: uninsdeleteentry; Components: protocols\icq\icq2;
Filename: {app}\profiles\update.ini; Section: ICQ2; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq2;
Filename: {app}\profiles\autoexec_update.ini; Section: ICQ2; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq2; Check: IsUpdate;
 ; protocols\icq\icq3
Filename: {app}\profiles\settings.ini; Section: ICQ3; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq3;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 32; String: sICQ3; Flags: uninsdeleteentry; Components: protocols\icq\icq3;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 232; String: d32; Flags: uninsdeleteentry; Components: protocols\icq\icq3;
Filename: {app}\profiles\update.ini; Section: ICQ3; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq3;
Filename: {app}\profiles\autoexec_update.ini; Section: ICQ3; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq3; Check: IsUpdate;
 ; protocols\icq\icq4
Filename: {app}\profiles\settings.ini; Section: ICQ4; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq4;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 33; String: sICQ4; Flags: uninsdeleteentry; Components: protocols\icq\icq4;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 233; String: d33; Flags: uninsdeleteentry; Components: protocols\icq\icq4;
Filename: {app}\profiles\update.ini; Section: ICQ4; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq4;
Filename: {app}\profiles\autoexec_update.ini; Section: ICQ4; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq4; Check: IsUpdate;
 ; protocols\icq\icq5
Filename: {app}\profiles\settings.ini; Section: ICQ5; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq5;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 34; String: sICQ5; Flags: uninsdeleteentry; Components: protocols\icq\icq5;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 234; String: d34; Flags: uninsdeleteentry; Components: protocols\icq\icq5;
Filename: {app}\profiles\update.ini; Section: ICQ5; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq5;
Filename: {app}\profiles\autoexec_update.ini; Section: ICQ5; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq\icq5; Check: IsUpdate;
 ; protocols\irc
Filename: {app}\profiles\settings.ini; Section: IRC; Key: AM_BaseProto; String: sIRC; Flags: uninsdeleteentry; Components: protocols\irc;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 35; String: sIRC; Flags: uninsdeleteentry; Components: protocols\irc;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 235; String: d35; Flags: uninsdeleteentry; Components: protocols\irc;
Filename: {app}\profiles\update.ini; Section: IRC; Key: AM_BaseProto; String: sIRC; Flags: uninsdeleteentry; Components: protocols\irc;
Filename: {app}\profiles\autoexec_update.ini; Section: IRC; Key: AM_BaseProto; String: sIRC; Flags: uninsdeleteentry; Components: protocols\irc; Check: IsUpdate;
 ; protocols\jabber\jabber
Filename: {app}\profiles\settings.ini; Section: Jabber; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\jabber;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 40; String: sJabber; Flags: uninsdeleteentry; Components: protocols\jabber\jabber;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 240; String: d40; Flags: uninsdeleteentry; Components: protocols\jabber\jabber;
Filename: {app}\profiles\update.ini; Section: Jabber; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\jabber;
Filename: {app}\profiles\autoexec_update.ini; Section: Jabber; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\jabber; Check: IsUpdate;
 ; protocols\jabber\jabberru
Filename: {app}\profiles\settings.ini; Section: Jabberru; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\jabberru;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 45; String: sJabberru; Flags: uninsdeleteentry; Components: protocols\jabber\jabberru;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 245; String: d45; Flags: uninsdeleteentry; Components: protocols\jabber\jabberru;
Filename: {app}\profiles\update.ini; Section: Jabberru; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\jabberru;
Filename: {app}\profiles\autoexec_update.ini; Section: Jabberru; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\jabberru; Check: IsUpdate;
 ; protocols\jabber\lj
Filename: {app}\profiles\settings.ini; Section: LJ; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\lj;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 50; String: sLJ; Flags: uninsdeleteentry; Components: protocols\jabber\lj;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 250; String: d50; Flags: uninsdeleteentry; Components: protocols\jabber\lj;
Filename: {app}\profiles\update.ini; Section: LJ; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\lj;
Filename: {app}\profiles\autoexec_update.ini; Section: LJ; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\lj; Check: IsUpdate;
 ; protocols\mra
Filename: {app}\profiles\settings.ini; Section: MRA; Key: AM_BaseProto; String: sMRA; Flags: uninsdeleteentry; Components: protocols\mra;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 55; String: sMRA; Flags: uninsdeleteentry; Components: protocols\mra;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 255; String: d55; Flags: uninsdeleteentry; Components: protocols\mra;
Filename: {app}\profiles\update.ini; Section: MRA; Key: AM_BaseProto; String: sMRA; Flags: uninsdeleteentry; Components: protocols\mra;
Filename: {app}\profiles\autoexec_update.ini; Section: MRA; Key: AM_BaseProto; String: sMRA; Flags: uninsdeleteentry; Components: protocols\mra; Check: IsUpdate;
 ; protocols\msn
Filename: {app}\profiles\settings.ini; Section: MSN; Key: AM_BaseProto; String: sMSN; Flags: uninsdeleteentry; Components: protocols\msn;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 60; String: sMSN; Flags: uninsdeleteentry; Components: protocols\msn;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 260; String: d60; Flags: uninsdeleteentry; Components: protocols\msn;
Filename: {app}\profiles\update.ini; Section: MSN; Key: AM_BaseProto; String: sMSN; Flags: uninsdeleteentry; Components: protocols\msn;
Filename: {app}\profiles\autoexec_update.ini; Section: MSN; Key: AM_BaseProto; String: sMSN; Flags: uninsdeleteentry; Components: protocols\msn; Check: IsUpdate;
 ; protocols\jabber\ok
Filename: {app}\profiles\settings.ini; Section: OK; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\ok;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 70; String: sOK; Flags: uninsdeleteentry; Components: protocols\jabber\ok;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 270; String: d70; Flags: uninsdeleteentry; Components: protocols\jabber\ok;
Filename: {app}\profiles\update.ini; Section: OK; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\ok;
Filename: {app}\profiles\autoexec_update.ini; Section: OK; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\ok; Check: IsUpdate;
 ; protocols\skype
Filename: {app}\profiles\settings.ini; Section: Skype; Key: AM_BaseProto; String: sSKYPE; Flags: uninsdeleteentry; Components: protocols\skype;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 75; String: sSkype; Flags: uninsdeleteentry; Components: protocols\skype;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 275; String: d75; Flags: uninsdeleteentry; Components: protocols\skype;
Filename: {app}\profiles\update.ini; Section: Skype; Key: AM_BaseProto; String: sSKYPE; Flags: uninsdeleteentry; Components: protocols\skype;
Filename: {app}\profiles\autoexec_update.ini; Section: Skype; Key: AM_BaseProto; String: sSKYPE; Flags: uninsdeleteentry; Components: protocols\skype; Check: IsUpdate;
 ; protocols\tox
Filename: {app}\profiles\settings.ini; Section: TOX; Key: AM_BaseProto; String: sTOX; Flags: uninsdeleteentry; Components: protocols\tox;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 78; String: sTOX; Flags: uninsdeleteentry; Components: protocols\tox;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 278; String: d78; Flags: uninsdeleteentry; Components: protocols\tox;
Filename: {app}\profiles\update.ini; Section: TOX; Key: AM_BaseProto; String: sTOX; Flags: uninsdeleteentry; Components: protocols\tox;
Filename: {app}\profiles\autoexec_update.ini; Section: TOX; Key: AM_BaseProto; String: sTOX; Flags: uninsdeleteentry; Components: protocols\tox; Check: IsUpdate;
 ; protocols\twitter
Filename: {app}\profiles\settings.ini; Section: Twitter; Key: AM_BaseProto; String: sTwitter; Flags: uninsdeleteentry; Components: protocols\twitter;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 80; String: sTwitter; Flags: uninsdeleteentry; Components: protocols\twitter;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 280; String: d80; Flags: uninsdeleteentry; Components: protocols\twitter;
Filename: {app}\profiles\update.ini; Section: Twitter; Key: AM_BaseProto; String: sTwitter; Flags: uninsdeleteentry; Components: protocols\twitter;
Filename: {app}\profiles\autoexec_update.ini; Section: Twitter; Key: AM_BaseProto; String: sTwitter; Flags: uninsdeleteentry; Components: protocols\twitter; Check: IsUpdate;
 ; protocols\jabber\xmpp
Filename: {app}\profiles\settings.ini; Section: XMPP; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\xmpp;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 85; String: sXMPP; Flags: uninsdeleteentry; Components: protocols\jabber\xmpp;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 285; String: d85; Flags: uninsdeleteentry; Components: protocols\jabber\xmpp;
Filename: {app}\profiles\update.ini; Section: XMPP; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\xmpp;
Filename: {app}\profiles\autoexec_update.ini; Section: XMPP; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\xmpp; Check: IsUpdate;
 ; protocols\jabber\yandex
;Filename: {app}\profiles\settings.ini; Section: Yandex; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\yandex;
;Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 86; String: sYandex; Flags: uninsdeleteentry; Components: protocols\jabber\yandex;
;Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 286; String: d86; Flags: uninsdeleteentry; Components: protocols\jabber\yandex;
;Filename: {app}\profiles\update.ini; Section: Yandex; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\yandex;
;Filename: {app}\profiles\autoexec_update.ini; Section: Yandex; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\yandex; Check: IsUpdate;
 ; protocols\vkontakte
Filename: {app}\profiles\settings.ini; Section: VKontakte; Key: AM_BaseProto; String: sVKontakte; Flags: uninsdeleteentry; Components: protocols\vkontakte;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 87; String: sVKontakte; Flags: uninsdeleteentry; Components: protocols\vkontakte;
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 287; String: d87; Flags: uninsdeleteentry; Components: protocols\vkontakte;
Filename: {app}\profiles\update.ini; Section: VKontakte; Key: AM_BaseProto; String: sVKontakte; Flags: uninsdeleteentry; Components: protocols\vkontakte;
Filename: {app}\profiles\autoexec_update.ini; Section: VKontakte; Key: AM_BaseProto; String: sVKontakte; Flags: uninsdeleteentry; Components: protocols\vkontakte; Check: IsUpdate;
 ; protocols\whatsapp
;Filename: {app}\profiles\settings.ini; Section: WhatsApp; Key: AM_BaseProto; String: sWhatsApp; Flags: uninsdeleteentry; Components: protocols\whatsapp;
;Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 90; String: sWhatsApp; Flags: uninsdeleteentry; Components: protocols\whatsapp;
;Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 290; String: d90; Flags: uninsdeleteentry; Components: protocols\whatsapp;
;Filename: {app}\profiles\update.ini; Section: WhatsApp; Key: AM_BaseProto; String: sWhatsApp; Flags: uninsdeleteentry; Components: protocols\whatsapp;
;Filename: {app}\profiles\autoexec_update.ini; Section: WhatsApp; Key: AM_BaseProto; String: sWhatsApp; Flags: uninsdeleteentry; Components: protocols\whatsapp; Check: IsUpdate;
 ; protocols\yahoo
;Filename: {app}\profiles\settings.ini; Section: YAHOO; Key: AM_BaseProto; String: sYAHOO; Flags: uninsdeleteentry; Components: protocols\yahoo;
;Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 95; String: sYAHOO; Flags: uninsdeleteentry; Components: protocols\yahoo;
;Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 295; String: d95; Flags: uninsdeleteentry; Components: protocols\yahoo;
;Filename: {app}\profiles\update.ini; Section: YAHOO; Key: AM_BaseProto; String: sYAHOO; Flags: uninsdeleteentry; Components: protocols\yahoo;
;Filename: {app}\profiles\autoexec_update.ini; Section: YAHOO; Key: AM_BaseProto; String: sYAHOO; Flags: uninsdeleteentry; Components: protocols\yahoo; Check: IsUpdate;
 ; plugins\newxstatusnotify
Filename: {app}\profiles\settings.ini; Section: Ignore; Key: Default1; String: d0; Flags: uninsdeleteentry; Components: plugins\newxstatusnotify;
Filename: {app}\profiles\settings.ini; Section: Ignore; Key: Default1; String: d8; Flags: uninsdeleteentry; Components: not plugins\newxstatusnotify;
Filename: {app}\profiles\update.ini; Section: Ignore; Key: Default1; String: d0; Flags: uninsdeleteentry; Components: plugins\newxstatusnotify;
Filename: {app}\profiles\update.ini; Section: Ignore; Key: Default1; String: d8; Flags: uninsdeleteentry; Components: not plugins\newxstatusnotify;
Filename: {app}\profiles\autoexec_update.ini; Section: Ignore; Key: Default1; String: d0; Flags: uninsdeleteentry; Components: plugins\newxstatusnotify; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: Ignore; Key: Default1; String: d8; Flags: uninsdeleteentry; Components: not plugins\newxstatusnotify; Check: IsUpdate;
 ; UserInfoEx RemindEnabled - on
Filename: {app}\profiles\settings.ini; Section: UserInfoEx; Key: RemindEnabled; String: b3; Flags: uninsdeleteentry; Components: (plugins\uinfoex and not plugins\birthday) or not (plugins\uinfoex and plugins\birthday);
Filename: {app}\profiles\update.ini; Section: UserInfoEx; Key: RemindEnabled; String: b3; Flags: uninsdeleteentry; Components: (plugins\uinfoex and not plugins\birthday) or not (plugins\uinfoex and plugins\birthday);
Filename: {app}\profiles\autoexec_update.ini; Section: UserInfoEx; Key: RemindEnabled; String: b3; Flags: uninsdeleteentry; Components: (plugins\uinfoex and not plugins\birthday) or not (plugins\uinfoex and plugins\birthday); Check: IsUpdate;
 ; UserInfoEx RemindEnabled - off
Filename: {app}\profiles\settings.ini; Section: UserInfoEx; Key: RemindEnabled; String: b2; Flags: uninsdeleteentry; Components: plugins\birthday or (plugins\uinfoex and plugins\birthday);
Filename: {app}\profiles\update.ini; Section: UserInfoEx; Key: RemindEnabled; String: b2; Flags: uninsdeleteentry; Components: plugins\birthday or (plugins\uinfoex and plugins\birthday);
Filename: {app}\profiles\autoexec_update.ini; Section: UserInfoEx; Key: RemindEnabled; String: b2; Flags: uninsdeleteentry; Components: plugins\birthday or (plugins\uinfoex and plugins\birthday); Check: IsUpdate;
 ; Tab_SRMsg default
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and not plugins\historypp;
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and not plugins\historypp;
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and not plugins\historypp;
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and not plugins\historypp;
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and not plugins\historypp; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and not plugins\historypp; Check: IsUpdate;
 ; Tab_SRMsg ieview
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_ieview; String: b1; Flags: uninsdeleteentry; Components: (resources\ieview and plugins\historypp) or (resources\ieview and not plugins\historypp);
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: (resources\ieview and plugins\historypp) or (resources\ieview and not plugins\historypp);
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b1; Flags: uninsdeleteentry; Components: (resources\ieview and plugins\historypp) or (resources\ieview and not plugins\historypp);
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: (resources\ieview and plugins\historypp) or (resources\ieview and not plugins\historypp);
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b1; Flags: uninsdeleteentry; Components: (resources\ieview and plugins\historypp) or (resources\ieview and not plugins\historypp); Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: (resources\ieview and plugins\historypp) or (resources\ieview and not plugins\historypp); Check: IsUpdate;
 ; Tab_SRMsg history++
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and plugins\historypp;
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_hpp; String: b1; Flags: uninsdeleteentry; Components: not resources\ieview and plugins\historypp;
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and plugins\historypp;
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b1; Flags: uninsdeleteentry; Components: not resources\ieview and plugins\historypp;
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and plugins\historypp; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b1; Flags: uninsdeleteentry; Components: not resources\ieview and plugins\historypp; Check: IsUpdate;

 ; defaultmirl
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: udefaultmirl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDefaultMirLight');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: udefaultmirl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDefaultMirLight');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: udefaultmirl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDefaultMirLight') and IsUpdate;

 ; defaultwinl
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: udefaultwinl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDefaultWinLight');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: udefaultwinl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDefaultWinLight');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: udefaultwinl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDefaultWinLight') and IsUpdate;

 ; diplomatd
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: udiplomatd; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDiplomatDark');
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: udiplomatd; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDiplomatDark');
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: udiplomatd; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDiplomatDark') and IsUpdate;

 ; diplomatl
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: udiplomatl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDiplomatLight');
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: udiplomatl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDiplomatLight');
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: udiplomatl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinDiplomatLight') and IsUpdate;

 ; glamourd
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: uglamourd; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGlamourDark');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: uglamourd; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGlamourDark');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: uglamourd; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGlamourDark') and IsUpdate;

 ; glamourl
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: uglamourl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGlamourLight');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: uglamourl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGlamourLight');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: uglamourl; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGlamourLight') and IsUpdate;

 ; goldtimed
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: ugoldtimed; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGoldtimeDark');
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: ugoldtimed; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGoldtimeDark');
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: ugoldtimed; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGoldtimeDark') and IsUpdate;

 ; goldtimel
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: ugoldtimel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGoldtimeLight');
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: ugoldtimel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGoldtimeLight');
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: ugoldtimel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGoldtimeLight') and IsUpdate;

 ; graphited
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: ugraphited; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGraphiteDark');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: ugraphited; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGraphiteDark');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: ugraphited; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGraphiteDark') and IsUpdate;

 ; graphitel
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: ugraphitel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGraphiteLight');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: ugraphitel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGraphiteLight');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: ugraphitel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinGraphiteLight') and IsUpdate;

 ; photooned
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: uphotooned; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinPhotooneDark');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: uphotooned; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinPhotooneDark');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: uphotooned; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinPhotooneDark') and IsUpdate;

 ; photoonel
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: uphotoonel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinPhotooneLight');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: uphotoonel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinPhotooneLight');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: uphotoonel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinPhotooneLight') and IsUpdate;

 ; surfaceb
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: usurfaceb; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinSurfaceBlack');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: usurfaceb; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinSurfaceBlack');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: usurfaceb; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinSurfaceBlack') and IsUpdate;

 ; surfacew
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: usurfacew; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinSurfaceWhite');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: usurfacew; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinSurfaceWhite');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: usurfacew; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinSurfaceWhite') and IsUpdate;

 ; textolited
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: utextolited; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinTextoliteDark');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: utextolited; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinTextoliteDark');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: utextolited; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinTextoliteDark') and IsUpdate;

 ; textolitel
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: utextolitel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinTextoliteLight');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: utextolitel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinTextoliteLight');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: utextolitel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinTextoliteLight') and IsUpdate;

 ; winstyled
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: uwinstyled; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinWinstyleDark');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: uwinstyled; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinWinstyleDark');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: uwinstyled; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinWinstyleDark') and IsUpdate;

 ; winstylel
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Skin; String: uwinstylel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinWinstyleLight');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Skin; String: uwinstylel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinWinstyleLight');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: uwinstylel; Flags: uninsdeleteentry; Check: IsStyleChecked('SkinWinstyleLight') and IsUpdate;

 ; icons Fugue
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: IconPack; String: uFugue; Flags: uninsdeleteentry; Check: IsStyleChecked('IconsFugue');
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: IconPack; String: uFugue; Flags: uninsdeleteentry; Check: IsStyleChecked('IconsFugue');
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: IconPack; String: uFugue; Flags: uninsdeleteentry; Check: IsStyleChecked('IconsFugue');
 ; icons Nova
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: IconPack; String: uNova; Flags: uninsdeleteentry; Check: IsStyleChecked('IconsNova');
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: IconPack; String: uNova; Flags: uninsdeleteentry; Check: IsStyleChecked('IconsNova');
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: IconPack; String: uNova; Flags: uninsdeleteentry; Check: IsStyleChecked('IconsNova');
 ; icons Xpk
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: IconPack; String: uXpk; Flags: uninsdeleteentry; Check: IsStyleChecked('IconsXpk');
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: IconPack; String: uXpk; Flags: uninsdeleteentry; Check: IsStyleChecked('IconsXpk');
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: IconPack; String: uXpk; Flags: uninsdeleteentry; Check: IsStyleChecked('IconsXpk');

 ; smileys for the dark skin
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: clist-filename; String: uskins\smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: Standard-filename; String: uskins\smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: tipper-filename; String: uskins\smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoFacebook-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoMRA-filename; String: uskins\smileys\_dark\mra\mra.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoMSN-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoSKYPE-filename; String: uskins\smileys\_dark\skype\skype.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoTOX-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoTwitter-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoVKontakte-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoWhatsApp-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: GMail-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: Google-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: GTalk-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: Hangouts-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: OK-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: Yandex-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
 ;
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: clist-filename; String: uskins\smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: Standard-filename; String: uskins\smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: tipper-filename; String: uskins\smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoFacebook-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoMRA-filename; String: uskins\smileys\_dark\mra\mra.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoMSN-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoSKYPE-filename; String: uskins\smileys\_dark\skype\skype.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoTOX-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoTwitter-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoVKontakte-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoWhatsApp-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: GMail-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: Google-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: GTalk-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: Hangouts-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: OK-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: Yandex-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
 ;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: clist-filename; String: uskins\smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: Standard-filename; String: uskins\smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: tipper-filename; String: uskins\smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoFacebook-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoMRA-filename; String: uskins\smileys\_dark\mra\mra.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoMSN-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoSKYPE-filename; String: uskins\smileys\_dark\skype\skype.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoTOX-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoTwitter-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoVKontakte-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoWhatsApp-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: GMail-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: Google-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: GTalk-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: Hangouts-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: OK-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: Yandex-filename; String: uskins\smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#DarkSkin}) and IsUpdate;
 ; smileys for the light skin
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: clist-filename; String: uskins\smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: Standard-filename; String: uskins\smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: tipper-filename; String: uskins\smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoFacebook-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoMRA-filename; String: uskins\smileys\_light\mra\mra.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoMSN-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoSKYPE-filename; String: uskins\smileys\_light\skype\skype.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoTOX-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoTwitter-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoVKontakte-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: AllProtoWhatsApp-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: GMail-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: Google-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: GTalk-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: Hangouts-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: OK-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\profiles\settings.ini; Section: SmileyAdd; Key: Yandex-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
 ;
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: clist-filename; String: uskins\smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: Standard-filename; String: uskins\smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: tipper-filename; String: uskins\smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoFacebook-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoMRA-filename; String: uskins\smileys\_light\mra\mra.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoMSN-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoSKYPE-filename; String: uskins\smileys\_light\skype\skype.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoTOX-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoTwitter-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoVKontakte-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: AllProtoWhatsApp-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: GMail-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: Google-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: GTalk-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: Hangouts-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: OK-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
;Filename: {app}\profiles\update.ini; Section: SmileyAdd; Key: Yandex-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
 ;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: clist-filename; String: uskins\smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: Standard-filename; String: uskins\smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: tipper-filename; String: uskins\smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoFacebook-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoMRA-filename; String: uskins\smileys\_light\mra\mra.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoMSN-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoSKYPE-filename; String: uskins\smileys\_light\skype\skype.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoTOX-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoTwitter-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoVKontakte-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: AllProtoWhatsApp-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: GMail-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: Google-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: GTalk-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: Hangouts-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: OK-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
;Filename: {app}\profiles\autoexec_update.ini; Section: SmileyAdd; Key: Yandex-filename; String: uskins\smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: ({#LightSkin}) and IsUpdate;
 ; handwriting font
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Font; String: uhandwriting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Font; String: uhandwriting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Font; String: uhandwriting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontHandwriting') and IsUpdate;
 ;
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: FontName; String: uSegoe Print; Flags: uninsdeleteentry; Check: IsStyleChecked('FontHandwriting');
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: FontName; String: uSegoe Print; Flags: uninsdeleteentry; Check: IsStyleChecked('FontHandwriting');
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: FontName; String: uSegoe Print; Flags: uninsdeleteentry; Check: IsStyleChecked('FontHandwriting') and IsUpdate;
 ;
;Filename: {app}\skins\tabsrmm\diplomatd\diplomatd.tsk; Section: WindowFrame; Key: CaptionOffset; String: 4; Flags: uninsdeleteentry; Components: resources\themes\diplomatd; Check: IsStyleChecked('FontHandwriting');
;Filename: {app}\skins\tabsrmm\diplomatl\diplomatl.tsk; Section: WindowFrame; Key: CaptionOffset; String: 4; Flags: uninsdeleteentry; Components: resources\themes\diplomatl; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\skins\tabsrmm\glamourd\glamourd.tsk; Section: WindowFrame; Key: CaptionOffset; String: 4; Flags: uninsdeleteentry; Components: resources\themes\glamourd; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\skins\tabsrmm\glamourl\glamourl.tsk; Section: WindowFrame; Key: CaptionOffset; String: 4; Flags: uninsdeleteentry; Components: resources\themes\glamourl; Check: IsStyleChecked('FontHandwriting');
;Filename: {app}\skins\tabsrmm\goldtimed\goldtimed.tsk; Section: WindowFrame; Key: CaptionOffset; String: 4; Flags: uninsdeleteentry; Components: resources\themes\goldtimed; Check: IsStyleChecked('FontHandwriting');
;Filename: {app}\skins\tabsrmm\goldtimel\goldtimel.tsk; Section: WindowFrame; Key: CaptionOffset; String: 4; Flags: uninsdeleteentry; Components: resources\themes\goldtimel; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\skins\tabsrmm\photooned\photooned.tsk; Section: WindowFrame; Key: CaptionOffset; String: 4; Flags: uninsdeleteentry; Components: resources\themes\photooned; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\skins\tabsrmm\photoonel\photoonel.tsk; Section: WindowFrame; Key: CaptionOffset; String: 4; Flags: uninsdeleteentry; Components: resources\themes\photoonel; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\skins\tabsrmm\surfaceb\surfaceb.tsk; Section: WindowFrame; Key: CaptionOffset; String: 4; Flags: uninsdeleteentry; Components: resources\themes\surfaceb; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\skins\tabsrmm\surfacew\surfacew.tsk; Section: WindowFrame; Key: CaptionOffset; String: 4; Flags: uninsdeleteentry; Components: resources\themes\surfacew; Check: IsStyleChecked('FontHandwriting');
 ;
Filename: {app}\skins\tabsrmm\graphited\graphited.tsk; Section: WindowFrame; Key: CaptionOffset; String: 3; Flags: uninsdeleteentry; Components: resources\themes\graphited; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\skins\tabsrmm\graphitel\graphitel.tsk; Section: WindowFrame; Key: CaptionOffset; String: 3; Flags: uninsdeleteentry; Components: resources\themes\graphitel; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\skins\tabsrmm\textolited\textolited.tsk; Section: WindowFrame; Key: CaptionOffset; String: 3; Flags: uninsdeleteentry; Components: resources\themes\textolited; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\skins\tabsrmm\textolitel\textolitel.tsk; Section: WindowFrame; Key: CaptionOffset; String: 3; Flags: uninsdeleteentry; Components: resources\themes\textolitel; Check: IsStyleChecked('FontHandwriting');
 ; printing font
Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: Font; String: uprinting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontPrinting');
Filename: {app}\profiles\update.ini; Section: PackInfo; Key: Font; String: uprinting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontPrinting');
Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: Font; String: uprinting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontPrinting') and IsUpdate;
 ;
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: FontName; String: uVerdana; Flags: uninsdeleteentry; Check: IsStyleChecked('FontPrinting');
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: FontName; String: uVerdana; Flags: uninsdeleteentry; Check: IsStyleChecked('FontPrinting');
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: FontName; String: uVerdana; Flags: uninsdeleteentry; Check: IsStyleChecked('FontPrinting') and IsUpdate;
 ;
;Filename: {app}\skins\tabsrmm\diplomatd\diplomatd.tsk; Section: WindowFrame; Key: CaptionOffset; String: 7; Flags: uninsdeleteentry; Components: resources\themes\diplomatd; Check: IsStyleChecked('FontPrinting');
;Filename: {app}\skins\tabsrmm\diplomatl\diplomatl.tsk; Section: WindowFrame; Key: CaptionOffset; String: 7; Flags: uninsdeleteentry; Components: resources\themes\diplomatl; Check: IsStyleChecked('FontPrinting');
Filename: {app}\skins\tabsrmm\glamourd\glamourd.tsk; Section: WindowFrame; Key: CaptionOffset; String: 7; Flags: uninsdeleteentry; Components: resources\themes\glamourd; Check: IsStyleChecked('FontPrinting');
Filename: {app}\skins\tabsrmm\glamourl\glamourl.tsk; Section: WindowFrame; Key: CaptionOffset; String: 7; Flags: uninsdeleteentry; Components: resources\themes\glamourl; Check: IsStyleChecked('FontPrinting');
;Filename: {app}\skins\tabsrmm\goldtimed\goldtimed.tsk; Section: WindowFrame; Key: CaptionOffset; String: 7; Flags: uninsdeleteentry; Components: resources\themes\goldtimed; Check: IsStyleChecked('FontPrinting');
;Filename: {app}\skins\tabsrmm\goldtimel\goldtimel.tsk; Section: WindowFrame; Key: CaptionOffset; String: 7; Flags: uninsdeleteentry; Components: resources\themes\goldtimel; Check: IsStyleChecked('FontPrinting');
Filename: {app}\skins\tabsrmm\photooned\photooned.tsk; Section: WindowFrame; Key: CaptionOffset; String: 7; Flags: uninsdeleteentry; Components: resources\themes\photooned; Check: IsStyleChecked('FontPrinting');
Filename: {app}\skins\tabsrmm\photoonel\photoonel.tsk; Section: WindowFrame; Key: CaptionOffset; String: 7; Flags: uninsdeleteentry; Components: resources\themes\photoonel; Check: IsStyleChecked('FontPrinting');
Filename: {app}\skins\tabsrmm\surfaceb\surfaceb.tsk; Section: WindowFrame; Key: CaptionOffset; String: 7; Flags: uninsdeleteentry; Components: resources\themes\surfaceb; Check: IsStyleChecked('FontPrinting');
Filename: {app}\skins\tabsrmm\surfacew\surfacew.tsk; Section: WindowFrame; Key: CaptionOffset; String: 7; Flags: uninsdeleteentry; Components: resources\themes\surfacew; Check: IsStyleChecked('FontPrinting');
 ;
Filename: {app}\skins\tabsrmm\graphited\graphited.tsk; Section: WindowFrame; Key: CaptionOffset; String: 6; Flags: uninsdeleteentry; Components: resources\themes\graphited; Check: IsStyleChecked('FontPrinting');
Filename: {app}\skins\tabsrmm\graphitel\graphitel.tsk; Section: WindowFrame; Key: CaptionOffset; String: 6; Flags: uninsdeleteentry; Components: resources\themes\graphitel; Check: IsStyleChecked('FontPrinting');
Filename: {app}\skins\tabsrmm\textolited\textolited.tsk; Section: WindowFrame; Key: CaptionOffset; String: 6; Flags: uninsdeleteentry; Components: resources\themes\textolited; Check: IsStyleChecked('FontPrinting');
Filename: {app}\skins\tabsrmm\textolitel\textolitel.tsk; Section: WindowFrame; Key: CaptionOffset; String: 6; Flags: uninsdeleteentry; Components: resources\themes\textolitel; Check: IsStyleChecked('FontPrinting');
 ; IETemplateConfig
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: IETemplateConfig; String: {code:FormatIEJSON}; Flags: uninsdeleteentry; Components: resources\ieview;
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: IETemplateConfig; String: {code:FormatIEJSON}; Flags: uninsdeleteentry; Components: resources\ieview;
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: IETemplateConfig; String: {code:FormatIEJSON}; Flags: uninsdeleteentry; Components: resources\ieview; Check: IsUpdate;

 ; IEViewAnimation off
;Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: Animation; String: b0; Flags: uninsdeleteentry; Components: resources\ieview; Check: not IsStyleChecked('IEViewAnimation');
;Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: Animation; String: b0; Flags: uninsdeleteentry; Components: resources\ieview; Check: not IsStyleChecked('IEViewAnimation');
;Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: Animation; String: b0; Flags: uninsdeleteentry;  Components: resources\ieview; Check: not IsStyleChecked('IEViewAnimation') and IsUpdate;
 ; IEViewAnimation on
;Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: Animation; String: b1; Flags: uninsdeleteentry; Components: resources\ieview; Check: IsStyleChecked('IEViewAnimation');
;Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: Animation; String: b1; Flags: uninsdeleteentry; Components: resources\ieview; Check: IsStyleChecked('IEViewAnimation');
;Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: Animation; String: b1; Flags: uninsdeleteentry;  Components: resources\ieview; Check: IsStyleChecked('IEViewAnimation') and IsUpdate;
 ; IEViewAvatar off
;Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: Avatars; String: b0; Flags: uninsdeleteentry; Components: resources\ieview; Check: not IsStyleChecked('IEViewAvatar');
;Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: Avatars; String: b0; Flags: uninsdeleteentry; Components: resources\ieview; Check: not IsStyleChecked('IEViewAvatar');
;Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: Avatars; String: b0; Flags: uninsdeleteentry;  Components: resources\ieview; Check: not IsStyleChecked('IEViewAvatar') and IsUpdate;
 ; IEViewAvatar on
;Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: Avatars; String: b1; Flags: uninsdeleteentry; Components: resources\ieview; Check: IsStyleChecked('IEViewAvatar');
;Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: Avatars; String: b1; Flags: uninsdeleteentry; Components: resources\ieview; Check: IsStyleChecked('IEViewAvatar');
;Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: Avatars; String: b1; Flags: uninsdeleteentry;  Components: resources\ieview; Check: IsStyleChecked('IEViewAvatar') and IsUpdate;
 ; IEViewShortLink off
;Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: ShortLinks; String: b0; Flags: uninsdeleteentry; Components: resources\ieview; Check: not IsStyleChecked('IEViewShortLink');
;Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: ShortLinks; String: b0; Flags: uninsdeleteentry; Components: resources\ieview; Check: not IsStyleChecked('IEViewShortLink');
;Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: ShortLinks; String: b0; Flags: uninsdeleteentry;  Components: resources\ieview; Check: not IsStyleChecked('IEViewShortLink') and IsUpdate;
 ; IEViewShortLink on
;Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: ShortLinks; String: b1; Flags: uninsdeleteentry; Components: resources\ieview; Check: IsStyleChecked('IEViewShortLink');
;Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: ShortLinks; String: b1; Flags: uninsdeleteentry; Components: resources\ieview; Check: IsStyleChecked('IEViewShortLink');
;Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: ShortLinks; String: b1; Flags: uninsdeleteentry;  Components: resources\ieview; Check: IsStyleChecked('IEViewShortLink') and IsUpdate;
 ; IEViewContextMenu off
;Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: CustomContextMenu; String: b0; Flags: uninsdeleteentry; Components: resources\ieview; Check: not IsStyleChecked('IEViewContextMenu');
;Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: CustomContextMenu; String: b0; Flags: uninsdeleteentry; Components: resources\ieview; Check: not IsStyleChecked('IEViewContextMenu');
;Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: CustomContextMenu; String: b0; Flags: uninsdeleteentry;  Components: resources\ieview; Check: not IsStyleChecked('IEViewContextMenu') and IsUpdate;
 ; IEViewContextMenu on
;Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: CustomContextMenu; String: b1; Flags: uninsdeleteentry; Components: resources\ieview; Check: IsStyleChecked('IEViewContextMenu');
;Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: CustomContextMenu; String: b1; Flags: uninsdeleteentry; Components: resources\ieview; Check: IsStyleChecked('IEViewContextMenu');
;Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: CustomContextMenu; String: b1; Flags: uninsdeleteentry;  Components: resources\ieview; Check: IsStyleChecked('IEViewContextMenu') and IsUpdate;

 ; IEViewAnimation
Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: Animation; String: b{code:SetBoolStyle|IEViewAnimation}; Flags: uninsdeleteentry; Components: resources\ieview;
Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: Animation; String: b{code:SetBoolStyle|IEViewAnimation}; Flags: uninsdeleteentry; Components: resources\ieview;
Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: Animation; String: b{code:SetBoolStyle|IEViewAnimation}; Flags: uninsdeleteentry;  Components: resources\ieview; Check: IsUpdate;
 ; IEViewAvatar
Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: Avatars; String: b{code:SetBoolStyle|IEViewAvatar}; Flags: uninsdeleteentry; Components: resources\ieview;
Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: Avatars; String: b{code:SetBoolStyle|IEViewAvatar}; Flags: uninsdeleteentry; Components: resources\ieview;
Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: Avatars; String: b{code:SetBoolStyle|IEViewAvatar}; Flags: uninsdeleteentry;  Components: resources\ieview; Check: IsUpdate;
 ; IEViewShortLink
Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: ShortLinks; String: b{code:SetBoolStyle|IEViewShortLink}; Flags: uninsdeleteentry; Components: resources\ieview;
Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: ShortLinks; String: b{code:SetBoolStyle|IEViewShortLink}; Flags: uninsdeleteentry; Components: resources\ieview;
Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: ShortLinks; String: b{code:SetBoolStyle|IEViewShortLink}; Flags: uninsdeleteentry;  Components: resources\ieview; Check: IsUpdate;
 ; IEViewContextMenu
Filename: {app}\profiles\settings.ini; Section: IEView_Template; Key: CustomContextMenu; String: b{code:SetBoolStyle|IEViewContextMenu}; Flags: uninsdeleteentry; Components: resources\ieview;
Filename: {app}\profiles\update.ini; Section: IEView_Template; Key: CustomContextMenu; String: b{code:SetBoolStyle|IEViewContextMenu}; Flags: uninsdeleteentry; Components: resources\ieview;
Filename: {app}\profiles\autoexec_update.ini; Section: IEView_Template; Key: CustomContextMenu; String: b{code:SetBoolStyle|IEViewContextMenu}; Flags: uninsdeleteentry;  Components: resources\ieview; Check: IsUpdate;

 ; AutoSizeInputArea off
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: TabSRMMAutoSizeInputArea; String: uAutoSizeInputArea0; Flags: uninsdeleteentry; Check: not IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: TabSRMMAutoSizeInputArea; String: uAutoSizeInputArea0; Flags: uninsdeleteentry; Check: not IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: TabSRMMAutoSizeInputArea; String: uAutoSizeInputArea0; Flags: uninsdeleteentry; Check: not IsSettingChecked('AutoSizeInputArea') and IsUpdate;
 ; AutoSizeInputArea on
;Filename: {app}\profiles\settings.ini; Section: PackInfo; Key: TabSRMMAutoSizeInputArea; String: uAutoSizeInputArea1; Flags: uninsdeleteentry; Check: IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\profiles\update.ini; Section: PackInfo; Key: TabSRMMAutoSizeInputArea; String: uAutoSizeInputArea1; Flags: uninsdeleteentry; Check: IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\profiles\autoexec_update.ini; Section: PackInfo; Key: TabSRMMAutoSizeInputArea; String: uAutoSizeInputArea1; Flags: uninsdeleteentry; Check: IsSettingChecked('AutoSizeInputArea') and IsUpdate;
 ; LocationTabsMessageWindow off if check not AutoSizeInputArea
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea0.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 11 38 40 08 3C 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea0.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 11 38 44 08 3C 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea0.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 11 38 40 08 3D 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea0.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 11 38 40 08 3E 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');
 ; LocationTabsMessageWindow on if check not AutoSizeInputArea
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea1.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 51 38 40 08 3C 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea1.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 51 38 44 08 3C 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea1.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 51 38 40 08 3D 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea1.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 51 38 40 08 3E 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');
 ; LocationTabsMessageWindow off if check AutoSizeInputArea
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea0.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 11 38 40 08 3C 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea0.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 11 38 44 08 3C 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea0.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 11 38 40 08 3D 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea0.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 11 38 40 08 3E 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');
 ; LocationTabsMessageWindow on if check AutoSizeInputArea
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea1.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 51 38 40 08 3C 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea1.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 51 38 44 08 3C 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea1.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 51 38 40 08 3D 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
;Filename: {app}\skins\tabsrmm\AutoSizeInputArea1.ini; Section: Tab_SRMsg; Key: CNTW_Def; String: n00 00 00 00 44 51 38 40 08 3E 00 02 FF 00 FF 00 25 00 00 00 3C 00 00 00 25 00 6E 00 20 00 2D 00 20 00 25 00 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');

 ; Settings Page
 ; on/off sending messages
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: SendOnShiftEnter; String: b{code:SetBoolSetting|SendShiftEnter}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: SendOnEnter; String: b{code:SetBoolSetting|SendEnter}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: SendOnDblEnter; String: b{code:SetBoolSetting|SendDoubleEnter}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: SendOnShiftEnter; String: b{code:SetBoolSetting|SendShiftEnter}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: SendOnEnter; String: b{code:SetBoolSetting|SendEnter}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: SendOnDblEnter; String: b{code:SetBoolSetting|SendDoubleEnter}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: SendOnShiftEnter; String: b{code:SetBoolSetting|SendShiftEnter}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: SendOnEnter; String: b{code:SetBoolSetting|SendEnter}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: SendOnDblEnter; String: b{code:SetBoolSetting|SendDoubleEnter}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; contactlist right
;Filename: {app}\profiles\settings.ini; Section: CList; Key: x; String: d792; Flags: uninsdeleteentry; Check: IsSettingChecked('ClistRight');
;Filename: {app}\profiles\update.ini; Section: CList; Key: x; String: d792; Flags: uninsdeleteentry; Check: IsSettingChecked('ClistRight');
;Filename: {app}\profiles\autoexec_update.ini; Section: CList; Key: x; String: d792; Flags: uninsdeleteentry; Check: IsSettingChecked('ClistRight') and IsUpdate;
 ; contactlist left
;Filename: {app}\profiles\settings.ini; Section: CList; Key: x; String: d52; Flags: uninsdeleteentry; Check: IsSettingChecked('ClistLeft');
;Filename: {app}\profiles\update.ini; Section: CList; Key: x; String: d52; Flags: uninsdeleteentry; Check: IsSettingChecked('ClistLeft');
;Filename: {app}\profiles\autoexec_update.ini; Section: CList; Key: x; String: d52; Flags: uninsdeleteentry; Check: IsSettingChecked('ClistLeft') and IsUpdate;
 ; on top
Filename: {app}\profiles\settings.ini; Section: CList; Key: OnTop; String: b{code:SetBoolSetting|OnTop}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: CList; Key: OnTop; String: b{code:SetBoolSetting|OnTop}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: CList; Key: OnTop; String: b{code:SetBoolSetting|OnTop}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; view modes
Filename: {app}\profiles\settings.ini; Section: CLUIFrames; Key: Visible6; String: b{code:SetBoolSetting|ViewModes}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: CLUIFrames; Key: Visible6; String: b{code:SetBoolSetting|ViewModes}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: CLUIFrames; Key: Visible6; String: b{code:SetBoolSetting|ViewModes}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; compact mode
Filename: {app}\profiles\settings.ini; Section: CLC; Key: CompactMode; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: CList; Key: AlignLeftItemsToLeft; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: CList; Key: AlignRightItemsToRight; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: CLC; Key: CompactMode; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: CList; Key: AlignLeftItemsToLeft; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: CList; Key: AlignRightItemsToRight; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: CLC; Key: CompactMode; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: CList; Key: AlignLeftItemsToLeft; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: CList; Key: AlignRightItemsToRight; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; Sounds
Filename: {app}\profiles\settings.ini; Section: Skin; Key: UseSound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: Skin; Key: UseSound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: Skin; Key: UseSound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry; Check: IsUpdate;
 ;
Filename: {app}\profiles\settings.ini; Section: SplashScreen; Key: PlaySound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: SplashScreen; Key: PlaySound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: SplashScreen; Key: PlaySound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; scroll bar
Filename: {app}\profiles\settings.ini; Section: CLC; Key: NoVScrollBar; String: b{code:SetBoolSetting|!CLCNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: CLC; Key: NoVScrollBar; String: b{code:SetBoolSetting|!CLCNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: CLC; Key: NoVScrollBar; String: b{code:SetBoolSetting|!CLCNoVScrollBar}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; AutoCreateNewTabs
;Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: autotabs; String: b{code:SetBoolSetting|AutoCreateNewTabs}; Flags: uninsdeleteentry;
;Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: autotabs; String: b{code:SetBoolSetting|AutoCreateNewTabs}; Flags: uninsdeleteentry;
;Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: autotabs; String: b{code:SetBoolSetting|AutoCreateNewTabs}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; LogStatusChanges
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: logstatuschanges; String: b{code:SetBoolSetting|LogStatusChanges}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: logstatuschanges; String: b{code:SetBoolSetting|LogStatusChanges}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: logstatuschanges; String: b{code:SetBoolSetting|LogStatusChanges}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; typing notification
Filename: {app}\profiles\settings.ini; Section: TypingNotify; Key: Disabled; String: b{code:SetBoolSetting|!TypingNotification}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: TypingNotify; Key: Disabled; String: b{code:SetBoolSetting|!TypingNotification}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: TypingNotify; Key: Disabled; String: b{code:SetBoolSetting|!TypingNotification}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; tab scroll bar
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: disableVScroll; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: HistoryPlusPlus; Key: NoLogScrollBar; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: disableVScroll; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: HistoryPlusPlus; Key: NoLogScrollBar; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: disableVScroll; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: HistoryPlusPlus; Key: NoLogScrollBar; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Check: IsUpdate;
;Filename: {app}\skins\tabsrmm\diplomatd\diplomatd.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\diplomatd;
;Filename: {app}\skins\tabsrmm\diplomatl\diplomatl.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\diplomatl;
Filename: {app}\skins\tabsrmm\glamourd\glamourd.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\glamourd;
Filename: {app}\skins\tabsrmm\glamourl\glamourl.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\glamourl;
;Filename: {app}\skins\tabsrmm\goldtimed\goldtimed.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\goldtimed;
;Filename: {app}\skins\tabsrmm\goldtimel\goldtimel.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\goldtimel;
Filename: {app}\skins\tabsrmm\graphited\graphited.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\graphited;
Filename: {app}\skins\tabsrmm\graphitel\graphitel.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\graphitel;
Filename: {app}\skins\tabsrmm\photooned\photooned.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\photooned;
Filename: {app}\skins\tabsrmm\photoonel\photoonel.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\photoonel;
Filename: {app}\skins\tabsrmm\surfaceb\surfaceb.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\surfaceb;
Filename: {app}\skins\tabsrmm\surfacew\surfacew.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\surfacew;
Filename: {app}\skins\tabsrmm\textolited\textolited.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\textolited;
Filename: {app}\skins\tabsrmm\textolitel\textolitel.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\textolitel;
Filename: {app}\skins\tabsrmm\winstyled\winstyled.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\winstyled;
Filename: {app}\skins\tabsrmm\winstylel\winstylel.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: resources\themes\winstylel;
 ; DialogStatusMessages off NewAwaySys
Filename: {app}\profiles\settings.ini; Section: NewAwaySys; Key: DontPopDlg; String: w1022; Flags: uninsdeleteentry; Check: not IsSettingChecked('DialogStatusMessages');
Filename: {app}\profiles\update.ini; Section: NewAwaySys; Key: DontPopDlg; String: w1022; Flags: uninsdeleteentry; Check: not IsSettingChecked('DialogStatusMessages');
Filename: {app}\profiles\autoexec_update.ini; Section: NewAwaySys; Key: DontPopDlg; String: w1022; Flags: uninsdeleteentry; Check: not IsSettingChecked('DialogStatusMessages') and IsUpdate;
 ; DialogStatusMessages on NewAwaySys
Filename: {app}\profiles\settings.ini; Section: NewAwaySys; Key: DontPopDlg; String: w0; Flags: uninsdeleteentry; Check: IsSettingChecked('DialogStatusMessages');
Filename: {app}\profiles\update.ini; Section: NewAwaySys; Key: DontPopDlg; String: w0; Flags: uninsdeleteentry; Check: IsSettingChecked('DialogStatusMessages');
Filename: {app}\profiles\autoexec_update.ini; Section: NewAwaySys; Key: DontPopDlg; String: w0; Flags: uninsdeleteentry; Check: IsSettingChecked('DialogStatusMessages') and IsUpdate;
 ; DialogStatusMessages SRAway
Filename: {app}\profiles\settings.ini; Section: SRAway; Key: IdlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: SRAway; Key: OtpNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: SRAway; Key: OtlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: SRAway; Key: InvNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: SRAway; Key: FreeChatNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: SRAway; Key: DndNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: SRAway; Key: OccupiedNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: SRAway; Key: NaNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: SRAway; Key: AwayNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\settings.ini; Section: SRAway; Key: OnNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: SRAway; Key: IdlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: SRAway; Key: OtpNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: SRAway; Key: OtlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: SRAway; Key: InvNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: SRAway; Key: FreeChatNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: SRAway; Key: DndNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: SRAway; Key: OccupiedNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: SRAway; Key: NaNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: SRAway; Key: AwayNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: SRAway; Key: OnNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: SRAway; Key: IdlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRAway; Key: OtpNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRAway; Key: OtlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRAway; Key: InvNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRAway; Key: FreeChatNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRAway; Key: DndNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRAway; Key: OccupiedNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRAway; Key: NaNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRAway; Key: AwayNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRAway; Key: OnNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; Autoreply
Filename: {app}\profiles\settings.ini; Section: NewAwaySys; Key: EnableReply; String: b{code:SetBoolSetting|Autoreply}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: NewAwaySys; Key: EnableReply; String: b{code:SetBoolSetting|Autoreply}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: NewAwaySys; Key: EnableReply; String: b{code:SetBoolSetting|Autoreply}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; AutoAwayDetection off
Filename: {app}\profiles\settings.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w52; Flags: uninsdeleteentry; Check: not IsSettingChecked('AutoAwayDetection');
Filename: {app}\profiles\update.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w52; Flags: uninsdeleteentry; Check: not IsSettingChecked('AutoAwayDetection');
Filename: {app}\profiles\autoexec_update.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w52; Flags: uninsdeleteentry; Check: not IsSettingChecked('AutoAwayDetection') and IsUpdate;
 ; AutoAwayDetection on
Filename: {app}\profiles\settings.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w183; Flags: uninsdeleteentry; Check: IsSettingChecked('AutoAwayDetection');
Filename: {app}\profiles\update.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w183; Flags: uninsdeleteentry; Check: IsSettingChecked('AutoAwayDetection');
Filename: {app}\profiles\autoexec_update.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w183; Flags: uninsdeleteentry; Check: IsSettingChecked('AutoAwayDetection') and IsUpdate;
 ; AutoIdleDetection
Filename: {app}\profiles\settings.ini; Section: Idle; Key: IdleOnFullScr; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: Idle; Key: IdleOnFullScr; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: Idle; Key: IdleOnFullScr; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry; Check: IsUpdate;
 ;
Filename: {app}\profiles\settings.ini; Section: Idle; Key: IdleOnLock; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: Idle; Key: IdleOnLock; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: Idle; Key: IdleOnLock; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry; Check: IsUpdate;
 ;
Filename: {app}\profiles\settings.ini; Section: Idle; Key: IdleOnSaver; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: Idle; Key: IdleOnSaver; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: Idle; Key: IdleOnSaver; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry; Check: IsUpdate;
 ;
Filename: {app}\profiles\settings.ini; Section: Idle; Key: IdleOnTerminalDisconnect; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: Idle; Key: IdleOnTerminalDisconnect; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: Idle; Key: IdleOnTerminalDisconnect; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry; Check: IsUpdate;
 ;
Filename: {app}\profiles\settings.ini; Section: Idle; Key: UserIdleCheck; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: Idle; Key: UserIdleCheck; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: Idle; Key: UserIdleCheck; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; CheckUpdates
#if AppStatus == "Final"
Filename: {app}\profiles\settings.ini; Section: PluginUpdater; Key: UpdateOnStartup; String: b{code:SetBoolSetting|CheckUpdates}; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: PluginUpdater; Key: UpdateOnStartup; String: b{code:SetBoolSetting|CheckUpdates}; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: PluginUpdater; Key: UpdateOnStartup; String: b{code:SetBoolSetting|CheckUpdates}; Flags: uninsdeleteentry; Check: IsUpdate;
#endif
 ; StableVersion
#if AppStatus != "Test" && AppStatus != "Alpha" && AppStatus != "Beta"
Filename: {app}\profiles\settings.ini; Section: PluginUpdater; Key: UpdateMode; String: b1; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: PluginUpdater; Key: UpdateMode; String: b1; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: PluginUpdater; Key: UpdateMode; String: b1; Flags: uninsdeleteentry; Check: IsUpdate;
 ; DontSwitchToStable
Filename: {app}\profiles\settings.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b0; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b0; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b0; Flags: uninsdeleteentry; Check: IsUpdate;
#endif
#if AppStatus != "Final"
 ; DevelopmentVersion
Filename: {app}\profiles\settings.ini; Section: PluginUpdater; Key: UpdateMode; String: b2; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: PluginUpdater; Key: UpdateMode; String: b2; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: PluginUpdater; Key: UpdateMode; String: b2; Flags: uninsdeleteentry; Check: IsUpdate;
 ; DontSwitchToStable
Filename: {app}\profiles\settings.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b1; Flags: uninsdeleteentry;
Filename: {app}\profiles\update.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b1; Flags: uninsdeleteentry;
Filename: {app}\profiles\autoexec_update.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b1; Flags: uninsdeleteentry; Check: IsUpdate;
#endif
 ; DialogFontSize
Filename: {app}\profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b244; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b243; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b241; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b240; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b237; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b235; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5');
Filename: {app}\profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b244; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b243; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b241; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b240; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b237; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b235; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5');
#if AppSkinUp == "0"
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b244; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0') and not IsUpdate;
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b243; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1') and not IsUpdate;
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b241; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2') and not IsUpdate;
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b240; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3') and not IsUpdate;
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b237; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4') and not IsUpdate;
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b235; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5') and not IsUpdate;
#endif
#if AppSkinUp == "1"
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b244; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b243; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b241; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b240; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b237; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b235; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5');
#endif
Filename: {app}\profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b244; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b243; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b241; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b240; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b237; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b235; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5') and IsUpdate;
 ; ini
#define public i 0
#sub AddDefaultThemeIni
 ; default theme ini
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b244; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b243; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b241; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b240; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b237; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b235; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5');
#endsub
#for {i = 0; i < 2; i++} AddDefaultThemeIni

#define public i 2
#sub AddThemeIni
 ; theme ini
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b244; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b243; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b241; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b240; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b237; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b235; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,5');
 ; theme msf
Filename: {app}\skins\clist_modern\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b244; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\skins\clist_modern\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b243; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\skins\clist_modern\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b241; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\skins\clist_modern\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b240; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\skins\clist_modern\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b237; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\skins\clist_modern\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b235; Flags: uninsdeleteentry; Components: resources\themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,5');
#endsub
#for {i = 2; i < 14; i++} AddThemeIni
 ; LoadHistorySize
Filename: {app}\profiles\settings.ini; Section: SRMsg; Key: LoadCount; String: w5; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1');
Filename: {app}\profiles\settings.ini; Section: SRMsg; Key: LoadCount; String: w10; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2');
Filename: {app}\profiles\settings.ini; Section: SRMsg; Key: LoadCount; String: w20; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3');
Filename: {app}\profiles\settings.ini; Section: SRMsg; Key: LoadCount; String: w50; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4');
Filename: {app}\profiles\settings.ini; Section: SRMsg; Key: LoadCount; String: w100; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5');
Filename: {app}\profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b0; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,0');
Filename: {app}\profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1');
Filename: {app}\profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2');
Filename: {app}\profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3');
Filename: {app}\profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4');
Filename: {app}\profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5');
Filename: {app}\profiles\update.ini; Section: SRMsg; Key: LoadCount; String: w5; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1');
Filename: {app}\profiles\update.ini; Section: SRMsg; Key: LoadCount; String: w10; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2');
Filename: {app}\profiles\update.ini; Section: SRMsg; Key: LoadCount; String: w20; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3');
Filename: {app}\profiles\update.ini; Section: SRMsg; Key: LoadCount; String: w50; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4');
Filename: {app}\profiles\update.ini; Section: SRMsg; Key: LoadCount; String: w100; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5');
Filename: {app}\profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b0; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,0');
Filename: {app}\profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1');
Filename: {app}\profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2');
Filename: {app}\profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3');
Filename: {app}\profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4');
Filename: {app}\profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5');
Filename: {app}\profiles\autoexec_update.ini; Section: SRMsg; Key: LoadCount; String: w5; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRMsg; Key: LoadCount; String: w10; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRMsg; Key: LoadCount; String: w20; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRMsg; Key: LoadCount; String: w50; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRMsg; Key: LoadCount; String: w100; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b0; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,0') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4') and IsUpdate;
Filename: {app}\profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5') and IsUpdate;
 ; LocationTabsMessageWindow and AutoSizeInputArea on
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144541508; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144541508; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144541508; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');
 ; LocationTabsMessageWindow and AutoSizeInputArea off
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144525124; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144525124; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144525124; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');

[UninstallDelete]
Type: dirifempty; Name: {#SetupSetting("UninstallFilesDir")};
Type: dirifempty; Name: {app};

[Code]
#define A = (Defined UNICODE) ? "W" : "A"
const
  WM_NCPAINT = $0085;
  WM_PAINT = $000F;
  WM_PRINTCLIENT = $0318;
  WM_ERASEBKGND = $0014;
  WM_GETFONT = $0031;
  WM_MOUSEMOVE = $0200;
  WM_LBUTTONDOWN = $0201;
  WM_MOUSEHOVER = $02A1;
  WM_MOUSELEAVE = $02A3;
  WM_HSCROLL = $0114;
  WM_DRAWITEM = $002B;
  WM_SETCURSOR = $0020;
  WM_SYSCOLORCHANGE = $0015;
  WM_ENABLE = $000A;
  WM_DWMCOMPOSITIONCHANGED = $031E;
  WM_DWMNCRENDERINGCHANGED = $031F;
  WM_CLOSE = $0010;
  WM_DESTROY = $0002;
  WM_NCHITTEST = $0084;
  CN_CTLCOLOREDIT = $BD33;
  CN_CTLCOLORSTATIC = $BD38;

  LVM_FIRST = $1000;
  LVM_GETIMAGELIST = (LVM_FIRST + 2);
  LVM_SETIMAGELIST = (LVM_FIRST + 3);
  LVM_SETCOLUMNWIDTH = (LVM_FIRST + 30);
  LVM_GETHEADER = (LVM_FIRST + 31);
  LVM_SETEXTENDEDLISTVIEWSTYLE = (LVM_FIRST + 54);
  LVM_GETSUBITEMRECT = (LVM_FIRST + 56);
  LVM_GETHOTITEM = (LVM_FIRST + 61);
  HDM_FIRST = $1200;
  HDM_LAYOUT = HDM_FIRST + 5;
  HDM_HITTEST = HDM_FIRST + 6;
  TV_FIRST = $1100;
  TVM_GETITEMRECT = TV_FIRST + 4;
  TVM_GETIMAGELIST = TV_FIRST + 8;
  TVM_GETNEXTITEM = TV_FIRST + 10;
  TVM_GETITEMA = TV_FIRST + 12;
  TVM_HITTEST = TV_FIRST + 17;
  TVM_SETEXTENDEDSTYLE = TV_FIRST + 44;
  TVM_GETEXTENDEDSTYLE = TV_FIRST + 45;
  TVM_GETITEMW = TV_FIRST + 62;
  STM_GETICON = $0171;
  BM_GETSTATE = $00F2;
  TCM_FIRST = $1300;
  TCM_GETITEMRECT = (TCM_FIRST + 10);

  TVGN_FIRSTVISIBLE = $5;
  TVGN_NEXTVISIBLE = $6;

  LVSIL_SMALL = 1;
  LVIR_LABEL = 2;
  TVIF_TEXT = $1;
  TVIF_IMAGE = $2;
  TVIF_STATE = $8;
  TVIF_HANDLE = $10;
  TVIF_CHILDREN = $40;
  TVIS_SELECTED = $2;
  TVIS_EXPANDED = $20;
  TVSIL_NORMAL = 0;
  TVHT_ONITEMICON = $2;
  TVHT_ONITEMLABEL = $4;
  TVHT_ONITEMBUTTON = $10;

  PRF_CHECKVISIBLE = $1;
  PRF_CLIENT = $4;

  GWL_STYLE = (-16);
  GWL_EXSTYLE = (-20);

  SRCCOPY = $CC0020;
  AC_SRC_OVER = $0;
  AC_SRC_ALPHA = $1;
  ULW_ALPHA = $2;

  DTT_GLOWSIZE = $800;
  DTT_COMPOSITED = $2000;
  DTT_TEXTCOLOR = $1;

  BPBF_TOPDOWNDIB = $2;

  BP_PUSHBUTTON = 1;
  BP_RADIOBUTTON = 2;
  BP_CHECKBOX = 3;

  PBS_NORMAL = 1;
  PBS_HOT = 2;
  PBS_PRESSED = 3;
  PBS_DISABLED = 4;
  RBS_UNCHECKEDNORMAL = 1;
  RBS_UNCHECKEDDISABLED = 4;
  CBS_UNCHECKEDNORMAL = 1;
  CBS_UNCHECKEDDISABLED = 4;
  CBRO_NORMAL = 1;
  CBRO_HOT = 2;
  CBRO_PRESSED = 3;
  CBRO_DISABLED = 4;
  CBXSR_NORMAL = 1;
	CBXSR_HOT = 2;
	CBXSR_PRESSED = 3;
	CBXSR_DISABLED = 4;
  EPSN_HOT = 2;
  EPSN_FOCUSED = 3;
  EPSH_HOT = 2;
  EPSH_FOCUSED = 3;
  EPSV_HOT = 2;
  EPSV_FOCUSED = 3;
  EPSHV_HOT = 2;
  EPSHV_FOCUSED = 3;
  GLPS_CLOSED = 1;
  GLPS_OPENEDED = 2;
  HGLPS_CLOSED = 1;
  HGLPS_OPENEDED = 2;
  TREIS_NORMAL = 1;
  TREIS_DISABLED = 4;
  BST_PUSHED = $4;
  BST_HOT = $0200;

  BS_PUSHBUTTON = $0;
  BS_DEFPUSHBUTTON = $1;
  BS_CHECKBOX = $2;
  BS_AUTOCHECKBOX = $3;
  BS_RADIOBUTTON = $4;
  BS_3STATE = $5;
  BS_AUTO3STATE = $6;
  BS_AUTORADIOBUTTON = $9;
  CP_READONLY = $5;
  CP_DROPDOWNBUTTONRIGHT = $6;
  EP_EDITBORDER_NOSCROLL = $6;
  EP_EDITBORDER_HSCROLL = $7;
  EP_EDITBORDER_VSCROLL = $8;
  EP_EDITBORDER_HVSCROLL = $9;
  TVP_TREEITEM = 1;
  TVP_GLYPH = 2;
  TVP_HOTGLYPH = 4;

  TS_DRAW = 2;
  RGN_OR = 2;
  RGN_DIFF = 4;
  NULLREGION  = 1;
  GA_ROOT = 2;
  OBJ_BRUSH = 2;
  OBJ_BITMAP = 7;

  SM_CXSCREEN = 0;
  SM_CYSCREEN = 1;

  DT_SINGLELINE = $20;
  DT_VCENTER = $4;
  DT_LEFT = $0;
  DT_CENTER = $1;
  DT_RIGHT = $2;
  DT_WORD_ELLIPSIS = $40000;
  DT_END_ELLIPSIS = $8000;
  DT_WORDBREAK = $10;
  DT_CALCRECT = $400;

  WS_HSCROLL = $00100000;
  WS_VSCROLL = $00200000;
  WS_CLIPSIBLINGS = $04000000;
  WS_DISABLED = $08000000;
  WS_VISIBLE = $10000000;
  WS_CHILDWINDOW = $40000000;
  WS_EX_CLIENTEDGE= $0200;
  WS_EX_LAYERED = $00080000;
  WS_EX_COMPOSITED = $02000000;
  ES_MULTILINE = $4;
  SS_RIGHT = $2;
  SS_ICON = $3;

  EM_LINEINDEX = $BB;
  EM_LINEFROMCHAR = $C9;
  EM_GETRECT = $B2;
  EM_POSFROMCHAR = $D6;

  COLOR_BACKGROUND = 1;
  COLOR_WINDOW = 5;
  COLOR_CAPTIONTEXT = 9;
  COLOR_HIGHLIGHT = 13;
  COLOR_HIGHLIGHTTEXT = 14;
  COLOR_BTNFACE = 15;
  COLOR_INACTIVECAPTIONTEXT = 19;

  NULL_BRUSH = 5;
  TRANSPARENT = 1;

  OBJID_HSCROLL = $FFFFFFFA;
  OBJID_VSCROLL = $FFFFFFFB;
  STATE_SYSTEM_UNAVAILABLE = $1;
  SB_HORZ = $0;
  SB_VERT = $1;
  SIF_RANGE = $1;
  SIF_PAGE = $2;
  SIF_POS = $4;

  MAX_PATH = 260;
  SHGFI_ICON = $100;
  SHGFI_SMALLICON = $1;
  SHGFI_DISPLAYNAME = $0200;
  SHGFI_TYPENAME = $0400;
  CSIDL_PROGRAMS = $0002;
  CSIDL_STARTMENU = $000B;
  DRIVE_NO_ROOT_DIR = 1;
  DRIVE_REMOVABLE = 2;
  DRIVE_FIXED = 3;
  LVS_EX_FULLROWSELECT = $20;
  LVSCW_AUTOSIZE = -1;
  LVSCW_AUTOSIZE_USEHEADER = -2;

  RT_RCDATA = 10;
  RT_ICON = 3;
  IMAGE_ICON = 1;
  OIC_ERROR = 32513;
  LR_SHARED = $8000;
  DI_NORMAL = $3;
  ILC_COLOR32 = $20;

  TH32CS_SNAPPROCESS = $2;
  INVALID_HANDLE_VALUE = (-1);
  PROCESS_TERMINATE = $1;
  PROCESS_CREATE_THREAD = $2;
  PROCESS_DUP_HANDLE = $0040;
  PROCESS_QUERY_INFORMATION = $0400;
  PROCESS_VM_READ = $0010;
  SYNCHRONIZE = $00100000;

  TOKEN_QUERY = $8;
  TOKEN_ADJUST_PRIVILEGES = $0020;
  SE_PRIVILEGE_ENABLED = $2;

  SystemHandleInformation = 16;
  ObjectNameInformation = 1;
  ObjectTypeInformation = 2;

  HEAP_ZERO_MEMORY = $8;
  DUPLICATE_SAME_ACCESS = $2;
  FILE_TYPE_DISK = $1;

  TA_FAILED = 0;
  TA_SUCCESS_CLEAN = 1;
  TA_SUCCESS_KILL = 2;

  WAIT_OBJECT_0 = $0;
  WAIT_TIMEOUT = $102;
  WAIT_FAILED = $FFFFFFFF;
  INFINITE = -1;

  BM_CLICK = $00F5;
  VK_ESCAPE = $1B;
  TME_HOVER = $1;
  TME_LEAVE = $2;

  KEY_READ = $00020019;
  KEY_ALL_ACCESS = $000F003F;
  KEY_WOW64_32KEY = $0200;
  KEY_WOW64_64KEY = $0100;
  REG_OPTION_NON_VOLATILE = $0;
  REG_OPENED_EXISTING_KEY = $0002;

  ERROR_SUCCESS = $0;
  NT_SUCCESS = $0;
  FILE_CREATE_PIPE_INSTANCE = $0004;
  FILE_READ_EA = $0008;
  FILE_EXECUTE = $0020;
  PAGE_READONLY = $0002;

  SCS_32BIT_BINARY = 0;
  SCS_64BIT_BINARY = 6;

  FO_MOVE = $0001;
  FOF_NOCONFIRMMKDIR = $0200;

  LOAD_LIBRARY_AS_DATAFILE = $0002;
  LOAD_LIBRARY_AS_IMAGE_RESOURCE = $0020;

  SMTO_BLOCK = $0001;
  SMTO_ABORTIFHUNG = $0002;

  SWP_NOZORDER = $0004;
  SWP_NOACTIVATE = $0010;

  WH_CBT = 5;
  HCBT_CREATEWND = 3;

  WC_BUTTON = 'Button';
  WC_STATIC = 'Static';
  WC_DIALOG = '#32770';

  ImageFormatBMP = '{B96B3CAB-0728-11D3-9D7B-0000F81EF32E}';
  ImageFormatPNG = '{B96B3CAF-0728-11D3-9D7B-0000F81EF32E}';
  ImageFormatJPEG = '{B96B3CAE-0728-11D3-9D7B-0000F81EF32E}';
  ImageFormatGIF = '{B96B3CB0-0728-11D3-9D7B-0000F81EF32E}';
  ImageFormatTIFF = '{B96B3CB1-0728-11D3-9D7B-0000F81EF32E}';
  FrameDimensionPage = '{7462DC86-6180-4C7E-8E3F-EE7333A7A483}';
  FrameDimensionTime = '{6AEDBD6D-3FB5-418A-83A6-7F45229DC872}';
  PropertyTagFrameDelay = $5100;
  PixelFormat32bppPARGB = $000E200B;
  Rotate180FlipX = 6;

type
  PAINTSTRUCT = record
    hdc: Longint;
    fErase: BOOL;
    rcPaint: TRect;
    fRestore: BOOL;
    fIncUpdate: BOOL;
    rgbReserved: array [0..31] of Byte;
  end;

  MARGINS = record
    cxLeftWidth: Integer;
    cxRightWidth: Integer;
    cyTopHeight: Integer;
    cyBottomHeight: Integer;
  end;

  DTTOPTS = record
    dwSize: DWORD;
    dwFlags: DWORD;
    crText: DWORD;
    crBorder: DWORD;
    crShadow: DWORD;
    iTextShadowType: Integer;
    ptShadowOffset: TPoint;
    iBorderSize: Integer;
    iFontPropId: Integer;
    iColorPropId: Integer;
    iStateId: Integer;
    fApplyOverlay: BOOL;
    iGlowSize: Integer;
    pfnDrawTextCallback: Longint;
    lParam: Longint;
  end;

  BITMAPFILEHEADER = record
    bfType: WORD;
    bfSize: DWORD;
    bfReserved1: WORD;
    bfReserved2: WORD;
    bfOffBits: DWORD;
  end;

  BITMAPINFOHEADER = record
    biSize: DWORD;
    biWidth: Longint;
    biHeight: Longint;
    biPlanes: WORD;
    biBitCount: WORD;
    biCompression: DWORD;
    biSizeImage: DWORD;
    biXPelsPerMeter: Longint;
    biYPelsPerMeter: Longint;
    biClrUsed: DWORD;
    biClrImportant: DWORD;
  end;

  BITMAPINFO = record
    bmiHeader: BITMAPINFOHEADER;
    bmiColors: array of DWORD;
  end;

  BLENDFUNCTION = record
    BlendOp: Byte;
    BlendFlags: Byte;
    SourceConstantAlpha: Byte;
    AlphaFormat: Byte;
  end;

  BP_PAINTPARAMS = record
    cbSize: DWORD;
    dwFlags: DWORD;
    prcExclude: Longint;
    pBlendFunction: Longint;
  end;

  SCROLLBARINFO = record
    cbSize: DWORD;
    rcScrollBar: TRect;
    dxyLineButton: Integer;
    xyThumbTop: Integer;
    xyThumbBottom: Integer;
    reserved: Integer;
    rgstate: array [0..5] of DWORD;
  end;

  SCROLLINFO = record
    cbSize: UINT;
    fMask: UINT;
    nMin: Integer;
    nMax: Integer;
    nPage: UINT;
    nPos: Integer;
    nTrackPos: Integer;
  end;

  ULARGE_INTEGER = record
    LowPart: Longint;
    HighPart: DWORD;
  end;

  SHFILEINFO = record
    hIcon: HICON;
    iIcon: Integer;
    dwAttributes: DWORD;
    szDisplayName: array [0..259] of Char;
    szTypeName: array [0..79] of Char;
  end;

  COMBOBOXINFO = record
    cbSize: DWORD;
    rcItem: TRect;
    rcButton: TRect;
    stateButton: DWORD;
    hwndCombo: HWND;
    hwndItem: HWND;
    hwndList: HWND;
  end;

  HD_HITTESTINFO = record
    pt: TPoint;
    flags: UINT;
    iItem: Integer;
  end;

  TVITEM = record
    mask: UINT;
    hItem: THandle;
    state: UINT;
    stateMask: UINT;
    pszText: Longint;
    cchTextMax: Integer;
    iImage: Integer;
    iSelectedImage: Integer;
    cChildren: Integer;
    lParam: Longint;
  end;

  TVHITTESTINFO = record
    pt: TPoint;
    flags: UINT;
    hItem: THandle;
  end;

  TPROCESSENTRY32 = record
    dwSize, cntUsage, th32ProcessID: DWORD;
    th32DefaultHeapID: Longint;
    th32ModuleID, cntThreads, th32ParentProcessID: DWORD;
    pcPriClassBase: Longint;
    dwFlags: DWORD;
    szExeFile: array [0..MAX_PATH - 1] of Char;
  end;

  LUID = record
    LowPart: DWORD;
    HighPart: Longint;
  end;

  LUID_AND_ATTRIBUTES = record
    Luid: LUID;
    Attributes: DWORD;
  end;

  TOKEN_PRIVILEGES = record
    PrivilegeCount: DWORD;
    Privileges: array [0..0] of LUID_AND_ATTRIBUTES;
  end;

  SYSTEM_HANDLE_TABLE_ENTRY_INFO = record
    UniqueProcessId: WORD;
    CreatorBackTraceIndex: WORD;
    ObjectTypeIndex: Byte;
    HandleAttributes: Byte;
    HandleValue: WORD;
    Object: Longint;
    GrantedAccess: Longint;
  end;

  SYSTEM_HANDLE_INFORMATION = record
    NumberOfHandles: Longint;
    Handles: SYSTEM_HANDLE_TABLE_ENTRY_INFO;
  end;

  PROCESS_BASIC_INFORMATION = record
    ExitStatus: Longint;
    PebBaseAddress: Longint;
    AffinityMask: DWORD;
    BasePriority: Longint;
    UniqueProcessId: THandle;
    InheritedFromUniqueProcessId: THandle;
  end;

  UNICODE_STRING = record
    Length: WORD;
    MaximumLength: WORD;
    Buffer: Longint;
  end;

  RTL_USER_PROCESS_PARAMETERS = record
    Reserved1: array [0..15] of Byte;
    Reserved2: array [0..9] of Longint;
    ImagePathName: UNICODE_STRING;
    CommandLine: UNICODE_STRING;
  end;

  SHFILEOPSTRUCT = record
    hwnd: HWND;
    wFunc: UINT;
    pFrom: string;
    pTo: string;
    fFlags: Longint;
    fAnyOperationsAborted: BOOL;
    hNameMappings: Longint;
    lpszProgressTitle: string;
  end;

  TRACKMOUSEEVENT = record
    cbSize: DWORD;
    dwFlags: DWORD;
    hwndTrack: HWND;
    dwHoverTime: DWORD;
  end;

  GDIPLUSSTARTUPINPUT = record
    GdiplusVersion: DWORD;
    DebugEventProc: Longint;
    SuppressBackgroundThread: BOOL;
    SuppressExternalCodecs: BOOL;
  end;

  CLSID = record
    Data1: Longint;
    Data2: Integer;
    Data3: Integer;
    Data4: array [0..7] of Byte;
  end;

  PROPERTYITEM = record
    uId: UINT;
    uLength: UINT;
    dwType: DWORD;
    lpValue: Longint;
  end;

  TIMERPARAM = record     // user defined
    bmp: TBitmap;
    bf: BLENDFUNCTION;
    dwStart: DWORD;
    dwFadeIn: DWORD;
    dwNormal: DWORD;
    dwFadeOut: DWORD;
  end;

  ANITIMERPARAM = record     // user defined
    ABitmapImage: TBitmapImage;
    lpImage: Longint;
    hbmFrames: array of TBitmap;
    uFrameIndex: UINT;
    uDelay: array of UINT;
    uStart: UINT;
  end;

  TYPEHELPER = record        // user defined
    szInternalName: string;
    szDescription: string;
  end;

  COMPHELPER = record        // user defined
    szInternalName: string;
    szDescription: string;
  end;

  TASKHELPER = record        // user defined
    szInternalName: string;
    szName: string;
    szDescription: string;
  end;

  STYLEHELPER = record        // user defined
    szInternalName: string;
    szName: string;
    szDescription: string;
    szPreviewBitmap: string;
    szSelectedBitmap: string;
    szUnselectedBitmap: string;
  end;

  SETTINGHELPER = record      // user defined
    szInternalName: string;
    szName: string;
    szDescription: string;
  end;

  ADDSETTINGHELPER = record   // user defined
    szInternalName: string;
    szName: string;
    szDescription: string;
    szInternalValues: string;
    szInternalDefault: string;
  end;

// Window Class Functions
function GetClassName(hWnd: HWND; lpClassName: string; nMaxCount: Integer): Integer; external 'GetClassName{#A}@user32.dll stdcall';
function GetWindowLong(hWnd: HWND; nIndex: Integer): Longint; external 'GetWindowLong{#A}@user32.dll stdcall';
function SetWindowLong(hWnd: HWND; nIndex: Integer; dwNewLong: Longint): Longint; external 'SetWindowLong{#A}@user32.dll stdcall';

// Shell Functions
function SetWindowSubclass(hWnd: HWND; pfnSubclass: Longint; uIdSubclass: UINT_PTR; dwRefData: TObject): BOOL; external 'SetWindowSubclass@comctl32.dll stdcall';
function RemoveWindowSubclass(hWnd: HWND; pfnSubclass: Longint; uIdSubclass: UINT_PTR): BOOL; external 'RemoveWindowSubclass@comctl32.dll stdcall';
function DefSubclassProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint): Longint; external 'DefSubclassProc@comctl32.dll stdcall';

// Window Functions
function CreateWindowEx(dwExStyle: DWORD; lpClassName, lpWindowName: string; dwStyle: DWORD; x, y, nWidth, nHeight: Integer; hWndParent: HWND; hMenu: HMENU; hInstance, lpParam: Longint): HWND; external 'CreateWindowEx{#A}@user32.dll stdcall';
function DestroyWindow(hWnd: HWND): BOOL; external 'DestroyWindow@user32.dll stdcall';
function EnumWindows(lpEnumFunc, lParam: Longint): BOOL; external 'EnumWindows@user32.dll stdcall';
function FindWindowEx(hwndParent, hwndChildAfter: HWND; lpszClass, lpszWindow: string): HWND; external 'FindWindowEx{#A}@user32.dll stdcall';
function GetAncestor(hwnd: HWND; gaFlags: UINT): HWND; external 'GetAncestor@user32.dll stdcall';
function GetClientRect(hWnd: HWND; var lpRect: TRect): BOOL; external 'GetClientRect@user32.dll stdcall';
function GetSysColor(nIndex: Integer): DWORD; external 'GetSysColor@user32.dll stdcall';
function SetWindowPos(hWnd, hWndInsertAfter: HWND; X, Y, cx, cy: Integer; uFlags: UINT): BOOL; external 'SetWindowPos@user32.dll stdcall';
function GetWindowRect(hWnd: HWND; var lpRect: TRect): BOOL; external 'GetWindowRect@user32.dll stdcall';
function GetWindowText(hWnd: HWND; lpString: string; nMaxCount: Integer): Integer; external 'GetWindowText{#A}@user32.dll stdcall';
function GetWindowTextLength(hWnd: HWND): Integer; external 'GetWindowTextLength{#A}@user32.dll stdcall';
function GetWindowThreadProcessId(hWnd: HWND; var lpdwProcessId: DWORD): DWORD; external 'GetWindowThreadProcessId@user32.dll stdcall';
function UpdateLayeredWindow(hwnd: HWND; hdcDst: Longint; pptDst, psize: TPoint; hdcSrc: Longint; pptSrc: TPoint; crKey: DWORD; pblend: BLENDFUNCTION; dwFlags: DWORD): BOOL; external 'UpdateLayeredWindow@user32.dll stdcall delayload';

// Window Property Functions
function GetProp(hWnd: HWND; lpString: string): THandle; external 'GetProp{#A}@user32.dll stdcall';
function RemoveProp(hWnd: HWND; lpString: string): THandle; external 'RemoveProp{#A}@user32.dll stdcall';
function SetProp(hWnd: HWND; lpString: string; hData: THandle): BOOL; external 'SetProp{#A}@user32.dll stdcall';

// Message Functions
function SendMessageRECT(hWnd: HWND; Msg: UINT; wParam: Longint; var lParam: TRect): Longint; external 'SendMessage{#A}@user32.dll stdcall';
function SendMessageHDHTI(hWnd: HWND; Msg: UINT; wParam: Longint; var lParam: HD_HITTESTINFO): Longint; external 'SendMessage{#A}@user32.dll stdcall';
function SendMessageTVITEM(hWnd: HWND; Msg: UINT; wParam: Longint; var lParam: TVITEM): Longint; external 'SendMessage{#A}@user32.dll stdcall';
function SendMessageTVHTI(hWnd: HWND; Msg: UINT; wParam: Longint; var lParam: TVHITTESTINFO): Longint; external 'SendMessage{#A}@user32.dll stdcall';
function SendMessageTimeout(hWnd: HWND; Msg: UINT; wParam, lParam: Longint; fuFlags, uTimeout: UINT; var lpdwResult: Longint): Longint; external 'SendMessageTimeout{#A}@user32.dll stdcall';

// Coordinate Space and Transformation Functions
function MapWindowPointsRECT(hWndFrom, hWndTo: HWND; var lpPoints: TRect; cPoints: UINT): Integer; external 'MapWindowPoints@user32.dll stdcall';
function MapWindowPointsPOINT(hWndFrom, hWndTo: HWND; var lpPoints: TPoint; cPoints: UINT): Integer; external 'MapWindowPoints@user32.dll stdcall';
function SetViewportOrgEx(hdc: THandle; X, Y: Integer; var lpPoint: TPoint): BOOL; external 'SetViewportOrgEx@gdi32.dll stdcall';

// Device Context Functions
function CreateCompatibleDC(hdc: THandle): THandle; external 'CreateCompatibleDC@gdi32.dll stdcall';
function DeleteDC(hdc: THandle): BOOL; external 'DeleteDC@gdi32.dll stdcall';
function DeleteObject(hObject: Longint): BOOL; external 'DeleteObject@gdi32.dll stdcall';
function GetCurrentObject(hdc: Longint; uObjectType: UINT): Longint; external 'GetCurrentObject@gdi32.dll stdcall';
function GetDC(hWnd: HWND): Longint; external 'GetDC@User32.dll stdcall';
function GetStockObject(fnObject: Integer): Longint; external 'GetStockObject@gdi32.dll stdcall';
function ReleaseDC(hWnd: HWND; hDC: Longint): Integer; external 'ReleaseDC@user32.dll stdcall';
function SelectObject(hdc: Longint; hgdiobj: Longint): Longint; external 'SelectObject@gdi32.dll stdcall';

// Painting and Drawing Functions
function BeginPaint(hWnd: HWND; var lpPaint: PAINTSTRUCT): Longint; external 'BeginPaint@user32.dll stdcall';
function EndPaint(hWnd: HWND; const lpPaint: PAINTSTRUCT): Boolean; external 'EndPaint@user32.dll stdcall';
function GetUpdateRect(hWnd: HWND; var lpRect: TRect; bErase: BOOL): BOOL; external 'GetUpdateRect@user32.dll stdcall';
function GetWindowDC(hWnd: HWND): Longint; external 'GetWindowDC@user32.dll stdcall';
function InvalidateRect(hWnd: HWND; lpRect: TRect; bErase: Boolean): BOOL; external 'InvalidateRect@user32.dll stdcall';
function SetBkColor(hdc: THandle; crColor: DWORD): DWORD; external 'SetBkColor@gdi32.dll stdcall';
function SetBkMode(hdc: THandle; iBkMode: Integer): Integer; external 'SetBkMode@gdi32.dll stdcall';

// Bitmap Functions
function CreateCompatibleBitmap(hdc: THandle; nWidth, nHeight: Integer): HBITMAP; external 'CreateCompatibleBitmap@gdi32.dll stdcall';
function BitBlt(hdcDest: THandle; nXDest, nYDest, nWidth, nHeight: Integer; hdcSrc: THandle; nXSrc, nYSrc: Integer; dwRop: DWORD): BOOL; external 'BitBlt@gdi32.dll stdcall';
function GdiAlphaBlend(hdcDest: Longint; xoriginDest, yoriginDest, wDest, hDest: Integer; hdcSrc: Longint; xoriginSrc, yoriginSrc, wSrc, hSrc: Integer; ftn: Longint): BOOL; external 'GdiAlphaBlend@gdi32.dll stdcall';
function GetDIBits(hdc: THandle; hbmp: HBITMAP; uStartScan, cScanLines: UINT; var lpvBits: DWORD; var lpbi: BITMAPINFO; uUsage: UINT): Integer; external 'GetDIBits@gdi32.dll stdcall';

// Rectangle Functions
function InflateRect(var lprc: TRect; dx, dy: Integer): BOOL; external 'InflateRect@user32.dll stdcall';
function IsRectEmpty(const lprc: TRect): BOOL; external 'IsRectEmpty@user32.dll stdcall';
function SetRect(var lprc: TRect; xLeft, yTop, xRight, yBottom: Integer): BOOL; external 'SetRect@user32.dll stdcall';
function OffsetRect(var lprc: TRect; dx, dy: Integer): BOOL; external 'OffsetRect@user32.dll stdcall';

// Region Functions
function CombineRgn(hrgnDest, hrgnSrc1, hrgnSrc2: Longint; fnCombineMode: Integer): Integer; external 'CombineRgn@gdi32.dll stdcall';
function CreateRectRgn(nLeftRect, nTopRect, nRightRect, nBottomRect: Integer): Longint; external 'CreateRectRgn@gdi32.dll stdcall';
function CreateRectRgnIndirect(const lprc: TRect): Longint; external 'CreateRectRgnIndirect@gdi32.dll stdcall';
function FillRgn(hdc, hrgn, hbr: THandle): BOOL; external 'FillRgn@gdi32.dll stdcall';
function OffsetRgn(hrgn: THandle; nXOffset, nYOffset: Integer): Integer; external 'OffsetRgn@gdi32.dll stdcall';

// Brush Functions
function GetSysColorBrush(nIndex: Integer): Longint; external 'GetSysColorBrush@user32.dll stdcall';
function CreatePatternBrush(hbmp: HBITMAP): THandle; external 'CreatePatternBrush@gdi32.dll stdcall';
function CreateSolidBrush(crColor: DWORD): THandle; external 'CreateSolidBrush@gdi32.dll stdcall';

// Font and Text Functions
function DrawText(hDC: Longint; lpchText: string; nCount: Integer; var lpRect: TRect; uFormat: UINT): Integer; external 'DrawText{#A}@user32.dll stdcall';

// Clipping Functions
function ExcludeClipRect(hdc: Longint; nLeftRect, nTopRect, nRightRect, nBottomRect: Integer): Integer; external 'ExcludeClipRect@gdi32.dll stdcall';
function GetClipRgn(hdc, hrgn: Longint): Integer; external 'GetClipRgn@gdi32.dll stdcall';
function SelectClipRgn(hdc, hrgn: Longint): Integer; external 'SelectClipRgn@gdi32.dll stdcall';

// Filled Shape Functions
function FillRect(hDC: Longint; const lprc: TRect; hbr: Longint): Integer; external 'FillRect@user32.dll stdcall';

// GDI Print API Functions
function PrintWindow(hwnd: HWND; hdcBlt: Longint; nFlags: UINT): BOOL; external 'PrintWindow@user32.dll stdcall';

// Visual Styles Functions
function BeginBufferedPaint(hdcTarget: Longint; const prcTarget: TRect; dwFormat: Longint; pPaintParams: Longint; var phdc: Longint): Longint; external 'BeginBufferedPaint@uxtheme.dll stdcall delayload';
function BufferedPaintClear(hBufferedPaint: Longint; const prc: TRect): Longint; external 'BufferedPaintClear@uxtheme.dll stdcall delayload';
function BufferedPaintInit(): Longint; external 'BufferedPaintInit@uxtheme.dll stdcall delayload';
function BufferedPaintSetAlpha(hBufferedPaint: Longint; const prc: TRect; alpha: Byte): Longint; external 'BufferedPaintSetAlpha@uxtheme.dll stdcall delayload';
function BufferedPaintUnInit(): Longint; external 'BufferedPaintUnInit@uxtheme.dll stdcall delayload';
function CloseThemeData(hTheme: THandle): Longint; external 'CloseThemeData@uxtheme.dll stdcall';
function DrawThemeBackground(hTheme: THandle; hdc: Longint; iPartId, iStateId: Integer; pRect: TRect; pClipRect: Longint): Longint; external 'DrawThemeBackground@uxtheme.dll stdcall';
function DrawThemeTextEx(hTheme: THandle; hdc: Longint; iPartId, iStateId: Integer; pszText: string; iCharCount: Integer; dwFlags: DWORD; var pRect: TRect; const pOptions: DTTOPTS): Longint; external 'DrawThemeTextEx@uxtheme.dll stdcall delayload';
function EndBufferedPaint(hBufferedPaint: Longint; fUpdateTarget: BOOL): Longint; external 'EndBufferedPaint@uxtheme.dll stdcall delayload';
function GetThemePartSize(hTheme: THandle; hdc: Longint; iPartId, iStateId: Integer; prc, eSize: Longint; var psz: TPoint): Longint; external 'GetThemePartSize@uxtheme.dll stdcall delayload';
function GetThemeTextExtent(hTheme: THandle; hdc: Longint; iPartId, iStateId: Integer; pszText: string; iCharCount: Integer; dwTextFlags: DWORD; pBoundingRect: Longint; var pExtentRect: TRect): Longint; external 'GetThemeTextExtent@uxtheme.dll stdcall delayload';
function GetWindowTheme(hWnd: HWND): THandle; external 'GetWindowTheme@uxtheme.dll stdcall';
function OpenThemeDataEx(hwnd: HWND; pszClassList: string; dwFlags: DWORD): THandle; external 'OpenThemeDataEx@uxtheme.dll stdcall delayload';
function SetWindowTheme(hwnd: HWND; pszSubAppName, pszSubIdList: string): Longint; external 'SetWindowTheme@uxtheme.dll stdcall';

// DWM Functions
function DwmExtendFrameIntoClientArea(hWnd: HWND; const pMarInset: MARGINS): Longint; external 'DwmExtendFrameIntoClientArea@dwmapi.dll stdcall delayload';
function DwmIsCompositionEnabled(var pfEnabled: BOOL): Longint; external 'DwmIsCompositionEnabled@dwmapi.dll stdcall delayload';

// Unicode and Character Set Functions
function MultiByteToWideChar(CodePage: UINT; dwFlags: DWORD; lpMultiByteStr: string; cbMultiByte: Integer; lpWideCharStr: string; cchWideChar: Integer): Integer; external 'MultiByteToWideChar@kernel32.dll stdcall';
function WideCharToMultiByte(CodePage: UINT; dwFlags: DWORD; lpWideCharStr: Longint; cchWideChar: Integer; lpMultiByteStr: string; cbMultiByte, lpDefaultChar: Integer; lpUsedDefaultChar: Longint): Integer; external 'WideCharToMultiByte@kernel32.dll stdcall';

// ComboBox Control Functions
function GetComboBoxInfo(hwndCombo: HWND; var pcbi: COMBOBOXINFO): BOOL; external 'GetComboBoxInfo@user32.dll stdcall';

// Scroll Bar Functions
function GetScrollBarInfo(hwnd: HWND; idObject: Longint; var psbi: SCROLLBARINFO): BOOL; external 'GetScrollBarInfo@user32.dll stdcall';
function GetScrollInfo(hwnd: HWND; fnBar: Integer; var lpsi: SCROLLINFO): BOOL; external 'GetScrollInfo@user32.dll stdcall';

// Keyboard Input Functions
function GetFocus: HWND; external 'GetFocus@user32.dll stdcall';

// Mouse Input Functions
function _TrackMouseEvent(var lpEventTrack: TRACKMOUSEEVENT): BOOL; external '_TrackMouseEvent@comctl32.dll stdcall';
function SetCapture(hWnd: HWND): HWND; external 'SetCapture@user32.dll stdcall';

// Cursor Functions
function GetCursorPos(var lpPoint: TPoint): BOOL; external 'GetCursorPos@user32.dll stdcall';

// Image List Functions
function ImageList_Create(cx, cy: Integer; flags: UINT; cInitial, cGrow: Integer): THandle; external 'ImageList_Create@comctl32.dll stdcall';
function ImageList_DrawEx(himl: THandle; i: Integer; hdcDst: Longint; x, y, dx, dy: Integer; rgbBk, rgbFg: DWORD; fStyle: UINT): BOOL; external 'ImageList_DrawEx@comctl32.dll stdcall';
function ImageList_GetIconSize(himl: THandle; var cx, cy: Integer): BOOL; external 'ImageList_GetIconSize@comctl32.dll stdcall';
function ImageList_ReplaceIcon(himl: THandle; i: Integer; hicon: HICON): Integer; external 'ImageList_ReplaceIcon@comctl32.dll stdcall';

// Icon Functions
function CreateIconFromResourceEx(pbIconBits: Longint; cbIconBits: DWORD; fIcon: BOOL; dwVersion: DWORD; cxDesired, cyDesired: Integer; uFlags: UINT): HICON; external 'CreateIconFromResourceEx@user32.dll stdcall';
function DestroyIcon(hIcon: HICON): BOOL; external 'DestroyIcon@user32.dll stdcall';
function DrawIconEx(hdc: Longint; xLeft, yTop: Integer; hIcon: HICON; cxWidth, cyWidth: Integer; istepIfAniCur: UINT; hbrFlickerFreeDraw: Longint; diFlags: UINT): BOOL; external 'DrawIconEx@user32.dll stdcall';
function ExtractIcon(hInst: Longint; lpszExeFileName: string; nIconIndex: UINT): HICON; external 'ExtractIcon{#A}@shell32.dll stdcall';

// Volume Management Functions
function GetLogicalDrives: DWORD; external 'GetLogicalDrives@kernel32.dll stdcall';
function GetDriveType(lpRootPathName: string): UINT; external 'GetDriveType{#A}@kernel32.dll stdcall';
function GetVolumeInformation(lpRootPathName: string; lpVolumeNameBuffer: Longint; nVolumeNameSize, lpVolumeSerialNumber, lpMaximumComponentLength, lpFileSystemFlags: DWORD; lpFileSystemNameBuffer: string; nFileSystemNameSize: DWORD): BOOL; external 'GetVolumeInformation{#A}@kernel32.dll stdcall';
function QueryDosDevice(lpDeviceName, lpTargetPath: string; ucchMax: DWORD): DWORD; external 'QueryDosDevice{#A}@kernel32.dll stdcall';

// Disk Management Functions
function GetDiskFreeSpaceEx(lpDirectoryName: string; var lpFreeBytesAvailableToCaller, lpTotalNumberOfBytes, lpTotalNumberOfFreeBytes: ULARGE_INTEGER): BOOL; external 'GetDiskFreeSpaceEx{#A}@kernel32.dll stdcall';

// Shell Functions
function SHFileOperation(var lpFileOp: SHFILEOPSTRUCT): Integer; external 'SHFileOperation{#A}@shell32.dll stdcall';
function SHGetFileInfo(pszPath: string; dwFileAttributes: DWORD; var psfi: SHFILEINFO; cbFileInfo, uFlags: UINT): DWORD; external 'SHGetFileInfo{#A}@shell32.dll stdcall';
function SHGetNewLinkInfo(pszLinkTo, pszDir: string; pszName: string; var pfMustCopy: Longint; uFlags: UINT): BOOL; external 'SHGetNewLinkInfo{#A}@shell32.dll stdcall';

// Shell Lightweight Utility Functions
function StrFormatByteSize64(qdw: Currency; pszBuf: AnsiString; cchBuf: UINT): Longint; external 'StrFormatByteSize64A@shlwapi.dll stdcall';

// Shell Registry Handling Functions
function SHCopyKey(hkeySrc: THandle; pszSrcSubKey: string; hkeyDest: THandle; fReserved: DWORD): Longint; external 'SHCopyKey{#A}@shlwapi.dll stdcall';
function SHRegGetPath(const hkey: Integer; pszSubkey, pszValue: string; var pszPath: Char; dwFlags: DWORD): Longint; external 'SHRegGetPath{#A}@shlwapi.dll stdcall';

// Dynamic-Link Library Functions
function LoadLibraryEx(lpFileName: string; hFile: THandle; dwFlags: DWORD): THandle; external 'LoadLibraryEx{#A}@kernel32.dll stdcall';
function GetModuleHandle(lpModuleName: string): THandle; external 'GetModuleHandle{#A}@kernel32.dll stdcall';
function GetProcAddress(hModule: THandle; lpProcName: AnsiString): Longint; external 'GetProcAddress@kernel32.dll stdcall';

// Resource Functions
function EnumResourceNames(hModule: THandle; lpszType, lpEnumFunc, lParam: Longint): BOOL; external 'EnumResourceNames{#A}@kernel32.dll stdcall';
function LoadResource(hModule, hResInfo: THandle): THandle; external 'LoadResource@kernel32.dll stdcall';
function LockResource(hResData: THandle): Longint; external 'LockResource@kernel32.dll stdcall';
function FindResource(hModule: THandle; lpName: Longint; lpType: Integer): THandle; external 'FindResource{#A}@kernel32.dll stdcall';
function SizeofResource(hModule, hResInfo: THandle): DWORD; external 'SizeofResource@kernel32.dll stdcall';
function LoadImage(hInst: THandle; lpszName: Longint; uType: UINT; cxDesired, cyDesired: Integer; fuLoad: UINT): THandle; external 'LoadImage{#A}@user32.dll stdcall';

// CRT Functions
function memcpy(dest: Longint; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyBFH(var dest: BITMAPFILEHEADER; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyBIH(var dest: BITMAPINFOHEADER; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyDWORD(var dest: DWORD; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyLONG(var dest: Longint; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyPI(var dest: PROPERTYITEM; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpySHTEI(var dest: SYSTEM_HANDLE_TABLE_ENTRY_INFO; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyUS(var dest: UNICODE_STRING; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyBF(var dest: Longint; const src: BLENDFUNCTION; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';

// Large Integer Functions
function MulDiv(nNumber, nNumerator, nDenominator: Integer): Integer; external 'MulDiv@kernel32.dll stdcall';

// Tool Help Functions
function CreateToolhelp32Snapshot(dwFlags, th32ProcessID: DWORD): THandle; external 'CreateToolhelp32Snapshot@kernel32.dll stdcall';
#ifdef UNICODE
function Process32First(hSnapshot: THandle; var lppe: TPROCESSENTRY32): Boolean; external 'Process32First{#A}@kernel32.dll stdcall';
function Process32Next(hSnapshot: THandle; var lppe: TPROCESSENTRY32): Boolean; external 'Process32Next{#A}@kernel32.dll stdcall';
#else
function Process32First(hSnapshot: THandle; var lppe: TPROCESSENTRY32): Boolean; external 'Process32First@kernel32.dll stdcall';
function Process32Next(hSnapshot: THandle; var lppe: TPROCESSENTRY32): Boolean; external 'Process32Next@kernel32.dll stdcall';
#endif

// Process and Thread Functions
function CreateRemoteThread(hProcess: THandle; lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags: DWORD; var lpThreadId: DWORD): THandle; external 'CreateRemoteThread@kernel32.dll stdcall';
function GetCurrentProcess: THandle; external 'GetCurrentProcess@kernel32.dll stdcall';
function GetCurrentThreadId: DWORD; external 'GetCurrentThreadId@kernel32.dll stdcall';
function OpenProcess(dwDesiredAccess: DWORD; bInheritHandle: BOOL; dwProcessId: DWORD): THandle; external 'OpenProcess@kernel32.dll stdcall';
function TerminateProcess(hProcess: THandle; uExitCode: UINT): BOOL; external 'TerminateProcess@kernel32.dll stdcall';

// Debugging Functions
function ReadProcessMemoryLONG(hProcess: THandle; lpBaseAddress: Longint; out lpBuffer: Longint; nSize: Longint; out lpNumberOfBytesRead: DWORD): BOOL; external 'ReadProcessMemory@kernel32.dll stdcall';
function ReadProcessMemoryUPP(hProcess: THandle; lpBaseAddress: Longint; out lpBuffer: RTL_USER_PROCESS_PARAMETERS; nSize: Longint; out lpNumberOfBytesRead: DWORD): BOOL; external 'ReadProcessMemory@kernel32.dll stdcall';
function ReadProcessMemoryString(hProcess: THandle; lpBaseAddress: Longint; lpBuffer: string; nSize: Longint; out lpNumberOfBytesRead: DWORD): BOOL; external 'ReadProcessMemory@kernel32.dll stdcall';

// Authorization Functions
function AdjustTokenPrivileges(TokenHandle: THandle; DisableAllPrivileges: BOOL; NewState: TOKEN_PRIVILEGES; BufferLength: DWORD; var PreviousState: TOKEN_PRIVILEGES; var ReturnLength: Longint): BOOL; external 'AdjustTokenPrivileges@advapi32.dll stdcall';
function LookupPrivilegeValue(lpSystemName, lpName: string; var lpLuid: LUID): BOOL; external 'LookupPrivilegeValue{#A}@advapi32.dll stdcall';
function OpenProcessToken(ProcessHandle: THandle; DesiredAccess: DWORD; var TokenHandle: THandle): BOOL; external 'OpenProcessToken@advapi32.dll stdcall';

// Handle and Object Functions
function CloseHandle(hObject: THandle): BOOL; external 'CloseHandle@kernel32.dll stdcall';
function DuplicateHandle(hSourceProcessHandle, hSourceHandle, hTargetProcessHandle: THandle; var lpTargetHandle: THandle; dwDesiredAccess: DWORD; bInheritHandle: BOOL; dwOptions: DWORD): BOOL; external 'DuplicateHandle@kernel32.dll stdcall';

// PSAPI Functions
function GetProcessImageFileName(hProcess: THandle; lpImageFileName: string; nSize: DWORD): DWORD; external 'GetProcessImageFileName{#A}@psapi.dll stdcall';

// Synchronization Functions
function _CreateMutex(lpMutexAttributes: Longint; bInitialOwner: BOOL; lpName: string): Longint; external 'CreateMutex{#A}@kernel32.dll stdcall';
function ReleaseMutex(hMutex: Longint): BOOL; external 'ReleaseMutex@kernel32.dll stdcall';
function WaitForSingleObject(hHandle: THandle; dwMilliseconds: DWORD): DWORD; external 'WaitForSingleObject@kernel32.dll stdcall';

// System Information Functions
function ExpandEnvironmentStrings(lpSrc: string; lpDst: Longint; nSize: DWORD): DWORD; external 'ExpandEnvironmentStrings{#A}@kernel32.dll stdcall';

// File Management Functions
function GetLongPathName(lpszShortPath, lpszLongPath: string; cchBuffer: DWORD): DWORD; external 'GetLongPathName{#A}@kernel32.dll stdcall';
function GetBinaryType(lpApplicationName: string; out lpBinaryType: DWORD): BOOL; external 'GetBinaryType{#A}@kernel32.dll stdcall';
function GetFileType(hFile: THandle): DWORD; external 'GetFileType@kernel32.dll stdcall';

// Memory Management Functions
function GetProcessHeap: THandle; external 'GetProcessHeap@kernel32.dll stdcall';
function HeapAlloc(hHeap: THandle; dwFlags, dwBytes: DWORD): Longint; external 'HeapAlloc@kernel32.dll stdcall';
function HeapFree(hHeap: THandle; dwFlags: DWORD; lpMem: Longint): BOOL; external 'HeapFree@kernel32.dll stdcall';
function HeapSize(hHeap: THandle; dwFlags: DWORD; lpMem: Longint): DWORD; external 'HeapSize@kernel32.dll stdcall';

// Registry Functions
function RegCreateKeyEx(hKey: THandle; lpSubKey: string; Reserved: DWORD; lpClass: string; dwOptions, samDesired: DWORD; lpSecurityAttributes: Longint; var phkResult: THandle; var lpdwDisposition: Longint): Longint; external 'RegCreateKeyEx{#A}@advapi32.dll stdcall';
function RegOpenKeyEx(hKey: THandle; lpSubKey: string; ulOptions, samDesired: DWORD; var phkResult: THandle): Longint; external 'RegOpenKeyEx{#A}@advapi32.dll stdcall';

// Time Functions
function GetSystemTimeAdjustment(var lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled: DWORD): BOOL; external 'GetSystemTimeAdjustment@kernel32.dll stdcall';
function GetTickCount: DWORD; external 'GetTickCount@kernel32.dll stdcall delayload';

// Timer Functions
function KillTimer(hWnd: HWND; var uIDEvent: TIMERPARAM): BOOL; external 'KillTimer@user32.dll stdcall delayload';
function SetTimer(hWnd: HWND; var nIDEvent: TIMERPARAM; uElapse: UINT; lpTimerFunc: Longint): UINT_PTR; external 'SetTimer@user32.dll stdcall delayload';

// string Functions
function LoadString(hInstance: THandle; uID: SmallInt; lpBuffer: string; nBufferMax: Integer): Integer; external 'LoadString{#A}@user32.dll stdcall';

// Configuration Reference
function GetSystemMetrics(nIndex: Integer): Integer; external 'GetSystemMetrics@user32.dll stdcall';

// System Information Functions
function NtQuerySystemInformation(SystemInformationClass, SystemInformation, SystemInformationLength: Longint; var ReturnLength: DWORD): DWORD; external 'NtQuerySystemInformation@ntdll.dll stdcall';
function NtQueryInformationProcess(ProcessHandle: THandle; ProcessInformationClass: Longint; out ProcessInformation: PROCESS_BASIC_INFORMATION; ProcessInformationLength: Longint; out ReturnLength: DWORD): DWORD; external 'NtQueryInformationProcess@ntdll.dll stdcall';

// NtXxx Routines
function NtQueryObject(Handle: THandle; ObjectInformationClass: DWORD; ObjectInformation: Longint; ObjectInformationLength: DWORD; var ReturnLength: DWORD): DWORD; external 'NtQueryObject@ntdll.dll stdcall';

// Hook Functions
function CallNextHookEx(hhk: THandle; nCode: Integer; wParam, lParam: Longint): Longint; external 'CallNextHookEx@user32.dll stdcall';
function SetWindowsHookEx(idHook: Integer; lpfn, hMod: Longint; dwThreadId: DWORD): THandle; external 'SetWindowsHookEx{#A}@user32.dll stdcall';
function UnhookWindowsHookEx(hhk: THandle): BOOL; external 'UnhookWindowsHookEx@user32.dll stdcall';

// Structured Storage Functions
function CreateStreamOnHGlobal(hGlobal: THandle; fDeleteOnRelease: BOOL; var ppstm: Longint): Longint; external 'CreateStreamOnHGlobal@ole32.dll stdcall';

// COM Fundamentals Functions
function CLSIDFromString(lpsz: string; var pclsid: CLSID): Longint; external 'CLSIDFromString@ole32.dll stdcall';
function StringFromCLSID(rclsid: CLSID; var lplpsz: Longint): Longint; external 'StringFromCLSID@ole32.dll stdcall';

// GDI+ Functions
procedure GdiplusShutdown(lpToken: Longint); external 'GdiplusShutdown@gdiplus.dll stdcall';
function GdiplusStartup(var lpToken: Longint; const gdipInput: GDIPLUSSTARTUPINPUT; gdipOutput: Longint): Longint; external 'GdiplusStartup@gdiplus.dll stdcall';

// GDI+ Image Functions
function GdipDisposeImage(lpImage: Longint): Longint; external 'GdipDisposeImage@gdiplus.dll stdcall';
function GdipGetImageHeight(lpImage: Longint; var lpHeight: UINT): Longint; external 'GdipGetImageHeight@gdiplus.dll stdcall';
function GdipGetImageWidth(lpImage: Longint; var lpWidth: UINT): Integer; external 'GdipGetImageWidth@gdiplus.dll stdcall';
function GdipGetImageRawFormat(lpImage: Longint; var lpFormat: CLSID): Longint; external 'GdipGetImageRawFormat@gdiplus.dll stdcall';
function GdipGetPropertyItem(lpImage: Longint; uPropId, uPropSize: UINT; lppi: Longint): Longint; external 'GdipGetPropertyItem@gdiplus.dll stdcall';
function GdipGetPropertyItemSize(lpImage: Longint; uPropId: UINT; var uSize: UINT): Longint; external 'GdipGetPropertyItemSize@gdiplus.dll stdcall';
function GdipImageGetFrameCount(lpImage: Longint; dimCLSID: CLSID; var lpCount: UINT): Longint; external 'GdipImageGetFrameCount@gdiplus.dll stdcall';
function GdipImageRotateFlip(lpImage: Longint; rfType: Longint): Longint; external 'GdipImageRotateFlip@gdiplus.dll stdcall';
function GdipImageSelectActiveFrame(lpImage: Longint; dimCLSID: CLSID; uFrameIndex: UINT): Longint; external 'GdipImageSelectActiveFrame@gdiplus.dll stdcall';
function GdipLoadImageFromStream(lpStream: Longint; var lpImage: Longint): Longint; external 'GdipLoadImageFromStream@gdiplus.dll stdcall';

// GDI+ Bitmap Functions
function GdipCreateBitmapFromScan0(nWidth, nHeight, nStride, nFormat, lpScan0: Longint; var lpBitmap: Longint): Longint; external 'GdipCreateBitmapFromScan0@gdiplus.dll stdcall';
function GdipCreateHBITMAPFromBitmap(lpBitmap: Longint; var hbmReturn: HBITMAP; crBackground: DWORD): Longint; external 'GdipCreateHBITMAPFromBitmap@gdiplus.dll stdcall';

var
  InstallTypePage, SettingsPage, StylesPage, PreparePage: TInputOptionWizardPage;
  DefaultInstallTypeBitmapImage, PortableInstallTypeBitmapImage, DefaultUninstallTypeBitmapImage, ThumbsBitmapImage, PreviewFormBitmapImage, PreparePageBitmap: TBitmapImage;
  g_DriveHeader: THeaderControl;
  g_DriveListView, g_PrepareListView: TListView;
  PreviewForm: TForm;
  WelcomeMessage, DefaultInstallTypeCaption, PortableInstallTypeCaption, DefaultUninstallTypeCaption, ComponentListInfoLabel, SettingsInfoLabel, StylesInfoLabel, TasksInfoLabel, SetupDone, FinishedMessage, URLLabel: TNewStaticText;
  DefaultInstallType, PortableInstallType, DefaultUninstallType: TNewRadioButton;
  AddSettingsListBox: TListBox;
  PreviewButton, DetailsButton: TNewButton;
  DetailsMemo: TNewMemo;
  StartMenuTreeView: TStartMenuFolderTreeView;
  ComponentsPageDescriptionBevel, SettingsPageDescriptionBevel, PreviewBevel, StylePageDescriptionBevel, SelectTasksPageDescriptionBevel: TBevel;
  SettingsPageControl: TPageControl;
  g_UninstallFilesHelper: TStringList;

  g_TypesHelper: array of TYPEHELPER;
  g_ComponentsHelper: array of COMPHELPER;
  g_TasksHelper: array of TASKHELPER;
  g_StylesHelper: array of STYLEHELPER;
  g_SetHelper: array of SETTINGHELPER;
  g_AddSetHelper: array of ADDSETTINGHELPER;

  PercentTimer: TTimer;
  szProfilesPath, szPreviousSelectedDefaultAppPath, szPreviousSelectedPortableAppPath: string;
  g_AeroControls: array of TControl;
  g_fEnabled, g_bLoadAppOppKey: BOOL;
  g_Border: TBitmap;
  g_pWndProc, g_pStaticWndProc, g_pButtonWndProc, g_pEditWndProc, g_pRichEditWndProc,
  g_pCheckListBoxWndProc, g_pListBoxWndProc, g_pHeaderWndProc, g_pListViewWndProc, g_pTreeViewWndProc,
  g_pComboBoxWndProc, g_pComboLBoxWndProc, g_pPageControlWndProc, g_pTabSheetWndProc, g_pUpDownWndProc: Longint;
#if aero == 1
  g_pCBTProc, g_pDlgProc, g_pStaticDlgProc, g_pButtonDlgProc: Longint;
  g_hDlgHook, g_hVertShowDesktopThemeButton: THandle;
#endif
  g_hMutex,
  g_hThemeHeader, g_hThemeButton, g_hThemeArrowBtnUp, g_hThemeArrowBtnDown, g_hThemeArrowBtnLeft,
  g_hThemeArrowBtnRight, g_hThemeEdit, g_hThemeComboBox, g_hThemeTreeView: THandle;
  g_anitp: ANITIMERPARAM;
  g_pToken: Longint;
  g_GlassRgn: THandle;
#if debug == 1
  g_hDC: THandle;
#endif

///////////////////////////////////////////////////
function StrToWStr(const szString: string): string;
#ifndef UNICODE
var
  iLen: Integer;
#endif
begin
#ifndef UNICODE
  iLen := MultiByteToWideChar(0, 1, szString, -1, '', 0);
  if iLen > 1 then
  begin
    Result := StringOfChar(#0, iLen shl 1);
    MultiByteToWideChar(0, 1, szString, -1, Result, iLen);
  end;
#else
  Result := szString;
#endif
end;

/////////////////////////////////////////////////////////
function CharArrayToString(AChar: array of Char): string;
begin
  Result := '';
  while AChar[Length(Result)] <> #0 do
    Insert(AChar[Length(Result)], Result, Length(Result) + 1);
end;

//////////////////////////////////////////////////////////
function GetClassNameFromHandle(const hWnd: HWND): string;
begin
  Result := StringOfChar(#0, 64);
  GetClassName(hWnd, Result, Length(Result));
  Result := TrimRight(Result);
end;

////////////////////////////////////////////////////////
function GetCaptionFromHandle(const hWnd: HWND): string;
begin
  Result := StringOfChar(#0, GetWindowTextLength(hWnd) + 1);
  GetWindowText(hWnd, Result, Length(Result));
  Result := TrimRight(Result);
end;

////////////////////////////////////////////////////
function GetCLUIFrames(const Param: string): string;
var
  i, n: Integer;
begin
  with TStringList.Create do
  begin
    Sorted := True;
    CommaText := WizardSelectedComponents(False);
    for i := 0 to Count - 1 do
      if Pos(Format(',%s,', [Strings[i]]), ',{#CLUIFrames},') > 0 then
        n := n + 1;
    case Param of
//      'Height10':
//        Result := Format('%d', [4 * (n + (5 - (n mod 5)) mod 5) + 1]);
      'Height10':
        case n of
          1..8: Result := '21';
          9..16: Result := '39';
          17, 18: Result := '57';
          19, 20: Result := '57';
          21..24: Result := '57';
          25: Result := '75';
          26..32: Result := '75';
          33..40: Result := '93';
          41..48: Result := '111';
        end;
      'TBVisile10':
        Result := Format('%d', [integer(n > 8)]);
    end;
    // ���� �������� ������� GetCLUIFrames ����� EqualSections, ...
    // �� � ����������� �� ����� ���������� n ...
    // ����������� ������� ����� '1' (�� 1 �� 5 ����������)...
    // ����� '0' (6 ��� 7 ����������)
    case Param of
      'EqualSections':
        case n of
          1..5: Result := '1';
          6..8: Result := '0';
          9, 10: Result := '1';
          11, 12: Result := '0';
          13, 14: Result := '0';
          15, 16: Result := '0';
          17, 18: Result := '0';
          19, 20: Result := '0';
          21..24: Result := '0';
          25: Result := '0';
          26..48: Result := '0';
        end;
    end;
    case Param of
      'StatusBarProtosPerLine':
        case n of
          1..5: Result := '5';
          6..8: Result := '8';
          9, 10: Result := '5';
          11, 12: Result := '6';
          13, 14: Result := '7';
          15, 16: Result := '8';
          17, 18: Result := '6';
          19, 20: Result := '7';
          21: Result := '7';
          22..24: Result := '8';
          25: Result := '7';
          26..28: Result := '7';
          29..32: Result := '8';
          33..35: Result := '7';
          36..40: Result := '8';
          41, 42: Result := '7';
          43..48: Result := '8';
        end;
    end;
    Free;
  end;
end;

/////////////////////////////////////////////////////////
function EnumerateCSIDLUsers(Param: string): TStringList;
var
  Names: TArrayOfString;
  szRes: string;
  pszPath: array [0..259] of Char;
  i: Integer;
begin
  if (Result = nil) then
    Result := TStringList.Create;
  Result.Sorted := True;
  if not RegGetSubkeyNames(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList', Names) then Exit;
  for i := 0 to GetArrayLength(Names) - 1 do
    if Length(Names[i]) > 8 then
    begin
      szRes := '';
      if SHRegGetPath(HKLM, Format('%s\%s', ['SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList', Names[i]]), 'ProfileImagePath', pszPath[0], 0) <> 0 then Continue;
      while pszPath[Length(szRes)] <> #0 do
          Insert(pszPath[Length(szRes)], szRes, Length(szRes) + 1);
      if not FileExists(Format('%s\NTUSER.DAT', [szRes])) then Continue;
      StringChangeEx(Param, GetUserNameString, ExtractFileName(szRes), True);
      Result.Add(Param);
  end;
end;

////////////////////////////
procedure CreateQLShortcuts;
var
  iUsers: TStringList;
  i: Integer;
begin
  iUsers := EnumerateCSIDLUsers(ExpandConstant('{userappdata}'));
  for i := 0 to iUsers.Count - 1 do
    if (CompareText(ExpandConstant('{userappdata}'), iUsers[i]) <> 0) and DirExists(Format('%s\%s', [iUsers[i], 'Microsoft\Internet Explorer\Quick Launch'])) then
      CreateShellLink(Format('%s\%s.lnk', [iUsers[i], 'Microsoft\Internet Explorer\Quick Launch\{#AppName}']), '', ExpandConstant('{app}\{#AppExeName}'), '', ExpandConstant('{app}'), '', 0, SW_SHOWNORMAL);
  iUsers.Free;
end;

////////////////////////////
procedure DeleteQLShortcuts;
var
  iUsers: TStringList;
  i: Integer;
begin
  iUsers := EnumerateCSIDLUsers(ExpandConstant('{userappdata}'));
  for i := 0 to iUsers.Count - 1 do
    if CompareText(ExpandConstant('{userappdata}'), iUsers[i]) <> 0 then
      DeleteFile(Format('%s\%s.lnk', [iUsers[i], 'Microsoft\Internet Explorer\Quick Launch\{#AppName}']));
  iUsers.Free;
end;

#if splash == 1
/////////////////////////////////////////////////////////////////////////////////////////
procedure SplashTimerProc(hwnd: HWND; uMsg: UINT; var wParam: TIMERPARAM; dwTime: DWORD);
var
  dwCurrentTime: DWORD;
  ptSize, ptSrc, ptDst: TPoint;
begin
  { get coords }
  ptDst.x := (GetSystemMetrics(SM_CXSCREEN) - wParam.bmp.Width) shr 1;
  ptDst.y := (GetSystemMetrics(SM_CYSCREEN) - wParam.bmp.Height) shr 1;
  ptSize.x := wParam.bmp.Width;
  ptSize.y := wParam.bmp.Height;

  { current time }
  dwCurrentTime := dwTime - wParam.dwStart;

  { kill timer }
  if dwCurrentTime > wParam.dwFadeIn + wParam.dwNormal + wParam.dwFadeOut then
  begin
    KillTimer(hwnd, wParam);
    SendMessage(hwnd, WM_CLOSE, 0, 0);
  end;

  { fade in }
  if dwCurrentTime < wParam.dwFadeIn then
  begin
    wParam.bf.SourceConstantAlpha := MulDiv($FF, dwCurrentTime, wParam.dwFadeIn + 1);
    UpdateLayeredWindow(hwnd, 0, ptDst, ptSize, wParam.bmp.Canvas.Handle, ptSrc, 0, wParam.bf, ULW_ALPHA);
  end;

  { normal }
  if (dwCurrentTime > wParam.dwFadeIn) and (dwCurrentTime < wParam.dwFadeIn + wParam.dwNormal) then
  begin
    wParam.bf.SourceConstantAlpha := $FF;
    UpdateLayeredWindow(hwnd, 0, ptDst, ptSize, wParam.bmp.Canvas.Handle, ptSrc, 0, wParam.bf, ULW_ALPHA);
  end;

  { fade out }
  if dwCurrentTime > wParam.dwFadeIn + wParam.dwNormal then
  begin
    wParam.bf.SourceConstantAlpha := $FF - MulDiv($FF, dwCurrentTime - wParam.dwFadeIn - wParam.dwNormal, wParam.dwFadeOut + 1);
    UpdateLayeredWindow(hwnd, 0, ptDst, ptSize, wParam.bmp.Canvas.Handle, ptSrc, 0, wParam.bf, ULW_ALPHA);
  end;
end;

/////////////////////////////////////////////////////
function GetBitmapBitCount(const bmp: TBitmap): WORD;
var
  MemStream: TMemoryStream;
  szBuffer: string;
begin
  Result := -1;
  MemStream := TMemoryStream.Create;
  try
    bmp.SaveToStream(MemStream);
    MemStream.Position := $1C; // biBitCount member of BITMAPINFOHEADER struct offset
    szBuffer := StringOfChar(#0, 1);
    if MemStream.Read(szBuffer, 1) = 1 then
      Result := Ord(szBuffer[1]);
  finally
    MemStream.Free;
  end;
end;

/////////////////////////////////////////////////////////////////
procedure ShowSplash(const dwFadeIn, dwNormal, dwFadeOut: DWORD);
// dwFadeIn..: fade in stage in ms
// dwNormal..: normal stage in ms
// dwFadeOut : fade out stage in ms
var
  lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled: DWORD;
  tp: TIMERPARAM;
begin
  if WizardSilent then Exit;

  { load bitmap }
  tp.bmp := TBitmap.Create;
  TBitmap(tp.bmp).LoadFromResourceName(HInstance, '_IS_SPLASH');

  { get bitmap bit count }
  case GetBitmapBitCount(tp.bmp) of
    -1:
      begin
        tp.bmp.Free;
        Exit;
      end;
    32:
      tp.bf.AlphaFormat := AC_SRC_ALPHA;
  end;

  { create splash form }
  with TForm.Create(nil) do
  begin
    BorderStyle := bsNone;
    FormStyle := fsStayOnTop;
    Position := poScreenCenter;

    { set dimensions }
    Width := tp.bmp.Width;
    Height := tp.bmp.Height;

    { set layered exstyle }
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_LAYERED);

    { get minimal timer interval }
    GetSystemTimeAdjustment(lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled);

    { fill user defined struct }
    tp.bf.BlendOp := AC_SRC_OVER;
    tp.dwStart := GetTickCount;
    tp.dwFadeIn := dwFadeIn;
    tp.dwNormal := dwNormal;
    tp.dwFadeOut := dwFadeOut;

    { start timer }
    SetTimer(Handle, tp, lpTimeIncrement div 10000, CallbackAddr('SplashTimerProc'));

    { show form }
    ShowModal;

    { cleanup }
    Close;
    tp.bmp.Free;
    Free;
  end;
end;
#endif

/////////////////////////////////////////////////////////////////////////////////
function GetFilesInUse(const szPath: string; const AListView: TListView): string;
var
  dwDrives, dwLength, dwBufferLength, dwHandles, dwObjectTypeLength, dwObjectNameLength, dwFileType: DWORD;
  sht: SYSTEM_HANDLE_TABLE_ENTRY_INFO;
  shi: SYSTEM_HANDLE_INFORMATION;
  szBuffer, szProcess, szFile: string;
  lpBuffer, lpObjectType, lpObjectName: Longint;
  hHeap, hProcess, hDuplicate, hImgList: THandle;
  i, j: Integer;
  us: UNICODE_STRING;
  DrivesList, ProcessNamesList, FileNamesList: TStringList;
  shfi: SHFILEINFO;
begin
  if not DirExists(szPath) then Exit;

  if Assigned(AListView) then
    AListView.Items.Clear;
  ProcessNamesList := TStringList.Create;
  ProcessNamesList.Sorted := True;
  ProcessNamesList.Duplicates := dupIgnore;

  { get drives DOS names }
  DrivesList := TStringList.Create;
  DrivesList.Sorted := True;
  dwDrives := GetLogicalDrives;
  for i := 2 to 25 do if dwDrives and (1 shl i) <> 0 then
  begin
    szBuffer := StringOfChar(#0, MAX_PATH);
    QueryDosDevice(Format('%s:', [Chr(Ord('A') + i)]), szBuffer, Length(szBuffer));
    DrivesList.Add(Format('%s:=%s', [Chr(Ord('A') + i), TrimRight(szBuffer)]));
  end;

  { convert path to DOS name }
  szBuffer := StringOfChar(#0, MAX_PATH);
  QueryDosDevice(ExtractFileDrive(szPath), szBuffer, Length(szBuffer));
  szBuffer := TrimRight(szBuffer);
  StringChangeEx(szPath, ExtractFileDrive(szPath), szBuffer, True);

  { enumerate processes }
  hHeap := GetProcessHeap;
  try
    { mem alloc }
    dwLength := 1024;
    repeat
      if lpBuffer <> 0 then
        HeapFree(hHeap, 0, lpBuffer);
      lpBuffer := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, dwLength);
      if lpBuffer = 0 then Exit;
      dwBufferLength := HeapSize(hHeap, 0, lpBuffer);
    until NtQuerySystemInformation(SystemHandleInformation, lpBuffer, dwBufferLength, dwLength) = NT_SUCCESS;
    dwHandles := (dwLength - SizeOf(shi.NumberOfHandles)) div SizeOf(shi.Handles);

    { enumerate handles }
    for i := 0 to dwHandles - 1 do
    begin
      memcpySHTEI(sht, lpBuffer + SizeOf(shi.NumberOfHandles) + i * SizeOf(sht), SizeOf(sht));
      if (sht.GrantedAccess and FILE_CREATE_PIPE_INSTANCE = FILE_CREATE_PIPE_INSTANCE) then Continue;
      if not ((sht.GrantedAccess and FILE_READ_EA = FILE_READ_EA) or
        (sht.GrantedAccess and FILE_EXECUTE = FILE_EXECUTE)) then Continue;

      { open process }
      hProcess := OpenProcess(PROCESS_DUP_HANDLE or PROCESS_QUERY_INFORMATION, False, sht.UniqueProcessId);
      if hProcess <> 0 then
      try
        if DuplicateHandle(hProcess, sht.HandleValue, GetCurrentProcess, hDuplicate, 0, False, DUPLICATE_SAME_ACCESS) then
        try
          { get object type }
          dwLength := SizeOf(us);
          repeat
            if lpObjectType <> 0 then
              HeapFree(hHeap, 0, lpObjectType);
            lpObjectType := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, dwLength);
            if lpObjectType = 0 then Exit;
            dwObjectTypeLength := HeapSize(hHeap, 0, lpObjectType);
          until NtQueryObject(hDuplicate, ObjectTypeInformation, lpObjectType, dwObjectTypeLength, dwLength) = NT_SUCCESS;
          memcpyUS(us, lpObjectType, SizeOf(us));
        #ifdef UNICODE
          szFile := CastIntegerToString(us.Buffer);
        #else
          szFile := StringOfChar(#0, us.Length shr 1);
          WideCharToMultiByte(0, 0, us.Buffer, -1, szFile, us.Length shr 1, 0, 0);
        #endif
          { if file }
          if CompareText(szFile, 'File') = 0 then
          begin
            dwFileType := GetFileType(hDuplicate);
            if dwFileType <> FILE_TYPE_DISK then Continue;

            { get file name }
            dwLength := SizeOf(us);
            repeat
              HeapFree(hHeap, 0, lpObjectName);
              lpObjectName := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, dwLength);
              dwObjectNameLength := HeapSize(hHeap, 0, lpObjectName);
            until NtQueryObject(hDuplicate, ObjectNameInformation, lpObjectName, dwObjectNameLength, dwLength) = NT_SUCCESS;
            memcpyUS(us, lpObjectName, SizeOf(us));
          #ifdef UNICODE
            szFile := CastIntegerToString(us.Buffer);
          #else
            szFile := StringOfChar(#0, us.Length shr 1);
            WideCharToMultiByte(0, 0, us.Buffer, -1, szFile, us.Length shr 1, 0, 0);
          #endif
            { convert short filename to long if need }
            for j := 0 to DrivesList.Count - 1 do
              if Pos(DrivesList.Values[DrivesList.Names[j]], szFile) = 1 then
              begin
                StringChangeEx(szFile, DrivesList.Values[DrivesList.Names[j]], DrivesList.Names[j], True);
                szBuffer := StringOfChar(#0, MAX_PATH);
                if GetLongPathName(szFile, szBuffer, Length(szBuffer)) > 0 then
                begin
                  szFile := TrimRight(szBuffer);
                  StringChangeEx(szFile, DrivesList.Names[j], DrivesList.Values[DrivesList.Names[j]], True);
                end;
                Break;
              end;

            { get process name }
            szProcess := StringOfChar(#0, 1024);
            if GetProcessImageFileName(hProcess, szProcess, Length(szProcess)) > 0 then
            begin
              szProcess := TrimRight(szProcess);
              if ((Pos(Lowercase(szPath), Lowercase(szProcess)) = 1) and (sht.GrantedAccess and FILE_EXECUTE = FILE_EXECUTE)) or  // executed process in path specified by param
                  ((Pos(Lowercase(szPath), Lowercase(szFile)) = 1) and (sht.GrantedAccess and FILE_EXECUTE = 0)) then             // read extended file attribute
              begin
                { dos name to name }
                for j := 0 to DrivesList.Count - 1 do
                  if Pos(DrivesList.Values[DrivesList.Names[j]], szProcess) = 1 then
                  begin
                    StringChangeEx(szProcess, DrivesList.Values[DrivesList.Names[j]], DrivesList.Names[j], True);
                    Break;
                  end;
                for j := 0 to DrivesList.Count - 1 do
                  if Pos(DrivesList.Values[DrivesList.Names[j]], szFile) = 1 then
                  begin
                    StringChangeEx(szFile, DrivesList.Values[DrivesList.Names[j]], DrivesList.Names[j], True);
                    Break;
                  end;

                { add process/file }
                if CompareText(szProcess, ExpandConstant('{uninstallexe}')) <> 0 then   // exlude uninstaller
                begin
                  ProcessNamesList.AddObject(szProcess, TStringList.Create);
                  with TStringList(ProcessNamesList.Objects[ProcessNamesList.Count - 1]) do
                  begin
                    Sorted := True;
                    Duplicates := dupIgnore;
                    Add(Format(' � %s', [szFile]));
                  end;
                  //SaveStringToFile('{#SourcePath}\processes.log', Format('GrantedAccess: %x'#13#10'Process: %s'#13#10'File: %s'#13#10#13#10, [sht.GrantedAccess, szProcess, szFile]), True);
                end;
              end;
            end;
          end;
        finally
          CloseHandle(hDuplicate);
        end;
      finally
        CloseHandle(hProcess);
      end;
    end;
  finally
    { result }
    Result := ProcessNamesList.Text;
    StringChangeEx(Result, #13#10, '|', True);

    { fill listview }
    if Assigned(AListView) then
    begin
      { create imagelist }
      if Assigned(AListView.SmallImages) then
          AListView.SmallImages.Free;
      hImgList := ImageList_Create(16, 16, ILC_COLOR32, 0, 0);
      AListView.Perform(LVM_SETIMAGELIST, LVSIL_SMALL, hImgList);

      { add items }
      with AListView.Items do
      begin
        BeginUpdate;
        for i := 0 to ProcessNamesList.Count - 1 do
        begin
          { add process name }
          Add;
          with Item[Count - 1] do
          begin
            SHGetFileInfo(ProcessNamesList[i], 0, shfi, SizeOf(shfi), SHGFI_ICON or SHGFI_SMALLICON);
            Caption := ExtractFileName(ProcessNamesList[i]);
            ImageIndex := ImageList_ReplaceIcon(hImgList, -1, shfi.hIcon);
          end;

          { add files }
          FileNamesList := TStringList(ProcessNamesList.Objects[i]);
          if Assigned(FileNamesList) then
          begin
            for j := 0 to FileNamesList.Count - 1 do
            begin
              Add;
              with Item[Count - 1] do
              begin
                Caption := FileNamesList[j];
                ImageIndex := -1;
              end;
            end;
            FileNamesList.Free;
          end;
        end;
        EndUpdate;
      end;

      { adjust horz size }
      SendMessage(AListView.Handle, LVM_SETCOLUMNWIDTH, 0, LVSCW_AUTOSIZE_USEHEADER);
    end;

    { free memory }
    if lpBuffer <> 0 then
      HeapFree(hHeap, 0, lpBuffer);
    if lpObjectType <> 0 then
      HeapFree(hHeap, 0, lpObjectType);
    if lpObjectName <> 0 then
      HeapFree(hHeap, 0, lpObjectName);
    DrivesList.Free;
    ProcessNamesList.Free;
  end;
end;

////////////////////////////////////////////////////////////
function EnumWindowsProc(hwnd: HWND; lParam: Longint): BOOL;
var
  dwID: DWORD;
  lResult: Longint;
begin
  Result := True;
  GetWindowThreadProcessId(hwnd, dwID);
  if dwID = lParam then
    Result := SendMessageTimeout(hwnd, WM_CLOSE, 0, 0, SMTO_BLOCK or SMTO_ABORTIFHUNG, 5000, lResult) <> 0;
end;

//////////////////////////////////////////////////////////////////////////////////
function TerminateApp(const szProcessList: string; const dwTimeout: DWORD): DWORD;
// szProcessList.:   process names or full paths of processes delimited by vertical bar, e.g. calc.exe|notepad.exe|c:\hungtest.exe
// dwTimeout.....:   kill timeout in ms
var
  hProcessSnap, hProc, hToken, hThread, lpProcName: THandle;
  pe32: TPROCESSENTRY32;
  bProcFind: Boolean;
  szExeFile, szExePath, szFileName, szDeviceName: string;
  tkp: TOKEN_PRIVILEGES;
  SeDebugNameValue: LUID;
  i, ret: Longint;
  lpThreadId, dwDrives: DWORD;
begin
  hProcessSnap := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  if hProcessSnap = INVALID_HANDLE_VALUE then Exit;
  try
    with TStringList.Create do
    begin
      StringChangeEx(szProcessList, '|', #13#10, True);
      Text := szProcessList;

      { enumerate processes }
      pe32.dwSize := SizeOf(pe32);
      if not Process32First(hProcessSnap, pe32) then Exit;
      repeat
        bProcFind := False;
        szExeFile := CharArrayToString(pe32.szExeFile);
        for i := 0 to Count - 1 do
        begin
          if CompareText(szExeFile, ExtractFileName(Strings[i])) = 0 then
          begin
            bProcFind := True;
            szExePath := Strings[i];
            Break;
          end;
        end;
        if not bProcFind then Continue;

        // try open process
        hProc := OpenProcess(PROCESS_TERMINATE or PROCESS_CREATE_THREAD or PROCESS_QUERY_INFORMATION or SYNCHRONIZE, False, pe32.th32ProcessID);
        if hProc = TA_FAILED then
        begin
          // open process token adjust privileges
          if not OpenProcessToken(GetCurrentProcess, TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken) then Exit;
          if not LookupPrivilegeValue('', 'SeDebugPrivilege', SeDebugNameValue) then Exit;
          try
            // fill token privileges struct
            tkp.PrivilegeCount := 1;
            tkp.Privileges[0].Luid := SeDebugNameValue;
            tkp.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;

            // set debug privileges
            if not AdjustTokenPrivileges(hToken, False, tkp, SizeOf(tkp), tkp, ret) then Exit;

            // try open process with debug privileges
            hProc := OpenProcess(PROCESS_TERMINATE or PROCESS_CREATE_THREAD or PROCESS_QUERY_INFORMATION or SYNCHRONIZE, False, pe32.th32ProcessID);
            if hProc = TA_FAILED then Exit;
          finally
            tkp.Privileges[0].Attributes := 0;
            AdjustTokenPrivileges(hToken, False, tkp, SizeOf(tkp), tkp, ret);
            CloseHandle(hToken);
          end;
        end;

        // if szProcess is full path
        if CompareText(szExePath, szExeFile) <> 0 then
        begin
          szFileName := StringOfChar(#0, 1024);
          if GetProcessImageFileName(hProc, szFileName, Length(szFileName)) > 0 then
          begin
            szFileName := TrimRight(szFileName);
            dwDrives := GetLogicalDrives;
            for i := 2 to 25 do if dwDrives and (1 shl i) <> 0 then
            begin
              szDeviceName := StringOfChar(#0, MAX_PATH);
              QueryDosDevice(Format('%s:', [Chr(Ord('A') + i)]), szDeviceName, Length(szDeviceName));
              szDeviceName := TrimRight(szDeviceName);
              if Pos(szDeviceName, szFileName) = 0 then Continue;
              StringChangeEx(szFileName, szDeviceName, Format('%s:', [Chr(Ord('A') + i)]), True);
              if CompareText(szExePath, szFileName) = 0 then Break;
            end;
            if CompareText(szExePath, szFileName) <> 0 then
            begin
              CloseHandle(hProc);
              Continue;
            end;
          end;
        end;

        // try stop process
        try
          if not EnumWindows(CallbackAddr('EnumWindowsProc'), pe32.th32ProcessID) then
          begin
            if TerminateProcess(hProc, 0) then
              Result := TA_SUCCESS_KILL;
          end
          else
          case WaitForSingleObject(hProc, dwTimeout) of
            WAIT_OBJECT_0:
              Result := TA_SUCCESS_CLEAN;
            WAIT_TIMEOUT:
              try
                lpProcName := GetProcAddress(GetModuleHandle('kernel32.dll'), 'ExitProcess');
                if lpProcName = 0 then Exit;
                hThread := CreateRemoteThread(hProc, 0, 0, lpProcName, 0, 0, lpThreadId);
                case WaitForSingleObject(hThread, dwTimeout) of
                  WAIT_OBJECT_0:
                    Result := TA_SUCCESS_CLEAN;
                  WAIT_TIMEOUT,
                  WAIT_FAILED:
                    if TerminateProcess(hProc, 0) then
                      Result := TA_SUCCESS_KILL;
                end;
              finally
                CloseHandle(hThread);
              end;
          end;
        finally
          CloseHandle(hProc);
        end;
      until not Process32Next(hProcessSnap, pe32);
      Free;
    end;
  finally
    CloseHandle(hProcessSnap);
  end;
end;

///////////////////////////////////////////////////////////
procedure WaitUninstaller(const szUninstallString: string);
var
  hProcessSnap, hProcess: THandle;
  pe32: TPROCESSENTRY32;
  pbi: PROCESS_BASIC_INFORMATION;
  upp: RTL_USER_PROCESS_PARAMETERS;
  lpUserProcessInfo: Longint;
  ReturnLength: DWORD;
  szCommandLine: string;
begin
  hProcessSnap := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  if hProcessSnap = INVALID_HANDLE_VALUE then Exit;
  try
    pe32.dwSize := SizeOf(pe32);
    if not Process32First(hProcessSnap, pe32) then Exit;
    repeat
      { open process }
      hProcess := OpenProcess(PROCESS_QUERY_INFORMATION or PROCESS_VM_READ or SYNCHRONIZE, False, pe32.th32ProcessID);
      if hProcess = 0 then Continue;

      { get command line }
      try
        if NtQueryInformationProcess(hProcess, 0, pbi, SizeOf(pbi), ReturnLength) = NT_SUCCESS then
        begin
          if ReadProcessMemoryLONG(hProcess, pbi.PebBaseAddress + $10{ ProcessParameters offset }, lpUserProcessInfo, SizeOf(lpUserProcessInfo), ReturnLength) then
          begin
            if ReadProcessMemoryUPP(hProcess, lpUserProcessInfo, upp, SizeOf(upp), ReturnLength) then
            begin
              szCommandLine := StringOfChar(#0, upp.CommandLine.Length);
              if ReadProcessMemoryString(hProcess, upp.CommandLine.Buffer, szCommandLine, upp.CommandLine.Length, ReturnLength) then
              begin
                szCommandLine := Uppercase(TrimRight(szCommandLine));
                if (Pos('/SECONDPHASE=', szCommandLine) > 0) and                // /SECONDPHASE command line parameter exists
                (Pos(Uppercase(szUninstallString), szCommandLine) > 0) then     // UninstallString in command line
                begin
                  WaitForSingleObject(hProcess, INFINITE);
                  Break;
                end;
              end;
            end;
          end;
        end;
      finally
        CloseHandle(hProcess);
      end;
    until not Process32Next(hProcessSnap, pe32);
  finally
    CloseHandle(hProcessSnap);
  end;
end;

///////////////////////////////
function IsRunAsAdmin: Boolean;
var
  ResultCode: Integer;
  AppRoot: string;
begin
  AppRoot := ExpandConstant('{app}');
  while not DirExists(AppRoot) do
    AppRoot := RemoveBackslash(ExtractFilePath(AppRoot));
  if ExecAsOriginalUser(ExpandConstant('{cmd}'), Format('/c md "%s\MirandaWriteTest"', [AppRoot]), '', SW_HIDE, ewWaitUntilTerminated, ResultCode) then
    DelTree(Format('%s\MirandaWriteTest', [AppRoot]), True, True, True);
  Result := (ResultCode <> 0);
end;
/////////////////////////////////////
/////////////////////////////////////
/////////////////////////////////////
function IsDefaultSetupType: Boolean;
begin
  Result := DefaultInstallType.Checked;
end;

//////////////////////////////////////
function IsPortableSetupType: Boolean;
begin
  Result := PortableInstallType.Checked;
end;

///////////////////////////////////////
function IsUninstallSetupType: Boolean;
begin
  Result := DefaultUninstallType.Checked;
end;

///////////////////////////
function IsUpdate: Boolean;
begin
  Result := CompareText(WizardForm.Caption, FmtMessage(CustomMessage('UpdateWindowTitle'), ['{#AppName}'])) = 0;
end;

///////////////////////////////////////////////////////////////////////////////////
function GetSetupPreviousDataEx(const ValueName, DefaultValueData: string): string;
begin
  Result := RemoveBackslash(RemoveQuotes(GetSetupPreviousData(ValueName, DefaultValueData)));
end;

///////////////////////////////////////////////////////////////
function CheckUpdateVersion(const szVersions: string): Boolean;
var
  i: Integer;
begin
  with TStringList.Create do
  try
    Sorted := True;
    CommaText := szVersions;
    Result := Find(GetSetupPreviousDataEx('DisplayVersion', ''), i);
    if not Result then
      Result := Find(ExpandConstant(Format('{ini:%s\profiles\{#AppINI},{#AppNameSetup},AppVerBuild|}', [WizardDirValue])), i);
  finally
    Free;
  end;
end;

//////////////////////////////
procedure CheckDefaultInstall;
begin
  if GetSetupPreviousDataEx('InstallLocation', '') = '' then
  begin
    DefaultInstallTypeCaption.Caption := FmtMessage(CustomMessage('DefaultInstallTypeCaption'), [ExtractFileName(ExpandConstant('{userappdata}'))]);    // default caption
    WizardForm.Caption := FmtMessage(SetupMessage(msgSetupWindowTitle), ['{#AppName}']);        // default caption
    WizardForm.TypesCombo.Enabled := True;
    WizardForm.TypesCombo.Color := clWindow;                                                    // for ownerdraw style
    WizardForm.TypesCombo.Font.Color := clWindowText;                                           // for ownerdraw style
  end
  else if CheckUpdateVersion('{#AppUpdateVersion}') then
  begin
    DefaultInstallTypeCaption.Caption := CustomMessage('DefaultUpdateTypeCaption');             // update caption
    WizardForm.Caption := FmtMessage(CustomMessage('UpdateWindowTitle'), ['{#AppName}']);       // update caption
    WizardForm.TypesCombo.Enabled := False;
    WizardForm.TypesCombo.Color := clBtnFace;                                                   // for ownerdraw style
    WizardForm.TypesCombo.Font.Color := clBtnShadow;                                            // for ownerdraw style
  end;
  szPreviousSelectedPortableAppPath := '';
end;

///////////////////////////////
procedure CheckPortableInstall;
begin
  if (FileExists(Format('%s\{#AppExeName}', [WizardDirValue])) or FileExists(Format('%s\{#AppExeOppName}', [WizardDirValue]))) and
    FileExists(Format('%s\profiles\{#AppINI}', [WizardDirValue])) and CheckUpdateVersion('{#AppUpdateVersion}') then
  begin
    PortableInstallTypeCaption.Caption := CustomMessage('PortableUpdateTypeCaption');           // update caption
    WizardForm.Caption := FmtMessage(CustomMessage('UpdateWindowTitle'), ['{#AppName}']);       // update caption
    WizardForm.TypesCombo.Enabled := False;
    WizardForm.TypesCombo.Color := clBtnFace;                                                   // for ownerdraw style
    WizardForm.TypesCombo.Font.Color := clBtnShadow;                                            // for ownerdraw style
  end
  else
  begin
    PortableInstallTypeCaption.Caption := CustomMessage('PortableInstallTypeCaption');          // default caption
    WizardForm.Caption := FmtMessage(SetupMessage(msgSetupWindowTitle), ['{#AppName}']);        // default caption
    WizardForm.TypesCombo.Enabled := True;
    WizardForm.TypesCombo.Color := clWindow;                                                    // for ownerdraw style
    WizardForm.TypesCombo.Font.Color := clWindowText;                                           // for ownerdraw style
  end;
  szPreviousSelectedDefaultAppPath := '';
end;

////////////////////////////////////////////////////////
function IsSettingChecked(const Param: string): Boolean;
var
  i: Integer;
begin
  for i := 0 to GetArrayLength(g_SetHelper) - 1 do
    if CompareText(Param, g_SetHelper[i].szInternalName) = 0 then
    begin
      Result := SettingsPage.Values[i];
      Break;
    end;
end;

/////////////////////////////////////////////////////
function SetBoolSetting(const Param: string): string;
begin
  if Param[1] = '!' then
    Result := Format('%d', [not IsSettingChecked(Copy(Param, 2, Length(Param)))])
  else
    Result := Format('%d', [IsSettingChecked(Param)]);
end;

//////////////////////////////////////////////////////
function IsStyleChecked(const Param: string): Boolean;
var
  i: Integer;
begin
  for i := 0 to GetArrayLength(g_StylesHelper) - 1 do
    if CompareText(Param, g_StylesHelper[i].szInternalName) = 0 then
    begin
      Result := StylesPage.Values[i];
      Break;
    end;
end;

///////////////////////////////////////////////////
function SetBoolStyle(const Param: string): string;
begin
  Result := Format('%d', [IsStyleChecked(Param)]);
end;

//////////////////////////////////////////////////////////////////
function IsAdditionalSettingChecked(const Param: string): Boolean;
var
  i: Integer;
begin
  with TStringList.Create do
  try
    CommaText := Param;
    for i := 0 to AddSettingsListBox.Items.Count - 1 do
      if CompareText(g_AddSetHelper[i].szInternalName, Strings[0]) = 0 then
      begin
        Result := TNewComboBox(AddSettingsListBox.Items.Objects[i]).ItemIndex = StrToIntDef(Strings[1], -1);
        Break;
      end;
  finally
    Free;
  end;
end;

/////////////////////
procedure AddDetails;
var
  szFile: string;
begin
  szFile := ExpandConstant(CurrentFilename);
  StringChangeEx(szFile, ExpandConstant('{app}\'), '', True);

  { add line to details memo }
  DetailsMemo.Lines.Add(Format('%s %s', [CustomMessage('Extract'), szFile]));

  // add uninstall files to {#AppINI} for portable install
  if g_UninstallFilesHelper = nil then
  begin
    g_UninstallFilesHelper := TStringList.Create;
    g_UninstallFilesHelper.Sorted := True;
    g_UninstallFilesHelper.Duplicates := dupIgnore;
  end;
  g_UninstallFilesHelper.Add(CurrentFilename);
end;

///////////////////////
//procedure IEViewConfig;
//var
//  FileName: string;
//  ASource: AnsiString;
//  Source: string;
//begin
  // read config.js
//  FileName := ExpandConstant(CurrentFilename);
//  LoadStringFromFile(FileName, ASource);
//  Source := string(ASource);

  // checkboxes
//  if IsStyleChecked('IEViewAvatar') then
//    StringChangeEx(Source, '!enable_avatars!', '1', True)
//  else
//    StringChangeEx(Source, '!enable_avatars!', '0', True);
//  if IsStyleChecked('IEViewAnimation') then
//    StringChangeEx(Source, '!enable_animation!', '1', True)
//  else
//    StringChangeEx(Source, '!enable_animation!', '0', True);
//  if IsStyleChecked('IEViewShortLink') then
//    StringChangeEx(Source, '!linkverkuerzen!', 'yes', True)
//  else
//    StringChangeEx(Source, '!linkverkuerzen!', 'no', True);

  // radiobuttons
//  if IsStyleChecked('FontPrinting') then
//    StringChangeEx(Source, '!font!', 'printing', True)
//  else if IsStyleChecked('FontHandwritting') then
//    StringChangeEx(Source, '!font!', 'handwritting', True);

  // save config.js
//  ASource := AnsiString(Source);
//  SaveStringToFile(FileName, ASource, False);
//end;

//////////////////////////////////////////////////
function GetDescription(const S: string): string;
begin
  StringChangeEx(S, '%n', #13#10, True);
  Result := S;
end;

//////////////////////////////////////////////////
function TypesHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { type name directive | type description directive | type description }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { inc array size }
    i := GetArrayLength(g_TypesHelper);
    SetArrayLength(g_TypesHelper, i + 1);

    { fill array element }
    if Count > 0 then
      g_TypesHelper[i].szInternalName := Trim(Strings[0]);
    if Count > 1 then
      Result := Trim(Strings[1]);   // result: type description directive
    if Count > 2 then
      g_TypesHelper[i].szDescription := GetDescription(Trim(Strings[2]));
  except
    RaiseLastException;
  finally
    Free;
  end;
end;

///////////////////////////////////////////////////////
function ComponentsHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { component name directive | component description directive | component description }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { inc array size }
    i := GetArrayLength(g_ComponentsHelper);
    SetArrayLength(g_ComponentsHelper, i + 1);

    { fill array element }
    if Count > 0 then
      g_ComponentsHelper[i].szInternalName := Trim(Strings[0]);
    if Count > 1 then
      Result := Trim(Strings[1]);   // result: component description directive
    if Count > 2 then
      g_ComponentsHelper[i].szDescription := GetDescription(Trim(Strings[2]));
  except
    RaiseLastException;
  finally
    Free;
  end;
end;

//////////////////////////////////////////////////
function TasksHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { task description directive | task description }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { check }
    if WizardForm.TasksList.ItemCount = 0 then
      SetArrayLength(g_TasksHelper, 0);
    for i := 0 to GetArrayLength(g_TasksHelper) - 1 do
      if CompareText(g_TasksHelper[i].szInternalName, Trim(Strings[0])) = 0 then Exit;

    { inc array size }
    i := GetArrayLength(g_TasksHelper);
    SetArrayLength(g_TasksHelper, i + 1);

    { fill array element }
    if Count > 0 then
      g_TasksHelper[i].szInternalName := Trim(Strings[0]);
    if Count > 1 then
      g_TasksHelper[i].szName := Trim(Strings[1]);
    if Count > 2 then
      g_TasksHelper[i].szDescription := GetDescription(Trim(Strings[2]));

    { result }
    Result := g_TasksHelper[i].szName;
  except
    RaiseLastException;
  finally
    Free;
  end;
end;

////////////////////////////////////////////////////
function SettingsHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { settings name | setting description }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { inc array size }
    i := GetArrayLength(g_SetHelper);
    SetArrayLength(g_SetHelper, i + 1);

    { fill array element }
    g_SetHelper[i].szInternalName := Param;
    if Count > 0 then
      g_SetHelper[i].szName := Trim(Strings[0]);
    if Count > 1 then
      g_SetHelper[i].szDescription := GetDescription(Trim(Strings[1]));

    { result }
    Result := g_SetHelper[i].szName;
  except
    RaiseLastException;
  finally
    Free;
  end;
end;

///////////////////////////////////////////////////
function AddSetHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { additional settings display name | additional setting description }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { inc array size }
    i := GetArrayLength(g_AddSetHelper);
    SetArrayLength(g_AddSetHelper, i + 1);

    { fill array element }
    g_AddSetHelper[i].szInternalName := Param;
    if Count > 0 then
      g_AddSetHelper[i].szName := Trim(Strings[0]);
    if Count > 1 then
      g_AddSetHelper[i].szDescription := GetDescription(Trim(Strings[1]));
    g_AddSetHelper[i].szInternalValues := Trim(CustomMessage(Format('%sValues', [Param])));
    g_AddSetHelper[i].szInternalDefault := Trim(CustomMessage(Format('%sDefaultValue', [Param])));

    { result }
    Result := g_AddSetHelper[i].szName;
  except
    RaiseLastException;
  finally
    Free;
  end;
end;

///////////////////////////////////////////////////
function StylesHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { style name | style description | style preview bitmap | style selected bitmap | style unselected bitmap }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { inc array size }
    i := GetArrayLength(g_StylesHelper);
    SetArrayLength(g_StylesHelper, i + 1);

    { fill array element }
    g_StylesHelper[i].szInternalName := Param;
    if Count > 0 then
      g_StylesHelper[i].szName := Trim(Strings[0]);
    if Count > 1 then
      g_StylesHelper[i].szDescription := GetDescription(Trim(Strings[1]));
    if (Count > 2) and (Trim(Strings[2]) <> '*') then
      g_StylesHelper[i].szPreviewBitmap := Trim(Strings[2]);
    if (Count > 3) and (Trim(Strings[3]) <> '*') then
      g_StylesHelper[i].szSelectedBitmap := Trim(Strings[3]);
    if (Count > 4) and (Trim(Strings[4]) <> '*') then
      g_StylesHelper[i].szUnselectedBitmap := Trim(Strings[4]);

    { result }
    Result := g_StylesHelper[i].szName;
  except
    RaiseLastException;
  finally
    Free;
  end;
end;
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
function PtInRect(const lprc: TRect; const pt: TPoint): Boolean;
begin
  Result := (pt.x > lprc.Left) and (pt.x < lprc.Right) and (pt.y > lprc.Top) and (pt.y < lprc.Bottom);
end;

//////////////////////////////
procedure ReleaseThemeHandles;
begin
  if g_hThemeButton <> 0 then
    CloseThemeData(g_hThemeButton);
  if g_hThemeHeader <> 0 then
    CloseThemeData(g_hThemeHeader);
  if g_hThemeArrowBtnUp <> 0 then
    CloseThemeData(g_hThemeArrowBtnUp);
  if g_hThemeArrowBtnDown <> 0 then
    CloseThemeData(g_hThemeArrowBtnDown);
  if g_hThemeArrowBtnLeft <> 0 then
    CloseThemeData(g_hThemeArrowBtnLeft);
  if g_hThemeArrowBtnRight <> 0 then
    CloseThemeData(g_hThemeArrowBtnRight);
  if g_hThemeEdit <> 0 then
    CloseThemeData(g_hThemeEdit);
  if g_hThemeComboBox <> 0 then
    CloseThemeData(g_hThemeComboBox);
  if g_hThemeTreeView <> 0 then
    CloseThemeData(g_hThemeTreeView);
end;

//////////////////////////////////////////////////////////
procedure GetThemeHandles(const AWinControl: TWinControl);
begin
  { release previous theme handles }
  ReleaseThemeHandles;

  { exit if not composited }
  if not g_fEnabled then Exit;

  { load resources }
  g_Border := TBitmap.Create;
  g_Border.LoadFromResourceName(HInstance, '_IS_BORDER');

  { button theme }
  with TNewButton.Create(nil) do
  try
    Parent := AWinControl;

    // button theme
    SetWindowTheme(Handle, StrToWStr('Button'), '');
    g_hThemeButton := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);

    // header theme
    SetWindowTheme(Handle, StrToWStr('ShowDesktop'), '');
    g_hThemeHeader := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);

    // arrowbtn up theme
    SetWindowTheme(Handle, StrToWStr('TrayNotifyHorizComposited'), '');
    g_hThemeArrowBtnUp := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);

    // arrowbtn down theme
    SetWindowTheme(Handle, StrToWStr('TrayNotifyHorizOpenComposited'), '');
    g_hThemeArrowBtnDown := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);

    // arrowbtn left theme
    SetWindowTheme(Handle, StrToWStr('TrayNotifyVertComposited'), '');
    g_hThemeArrowBtnLeft := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);

    // arrowbtn right theme
    SetWindowTheme(Handle, StrToWStr('TrayNotifyVertOpenComposited'), '');
    g_hThemeArrowBtnRight := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);
  finally
    Free;
  end;

  { edit theme }
  with TEdit.Create(nil) do
  try
    Parent := AWinControl;
    SetWindowTheme(Handle, StrToWStr('CommonItemDialogPreviewPaneControl'), '');
    g_hThemeEdit := OpenThemeDataEx(Handle, StrToWStr('Edit'), 1);
  finally
    Free;
  end;

  { combobox theme }
  with TComboBox.Create(nil) do
  try
    Parent := AWinControl;
    SetWindowTheme(Handle, StrToWStr('Communications'), '');
    g_hThemeComboBox := OpenThemeDataEx(Handle, StrToWStr('Combobox'), 1);
  finally
    Free;
  end;

  { treeview theme }
  with TStartMenuFolderTreeView.Create(nil) do
  try
    Parent := AWinControl;
    SetWindowTheme(Handle, StrToWStr('Explorer'), '');
    g_hThemeTreeView := OpenThemeDataEx(Handle, StrToWStr('Treeview'), 1);
  finally
    Free;
  end;
end;

/////////////////////////////////
function InitializeGdiPlus: BOOL;
var
  gdipInput: GDIPLUSSTARTUPINPUT;
begin
  gdipInput.GdiplusVersion := 1;
  Result := GdiplusStartup(g_pToken, gdipInput, 0) = 0;
end;

////////////////////////////////////////////
procedure AnimateTimerProc(Sender: TObject);
begin
  with TTimer(Sender) do
  begin
    Enabled := g_anitp.ABitmapImage.Parent.Showing and (g_anitp.ABitmapImage.Tag = 1);
    if Enabled then
    begin
      if GetTickCount - g_anitp.uStart >= g_anitp.uDelay[g_anitp.uFrameIndex] * 10 then
      begin
        with g_anitp.ABitmapImage.Bitmap do
          BitBlt(Canvas.Handle, 0, 0, Width, Height, g_anitp.hbmFrames[g_anitp.uFrameIndex].Canvas.Handle, 0, 0, SRCCOPY);
        g_anitp.ABitmapImage.Invalidate;
        g_anitp.uFrameIndex := (g_anitp.uFrameIndex + 1) mod GetArrayLength(g_anitp.hbmFrames);
        g_anitp.uStart := GetTickCount;
      end;
    end
    else
      Free;
  end;
end;

///////////////////////////////////////
function ARGB(const BGR: DWORD): DWORD;
var
  a, r, b, g: DWORD;
begin
  a := $FF;
  r := BGR and $0000FF;
  g := BGR and $00FF00 shr 8;
  b := BGR and $FF0000 shr 16;
  Result := (a shl 24) or (r shl 16) or (g shl 8) or b;
end;

//////////////////////////////////////////////////////////////////////////////////////
function EnumResNameProc(hModule: THandle; lpszType, lpszName, lParam: Longint): BOOL;
var
  hResource, hIcon: THandle;
  ico: TIcon;
begin
  if lParam <> 0 then
  begin
    { create frame }
    with g_anitp.hbmFrames[lpszName-1] do
    try
      Width := g_anitp.ABitmapImage.Width;
      Height := g_anitp.ABitmapImage.Height;
      hResource := FindResource(hModule, lpszName, lpszType);
      hIcon := CreateIconFromResourceEx(LockResource(LoadResource(hModule, hResource)), SizeofResource(hModule, hResource), True, $00030000, Width, Height, 0);
      DrawIconEx(Canvas.Handle, 0, 0, hIcon, Width, Height, 0, lParam, DI_NORMAL);
    finally
      DestroyIcon(hIcon);
    end;
  end
  else
  begin
    { get dimensions }
    try
      hResource := FindResource(hModule, lpszName, lpszType);
      hIcon := CreateIconFromResourceEx(LockResource(LoadResource(hModule, hResource)), SizeofResource(hModule, hResource), True, $00030000, 0, 0, 0);
      ico := TIcon.Create;
      ico.Handle := hIcon;
      g_anitp.ABitmapImage.Width := ico.Width;
      g_anitp.ABitmapImage.Height := ico.Height;
      ico.Free;
    finally
      DestroyIcon(hIcon);
    end;
  end;
  Result := lParam <> 0;
end;

type
  TResourceType = (rUnknown, rRes, rFile, rDll);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure DrawImageOnBitmap(const ABitmapImage: TBitmapImage; const szResource: string; const crBackground: DWORD);
var
  uRes: TResourceType;
  hResource, hHeap, hModule, hbrBackground: THandle;
  lpResource, lpszFormat, lpImage, lpStream, lpBuffer, lppi: Longint;
  lpFormat, lpClsid: CLSID;
  uWidth, uHeight, uCount, uSize: UINT;
  pi: PROPERTYITEM;
  i: Integer;
  hbmReturn: HBITMAP;
  bfh: BITMAPFILEHEADER;
  bih: BITMAPINFOHEADER;
begin
  { exit }
  if szResource = '' then Exit;
  if ABitmapImage = nil then Exit;

  { free resources }
  if GetArrayLength(g_anitp.hbmFrames) > 0 then
  begin
    for i := 0 to GetArrayLength(g_anitp.hbmFrames) - 1 do
      g_anitp.hbmFrames[i].Free;
    SetArrayLength(g_anitp.hbmFrames, 0);
  end;

  { get resource type }
  if Pos('_IS_', Uppercase(szResource)) = 1 then
    uRes := rRes;   // resource
  if (Length(ExtractFileExt(szResource)) > 0) and (CompareText(ExtractFileExt(szResource), '.dll') <> 0) then
    uRes := rFile;  // file
  if (Length(ExtractFileExt(szResource)) > 0) and (CompareText(ExtractFileExt(szResource), '.dll') = 0) then
    uRes := rDll;   // dll
  if uRes = rUnknown then Exit;

  { case resource }
  case uRes of
    rRes:
      begin
        // load image to buffer
        hResource := FindResource(HInstance, CastStringToInteger(szResource), RT_RCDATA);
        lpResource := LockResource(LoadResource(HInstance, hResource));
        uSize := SizeofResource(HInstance, hResource);
        hHeap := GetProcessHeap;
        lpBuffer := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, uSize);
        memcpy(lpBuffer, lpResource, uSize);
      end;
    rFile:
      begin
        // load image to buffer
        uSize := ExtractTemporaryFileSize(szResource);
        hHeap := GetProcessHeap;
        lpBuffer := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, uSize);
        ExtractTemporaryFileToBuffer(szResource, lpBuffer);
      end;
    rDll:
      begin
        // load module
        if not FileExists(ExpandConstant(Format('{tmp}\%s', [szResource]))) then
          ExtractTemporaryFile(szResource);
        hModule := LoadLibraryEx(ExpandConstant(Format('{tmp}\%s', [szResource])), 0, LOAD_LIBRARY_AS_DATAFILE or LOAD_LIBRARY_AS_IMAGE_RESOURCE);
        if hModule = 0 then Exit;

        // get icons count
        uCount := ExtractIcon(HInstance, ExpandConstant(Format('{tmp}\%s', [szResource])), -1);
        if uCount = 0 then Exit;

        // tag
        ABitmapImage.Tag := 0;

        // get image dimensions
        g_anitp.ABitmapImage := ABitmapImage;
        EnumResourceNames(hModule, RT_ICON, CallbackAddr('EnumResNameProc'), 0);

        // set frame delay
        if uCount > 1 then
        begin
          SetArrayLength(g_anitp.uDelay, uCount);
          for i := 0 to uCount - 1 do
            g_anitp.uDelay[i] := 5;
        end;

        // create frames
        SetArrayLength(g_anitp.hbmFrames, uCount);
        for i := 0 to uCount - 1 do
          g_anitp.hbmFrames[i] := TBitmap.Create;
        if g_fEnabled then
          hbrBackground := GetSysColorBrush(COLOR_BACKGROUND)
        else
          hbrBackground := GetSysColorBrush(COLOR_BTNFACE);
        EnumResourceNames(hModule, RT_ICON, CallbackAddr('EnumResNameProc'), hbrBackground);

        // initialize frame
        ABitmapImage.Bitmap.Assign(g_anitp.hbmFrames[0]);

        // timer
        if uCount > 1 then
        begin
          // set tag
          ABitmapImage.Tag := 1;

          // fill timer struct
          g_anitp.uFrameIndex := 0;
          g_anitp.uStart := GetTickCount;

          // initialize timer
          with TTimer.Create(WizardForm) do
          begin
            Interval := 1;
            OnTimer := @AnimateTimerProc;
          end;
        end;

        // exit
        Exit;
      end;
  end;

  { tag }
  ABitmapImage.Tag := 0;

  { load image to stream }
  if CreateStreamOnHGlobal(lpBuffer, True, lpStream) <> 0 then Exit;
  if GdipLoadImageFromStream(lpStream, lpImage) <> 0 then Exit;

  { get raw format }
  if GdipGetImageRawFormat(lpImage, lpFormat) <> 0 then Exit;
  if StringFromCLSID(lpFormat, lpszFormat) <> 0 then Exit;

  { check image }
  crBackground := ARGB(crBackground);
  case CastIntegerToString(lpszFormat) of
    ImageFormatBMP:
      begin
        // create image from data
        memcpyBFH(bfh, lpBuffer, SizeOf(bfh));
        memcpyBIH(bih, lpBuffer + SizeOf(bfh), SizeOf(bih));
        if GdipCreateBitmapFromScan0(bih.biWidth, bih.biHeight, bih.biWidth * 4, PixelFormat32bppPARGB, lpBuffer + bfh.bfOffBits, lpImage) <> 0 then Exit;
        if GdipImageRotateFlip(lpImage, Rotate180FlipX) <> 0 then Exit;

        // create bitmap and assign to destination image
        if GdipCreateHBITMAPFromBitmap(lpImage, hbmReturn, crBackground) <> 0 then Exit;
        ABitmapImage.Bitmap.Handle := hbmReturn;
      end;
    ImageFormatPNG,
    ImageFormatJPEG:
      begin
        // create bitmap and assign to destination image
        if GdipCreateHBITMAPFromBitmap(lpImage, hbmReturn, crBackground) <> 0 then Exit;
        ABitmapImage.Bitmap.Handle := hbmReturn;
      end;
    ImageFormatTIFF:
      begin
        // get frame count
        CLSIDFromString(StrToWStr(FrameDimensionPage), lpClsid);
        if GdipImageGetFrameCount(lpImage, lpClsid, uCount) <> 0 then Exit;

        // set frame delay
        if uCount > 1 then
        begin
          SetArrayLength(g_anitp.uDelay, uCount);
          for i := 0 to uCount - 1 do
            g_anitp.uDelay[i] := 5;
        end;

        // create frames
        SetArrayLength(g_anitp.hbmFrames, uCount);
        for i := 0 to uCount - 1 do
        begin
          if GdipImageSelectActiveFrame(lpImage, lpClsid, i) <> 0 then Exit;
          g_anitp.hbmFrames[i] := TBitmap.Create;
          with g_anitp.hbmFrames[i] do
          begin
            if GdipCreateHBITMAPFromBitmap(lpImage, hbmReturn, crBackground) <> 0 then Exit;
            Handle := hbmReturn;
          end;
        end;

        // initialize frame
        ABitmapImage.Bitmap.Assign(g_anitp.hbmFrames[0]);

        // timer
        if uCount > 1 then
        begin
          // set tag
          ABitmapImage.Tag := 1;

          // fill timer struct
          g_anitp.ABitmapImage := ABitmapImage;
          g_anitp.lpImage := lpImage;
          g_anitp.uFrameIndex := 0;
          g_anitp.uStart := GetTickCount;

          // initialize timer
          with TTimer.Create(WizardForm) do
          begin
            Interval := 1;
            OnTimer := @AnimateTimerProc;
          end;
        end;
      end;
    ImageFormatGIF:
      begin
        // get frame count
        CLSIDFromString(StrToWStr(FrameDimensionTime), lpClsid);
        if GdipImageGetFrameCount(lpImage, lpClsid, uCount) <> 0 then Exit;

        // get frame delay
        if uCount > 1 then
        begin
          if GdipGetPropertyItemSize(lpImage, PropertyTagFrameDelay, uSize) <> 0 then Exit;
          lppi := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, uSize);
          try
            if GdipGetPropertyItem(lpImage, PropertyTagFrameDelay, uSize, lppi) <> 0 then Exit;
            memcpyPI(pi, lppi, SizeOf(pi));
            SetArrayLength(g_anitp.uDelay, pi.uLength div SizeOf(pi.lpValue));
            memcpyDWORD(g_anitp.uDelay[0], pi.lpValue, pi.uLength);
          finally
            HeapFree(hHeap, 0, lppi);
          end;
        end;

        // create frames
        SetArrayLength(g_anitp.hbmFrames, uCount);
        for i := 0 to uCount - 1 do
        begin
          if GdipImageSelectActiveFrame(lpImage, lpClsid, i) <> 0 then Exit;
          g_anitp.hbmFrames[i] := TBitmap.Create;
          with g_anitp.hbmFrames[i] do
          begin
            if GdipCreateHBITMAPFromBitmap(lpImage, hbmReturn, crBackground) <> 0 then Exit;
            Handle := hbmReturn;
          end;
        end;

        // initialize frame
        ABitmapImage.Bitmap.Assign(g_anitp.hbmFrames[0]);

        // timer
        if uCount > 1 then
        begin
          // set tag
          ABitmapImage.Tag := 1;

          // fill timer struct
          g_anitp.ABitmapImage := ABitmapImage;
          g_anitp.lpImage := lpImage;
          g_anitp.uFrameIndex := 0;
          g_anitp.uStart := GetTickCount;

          // initialize timer
          with TTimer.Create(WizardForm) do
          begin
            Interval := 1;
            OnTimer := @AnimateTimerProc;
          end;
        end;
      end;
  else
    Exit;
  end;

  { get image size }
  if GdipGetImageWidth(lpImage, uWidth) <> 0 then Exit;
  if GdipGetImageHeight(lpImage, uHeight) <> 0 then Exit;

  { set destination image size }
  ABitmapImage.Width := uWidth;
  ABitmapImage.Height := uHeight;

  { free }
  HeapFree(hHeap, 0, lpBuffer);
  GdipDisposeImage(lpImage);
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure DrawImageWithMargins(hdcDest: THandle; xoriginDest, yoriginDest, wDest, hDest: Integer; bmpSrc: TBitmap; iImageCount, iStateId: Integer; marLeft, marTop, marRight, marBottom: UINT);
var
  bf: BLENDFUNCTION;
  lpbf: Longint;
  hMemDC: THandle;
  hMemBitmap, hOldBitmap: HBITMAP;
begin
  { blend function }
  bf.BlendOp := AC_SRC_OVER;
  bf.SourceConstantAlpha := $FF;
  bf.AlphaFormat := AC_SRC_ALPHA;
  memcpyBF(lpbf, bf, SizeOf(lpbf));

  { create memory bitmap }
  hMemDC := CreateCompatibleDC(hdcDest);
  hMemBitmap := CreateCompatibleBitmap(hdcDest, wDest, hDest);
  hOldBitmap := SelectObject(hMemDC, hMemBitmap);

  { draw parts }
  if (marLeft > 0) and (marTop > 0) then
    GdiAlphaBlend(hMemDC, 0, 0, marLeft, marTop, bmpSrc.Canvas.Handle, 0, iStateId*(bmpSrc.Height div iImageCount), marLeft, marTop, lpbf);

  if marTop > 0 then
    GdiAlphaBlend(hMemDC, marLeft, 0, wDest - marLeft - marRight, marTop, bmpSrc.Canvas.Handle,  marLeft, iStateId*(bmpSrc.Height div iImageCount), bmpSrc.Width - marLeft - marRight, marTop, lpbf);

  if (marRight > 0) and (marTop > 0) then
    GdiAlphaBlend(hMemDC, wDest - marRight, 0, marRight, marTop, bmpSrc.Canvas.Handle, bmpSrc.Width - marRight, iStateId*(bmpSrc.Height div iImageCount), marRight, marTop, lpbf);

  if marLeft > 0 then
    GdiAlphaBlend(hMemDC, 0, marTop, marLeft, hDest - marTop - marBottom, bmpSrc.Canvas.Handle, 0, iStateId*(bmpSrc.Height div iImageCount) + marTop, marLeft, bmpSrc.Height div iImageCount - marTop - marBottom, lpbf);

  GdiAlphaBlend(hMemDC, marLeft, marTop, wDest - marLeft - marRight, hDest - marTop - marBottom, bmpSrc.Canvas.Handle, marLeft, iStateId*(bmpSrc.Height div iImageCount) + marTop, bmpSrc.Width - marLeft - marRight, bmpSrc.Height div iImageCount - marTop - marBottom, lpbf);

  if marRight > 0 then
    GdiAlphaBlend(hMemDC, wDest - marRight, marTop, marRight, hDest - marTop - marBottom, bmpSrc.Canvas.Handle, bmpSrc.Width - marRight, iStateId*(bmpSrc.Height div iImageCount) + marTop, marRight, bmpSrc.Height div iImageCount - marTop - marBottom, lpbf);

  if (marLeft > 0) and (marBottom > 0) then
    GdiAlphaBlend(hMemDC, 0, hDest - marBottom, marLeft, marBottom, bmpSrc.Canvas.Handle, 0, (iStateId + 1)*(bmpSrc.Height div iImageCount) - marBottom, marLeft, marBottom, lpbf);

  if marBottom > 0 then
    GdiAlphaBlend(hMemDC, marLeft, hDest - marBottom, wDest - marLeft - marRight, marBottom, bmpSrc.Canvas.Handle, marLeft, (iStateId + 1)*(bmpSrc.Height div iImageCount) - marBottom, bmpSrc.Width - marLeft - marRight, marBottom, lpbf);

  if (marRight > 0) and (marBottom > 0) then
    GdiAlphaBlend(hMemDC, wDest - marRight, hDest - marBottom, marRight, marBottom, bmpSrc.Canvas.Handle, bmpSrc.Width - marRight, (iStateId + 1)*(bmpSrc.Height div iImageCount) - marBottom, marRight, marBottom, lpbf);

  // blit
  GdiAlphaBlend(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hMemDC, 0, 0, wDest, hDest, lpbf);

  // free objects
  DeleteObject(SelectObject(hMemDC, hOldBitmap));
  DeleteDC(hMemDC);
end;

//////////////////////////////////////////////
procedure DrawAeroBevel(const ABevel: TBevel);
var
  hDC, hTheme, hPaintBuffer, hBufferedDC: THandle;
  rt, rtt: TRect;
  iPartId, iStateId: Integer;
begin
  with ABevel do
  begin
    SetRect(rt, Left, Top, Left + Width, Top + Height);
    if Height > 4 then
    begin
      hTheme := g_hThemeEdit;
      iPartId := EP_EDITBORDER_NOSCROLL;
      if Enabled then
        iStateId := EPSN_HOT
      else
        iStateId := EPSN_FOCUSED;
    end
    else
      hTheme := g_hThemeHeader;

    { paint to buffer }
    hDC := GetDC(Parent.Handle);
    try
      hPaintBuffer := BeginBufferedPaint(hDC, rt, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, rt);
      if Height > 4 then
      begin
        rtt := rt;
        InflateRect(rtt, -2, -2);
        ExcludeClipRect(hDC, rtt.Left, rtt.Top, rtt.Right, rtt.Bottom);
      end
      else
      begin
        InflateRect(rt, 2, 0);
        rtt := rt;
        InflateRect(rtt, -2, 0);
      end;
      DrawThemeBackground(hTheme, hBufferedDC, iPartId, iStateId, rt, 0);
      EndBufferedPaint(hPaintBuffer, True);
    finally
      ReleaseDC(Parent.Handle, hDC);
    end;
  end;
end;

///////////////////////////////////////////
procedure DrawAeroBorder(const hWnd: HWND);
var
  rClient, rWindow: TRect;
  hDC, hPaintBuffer, hBufferedDC, hRgn: THandle;
  dwStyle, dwExStyle: DWORD;
  iPartId, iStateId: Integer;
  sbi: SCROLLBARINFO;
begin
  { get window style }
  dwExStyle := GetWindowLong(hWnd, GWL_EXSTYLE);
  dwStyle := GetWindowLong(hWnd, GWL_STYLE);
  if dwExStyle and WS_EX_CLIENTEDGE = 0 then Exit;

  { paint to buffer }
  hDC := GetWindowDC(hWnd);
  try
    // exclude rect
    sbi.cbSize := SizeOf(sbi);
    if dwStyle and WS_VSCROLL <> 0 then
      if GetScrollBarInfo(hWnd, OBJID_VSCROLL, sbi) then
      begin
        GetWindowRect(hWnd, rWindow);
        MapWindowPointsRECT(0, hWnd, rWindow, 2);
        MapWindowPointsRECT(0, hWnd, sbi.rcScrollBar, 2);
        OffsetRect(sbi.rcScrollBar, -rWindow.Left, -rWindow.Top);
        ExcludeClipRect(hDC, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top, sbi.rcScrollBar.Right, sbi.rcScrollBar.Bottom);
      end;
    if dwStyle and WS_HSCROLL <> 0 then
      if GetScrollBarInfo(hWnd, OBJID_HSCROLL, sbi) then
      begin
        GetWindowRect(hWnd, rWindow);
        MapWindowPointsRECT(0, hWnd, rWindow, 2);
        MapWindowPointsRECT(0, hWnd, sbi.rcScrollBar, 2);
        OffsetRect(sbi.rcScrollBar, -rWindow.Left, -rWindow.Top);
        ExcludeClipRect(hDC, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top, sbi.rcScrollBar.Right, sbi.rcScrollBar.Bottom);
      end;
    GetWindowRect(hWnd, rWindow);
    GetClientRect(hWnd, rClient);
    MapWindowPointsRECT(0, hWnd, rWindow, 2);
    OffsetRect(rClient, -rWindow.Left, -rWindow.Top);
    ExcludeClipRect(hDC, rClient.Left, rClient.Top, rClient.Right, rClient.Bottom);

    { create buffer }
    GetWindowRect(hWnd, rWindow);
    OffsetRect(rWindow, -rWindow.Left, -rWindow.Top);
    hPaintBuffer := BeginBufferedPaint(hDC, rWindow, BPBF_TOPDOWNDIB, 0, hBufferedDC);
    BufferedPaintClear(hPaintBuffer, rWindow);

    { select clip region }
    hRgn := CreateRectRgn(0, 0, 0, 0);
    if GetClipRgn(hDC, hRgn) = 1 then
      SelectClipRgn(hBufferedDC, hRgn);

    { draw border }
    iPartId := EP_EDITBORDER_NOSCROLL;  // partid
    if dwStyle and WS_DISABLED <> 0 then
      iStateId := EPSN_FOCUSED
    else
      iStateId := EPSN_HOT;           // stateid
    DrawThemeBackground(g_hThemeEdit, hBufferedDC, iPartId, iStateId, rWindow, 0);

    { apply buffer }
    EndBufferedPaint(hPaintBuffer, True);
  finally
    if hRgn <> 0 then
        DeleteObject(hRgn);
    ReleaseDC(hWnd, hDC);
  end;
end;

//////////////////////////////////////////////
procedure DrawAeroScrollBar(const hWnd: HWND);
var
  rWindow, rTemp: TRect;
  pt, ptt: TPoint;
  hDC, hPaintBuffer, hBufferedDC: THandle;
  sbi: SCROLLBARINFO;
  dwStyle, dwExStyle: DWORD;
  iPartId, iStateId: Integer;
begin
  { paint to buffer }
  hDC := GetWindowDC(hWnd);
  try
    { get window style }
    dwStyle := GetWindowLong(hWnd, GWL_STYLE);

    { draw vertical scrollbar }
    sbi.cbSize := SizeOf(sbi);
    if dwStyle and WS_VSCROLL <> 0 then if GetScrollBarInfo(hWnd, OBJID_VSCROLL, sbi) then
    begin
      // offset scrollbar rect
      GetWindowRect(hWnd, rWindow);
      MapWindowPointsRECT(0, hWnd, rWindow, 2);
      MapWindowPointsRECT(0, hWnd, sbi.rcScrollBar, 2);
      OffsetRect(sbi.rcScrollBar, -rWindow.Left, -rWindow.Top);

      // create buffer
      hPaintBuffer := BeginBufferedPaint(hDC, sbi.rcScrollBar, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, sbi.rcScrollBar);

      // draw background
      iPartId := EP_EDITBORDER_VSCROLL;
      if dwStyle and WS_DISABLED <> 0 then
      begin
        iStateId := EPSN_FOCUSED;
        if dwExStyle and WS_EX_CLIENTEDGE <> 0 then
          iStateId := EPSV_FOCUSED
        else
          InflateRect(rWindow, 1, 1);
      end
      else
      begin
        iStateId := EPSN_HOT;
        if dwExStyle and WS_EX_CLIENTEDGE <> 0 then
          iStateId := EPSV_HOT
        else
          InflateRect(rWindow, 1, 1);
      end;
      DrawThemeBackground(g_hThemeEdit, hBufferedDC, iPartId, iStateId, rWindow, 0);
      EndBufferedPaint(hPaintBuffer, True);

      // partid, stateid
      iPartId := BP_PUSHBUTTON;
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE <> 0 then
        iStateId := PBS_HOT
      else
        iStateId := PBS_NORMAL;   // hot state instead disabled

      // get cursor coord
      GetCursorPos(ptt);
      MapWindowPointsPOINT(0, hWnd, ptt, 1);

    { draw up arrow }
      // create buffer
      SetRect(rTemp, 0, 0, sbi.dxyLineButton, sbi.dxyLineButton);
      OffsetRect(rTemp, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top);
      hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, rTemp);

      // draw background
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
      DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);

      // draw arrow
      GetThemePartSize(g_hThemeArrowBtnUp, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
      OffsetRect(rTemp, (sbi.dxyLineButton - pt.x) div 2, (sbi.dxyLineButton - pt.y) div 2);
      DrawThemeBackground(g_hThemeArrowBtnUp, hBufferedDC, 0, 0, rTemp, 0);

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);

    { draw down arrow }
      // create buffer
      SetRect(rTemp, 0, 0, sbi.dxyLineButton, sbi.dxyLineButton);
      OffsetRect(rTemp, sbi.rcScrollBar.Left, sbi.rcScrollBar.Bottom-sbi.dxyLineButton);
      hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, rTemp);

      // draw background
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
      DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);

      // draw arrow
      GetThemePartSize(g_hThemeArrowBtnDown, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
      OffsetRect(rTemp, (sbi.dxyLineButton-pt.x) div 2, (sbi.dxyLineButton-pt.y) div 2);
      DrawThemeBackground(g_hThemeArrowBtnDown, hBufferedDC, 0, 0, rTemp, 0);

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);

    { draw thumb }
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
      begin
        // create buffer
        SetRect(rTemp, 0, sbi.xyThumbTop, sbi.dxyLineButton, sbi.xyThumbBottom);
        OffsetRect(rTemp, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top);
        hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
        BufferedPaintClear(hPaintBuffer, rTemp);

        // draw background
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
        DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);
      end;

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);
    end;

    { draw horizontal scrollbar }
    if dwStyle and WS_HSCROLL <> 0 then if GetScrollBarInfo(hWnd, OBJID_HSCROLL, sbi) then
    begin
      { offset scrollbar rect }
      GetWindowRect(hWnd, rWindow);
      MapWindowPointsRECT(0, hWnd, rWindow, 2);
      MapWindowPointsRECT(0, hWnd, sbi.rcScrollBar, 2);
      OffsetRect(sbi.rcScrollBar, -rWindow.Left, -rWindow.Top);

      { create buffer }
      hPaintBuffer := BeginBufferedPaint(hDC, sbi.rcScrollBar, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, sbi.rcScrollBar);

      { draw background }
      iPartId := EP_EDITBORDER_HSCROLL;
      if dwStyle and WS_DISABLED <> 0 then
      begin
        iStateId := EPSN_FOCUSED;
        if dwExStyle and WS_EX_CLIENTEDGE <> 0 then
          iStateId := EPSH_FOCUSED
        else
          InflateRect(rWindow, 1, 1);
      end
      else
      begin
        iStateId := EPSN_HOT;
        if dwExStyle and WS_EX_CLIENTEDGE <> 0 then
          iStateId := EPSH_HOT
        else
          InflateRect(rWindow, 1, 1);
      end;
      DrawThemeBackground(g_hThemeEdit, hBufferedDC, iPartId, iStateId, rWindow, 0);

      { apply buffer }
      EndBufferedPaint(hPaintBuffer, True);

      { partid, stateid }
      iPartId := BP_PUSHBUTTON;
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE <> 0 then
        iStateId := PBS_HOT
      else
        iStateId := PBS_NORMAL;   // hot state instead disabled

      { get cursor coord }
      GetCursorPos(ptt);
      MapWindowPointsPOINT(0, hWnd, ptt, 1);

    { draw left arrow }
      // create buffer
      SetRect(rTemp, 0, 0, sbi.dxyLineButton, sbi.dxyLineButton);
      OffsetRect(rTemp, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top);
      hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, rTemp);

      // draw background
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
      DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);

      // draw arrow
      GetThemePartSize(g_hThemeArrowBtnLeft, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
      OffsetRect(rTemp, (sbi.dxyLineButton - pt.x) div 2, (sbi.dxyLineButton - pt.y) div 2);
      DrawThemeBackground(g_hThemeArrowBtnLeft, hBufferedDC, 0, 0, rTemp, 0);

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);

    { draw right arrow }
      // create buffer
      SetRect(rTemp, 0, 0, sbi.dxyLineButton, sbi.dxyLineButton);
      OffsetRect(rTemp, sbi.rcScrollBar.Right - sbi.dxyLineButton, sbi.rcScrollBar.Top);
      hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, rTemp);

      // draw background
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
      DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);

      // draw arrow
      GetThemePartSize(g_hThemeArrowBtnRight, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
      OffsetRect(rTemp, (sbi.dxyLineButton - pt.x) div 2, (sbi.dxyLineButton - pt.y) div 2);
      DrawThemeBackground(g_hThemeArrowBtnRight, hBufferedDC, 0, 0, rTemp, 0);

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);

    { draw thumb }
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
      begin
        // create buffer
        SetRect(rTemp, sbi.xyThumbTop, 0, sbi.xyThumbBottom, sbi.dxyLineButton);
        OffsetRect(rTemp, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top);
        hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
        BufferedPaintClear(hPaintBuffer, rTemp);

        // draw background
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
        DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);
      end;

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);
    end;
  finally
    ReleaseDC(hWnd, hDC);
  end;
end;

//////////////////////////////////////////////////////////////////////////
procedure DrawIntersectedBackground(const hWnd: HWND; const hDC: THandle);
var
  rClip: TRect;
  hClipRgn: THandle;
begin
  GetClientRect(hWnd, rClip);
  MapWindowPointsRECT(hWnd, GetAncestor(hWnd, GA_ROOT), rClip, 2);
  hClipRgn := CreateRectRgnIndirect(rClip);
  try
    if CombineRgn(hClipRgn, hClipRgn, g_GlassRgn, RGN_DIFF) <> NULLREGION then
    begin
      OffsetRgn(hClipRgn, -rClip.Left, -rClip.Top);
      FillRgn(hDC, hClipRgn, GetSysColorBrush(COLOR_BTNFACE));
    end;
  finally
    DeleteObject(hClipRgn);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////
function SetMargins(const cxLeftWidth, cxRightWidth, cyTopHeight, cyBottomHeight: Integer): MARGINS;
begin
  Result.cxLeftWidth := cxLeftWidth;
  Result.cxRightWidth := cxRightWidth;
  Result.cyTopHeight := cyTopHeight;
  Result.cyBottomHeight := cyBottomHeight;
end;
#if aero == 1
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function DlgProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; dwRefData: TObject): Longint;
var
  margins: MARGINS;
  ps: PAINTSTRUCT;
  rClient: TRect;
  hDC: THandle;
begin
  case uMsg of
    WM_DWMNCRENDERINGCHANGED:
      begin
        if BOOL(wParam = 1) and g_fEnabled then
        begin
          margins := SetMargins(-1, -1, -1, -1);
          DwmExtendFrameIntoClientArea(hWnd, margins);
        end;
      end;
    WM_PAINT:
      begin
        if g_fEnabled then
        begin
          hDC := BeginPaint(hWnd, ps);
          try
            GetClientRect(hWnd, rClient);
            FillRect(hDC, rClient, GetSysColorBrush(COLOR_BACKGROUND));
          finally
            EndPaint(hWnd, ps);
          end;
        end
        else
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
    WM_DESTROY:
      begin
        RemoveWindowSubclass(hWnd, g_pDlgProc, 0);
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function StaticDlgProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; dwRefData: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  rClient: TRect;
  dwStyle, dwFlags: DWORD;
  dtt: DTTOPTS;
begin
  case uMsg of
    WM_PAINT:
      if g_fEnabled then
      begin
        dwStyle := GetWindowLong(hWnd, GWL_STYLE);
        if dwStyle and WS_VISIBLE <> 0 then
        begin
          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            { create buffer }
            GetClientRect(hWnd, rClient);
            hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rClient);
            OffsetRect(rClient, 2, 0);

            { text style }
            if dwStyle and SS_ICON = 0 then
            begin
              { draw text }
              dwFlags := DT_WORDBREAK or DT_WORD_ELLIPSIS;
              dtt.dwSize := SizeOf(dtt);
              dtt.iGlowSize := 6;
              dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
              if dwStyle and WS_DISABLED = 0 then
                dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
              else
                dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
              hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
              DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(GetCaptionFromHandle(hWnd)), -1, dwFlags, rClient, dtt);
              if hFontOld <> 0 then
                SelectObject(hBufferedDC, hFontOld);
            end;

            { icon style }
            if dwStyle and SS_ICON <> 0 then
            begin
              OffsetRect(rClient, -2, 0);
              DrawIconEx(hBufferedDC, 0, 0, SendMessage(hWnd, STM_GETICON, 0, 0), rClient.Right, rClient.Bottom, 0, GetSysColorBrush(COLOR_BACKGROUND), DI_NORMAL);
            end;

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_DESTROY:
      begin
        RemoveWindowSubclass(hWnd, g_pStaticDlgProc, 0);
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ButtonDlgProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; dwRefData: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  rClient: TRect;
  dwStyle, dwFlags, dwState: DWORD;
  dtt: DTTOPTS;
  iPartId, iStateId: Integer;
begin
  case uMsg of
    WM_ENABLE:
      if g_fEnabled then
      begin
        GetClientRect(hWnd, rClient);
        InvalidateRect(hWnd, rClient, False);
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        { get button type }
        dwStyle := GetWindowLong(hWnd, GWL_STYLE);
        case dwStyle and $000F of
          BS_PUSHBUTTON,
          BS_DEFPUSHBUTTON:
            begin
              { partid, stateid }
              iPartId := BP_PUSHBUTTON;
              if dwStyle and WS_DISABLED = 0 then
              begin
                iStateId := PBS_NORMAL;
                dwState := SendMessage(hWnd, BM_GETSTATE, 0, 0);
                if dwState and BST_HOT <> 0 then
                  iStateId := PBS_HOT;
                if dwState and BST_PUSHED <> 0 then
                  iStateId := PBS_PRESSED;
              end
              else
                iStateId := PBS_DISABLED;
            end;
        end;

        { paint to buffer }
        hDC := BeginPaint(hWnd, ps);
        try
          { create buffer }
          GetClientRect(hWnd, rClient);
          hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
          BufferedPaintClear(hPaintBuffer, rClient);

          { draw background }
          DrawThemeBackground(g_hVertShowDesktopThemeButton, hBufferedDC, iPartId, iStateId, rClient, 0);

          { draw text }
          dwFlags := DT_SINGLELINE or DT_CENTER or DT_VCENTER;
          dtt.dwSize := SizeOf(dtt);
          dtt.iGlowSize := 6;
          dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
          if dwStyle and WS_DISABLED = 0 then
            dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
          else
            dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
          hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
          DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, iPartId, iStateId, StrToWStr(GetCaptionFromHandle(hWnd)), -1, dwFlags, rClient, dtt);
          if hFontOld <> 0 then
            SelectObject(hBufferedDC, hFontOld);

          { apply buffer }
          EndBufferedPaint(hPaintBuffer, True);
        finally
          EndPaint(hWnd, ps);
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_DESTROY:
      begin
        RemoveWindowSubclass(hWnd, g_pButtonDlgProc, 0);
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////
procedure GetDlgResources(const hWnd: HWND);
var
  hDummy: HWND;
begin
  { release previous theme handles }
  if g_hVertShowDesktopThemeButton <> 0 then
    CloseThemeData(g_hVertShowDesktopThemeButton);
  if g_hThemeTreeView <> 0 then
    CloseThemeData(g_hThemeTreeView);

  { exit if not composited }
  if not g_fEnabled then Exit;

  { button theme }
  hDummy := CreateWindowEx(0, WC_BUTTON, '', WS_CHILDWINDOW, 0, 0, 10, 10, hWnd, 0, HInstance, 0);
  SetWindowTheme(hDummy, StrToWStr('VerticalShowDesktop'), '');
  g_hVertShowDesktopThemeButton := OpenThemeDataEx(hDummy, StrToWStr('Button'), 1);
  DestroyWindow(hDummy);

  { treeview theme }
  hDummy := CreateWindowEx(0, 'SysTreeView32', '', WS_CHILDWINDOW, 0, 0, 10, 10, hWnd, 0, HInstance, 0);
  SetWindowTheme(hDummy, StrToWStr('Explorer'), '');
  g_hThemeTreeView := OpenThemeDataEx(hDummy, StrToWStr('TreeView'), 1);
  DestroyWindow(hDummy);
end;

///////////////////////////////////////////////////////////////////
function CBTProc(nCode: Integer; wParam, lParam: Longint): Longint;
begin
  if nCode < 0 then
    CallNextHookEx(g_hDlgHook, nCode, wParam, lParam);
  case nCode of
    HCBT_CREATEWND:
      begin
        case GetClassNameFromHandle(wParam) of
          WC_DIALOG:
            begin
              { check composition }
              if (GetWindowsVersion > $06000000) and (GetWindowsVersion < $06020000) then
                DwmIsCompositionEnabled(g_fEnabled);

              { get resources }
              GetDlgResources(wParam);

              { subclass }
              if g_pDlgProc = 0 then
                g_pDlgProc := CallbackAddr('DlgProc');
              SetWindowSubclass(wParam, g_pDlgProc, 0, nil);
            end;
          WC_STATIC:
            begin
              if g_pStaticDlgProc = 0 then
                g_pStaticDlgProc := CallbackAddr('StaticDlgProc');
              SetWindowSubclass(wParam, g_pStaticDlgProc, 0, nil);
            end;
          WC_BUTTON:
            begin
              if g_pButtonDlgProc = 0 then
                g_pButtonDlgProc := CallbackAddr('ButtonDlgProc');
              SetWindowSubclass(wParam, g_pButtonDlgProc, 0, nil);
            end;
        end;
        Result := 0;
      end;
  end;
  Result := CallNextHookEx(g_hDlgHook, nCode, wParam, lParam);
end;

/////////////////////
procedure SetDlgHook;
begin
  if g_pCBTProc = 0 then
    g_pCBTProc := CallbackAddr('CBTProc');
  g_hDlgHook := SetWindowsHookEx(WH_CBT, g_pCBTProc, 0, GetCurrentThreadId);
end;

////////////////////
procedure UnHookDlg;
begin
  UnhookWindowsHookEx(g_hDlgHook);
end;
#endif
///////////////////////////////////////
///////////////////////////////////////
///////////////////////////////////////
procedure FormOnPaint(Sender: TObject);
var
  i: Integer;
begin
  if not g_fEnabled then Exit;

  { TBevel }
  if Sender is TBevel then
    DrawAeroBevel(TBevel(Sender));

  { recurse }
  if Sender is TWinControl then
    for i := 0 to TWinControl(Sender).ControlCount - 1 do
      FormOnPaint(TWinControl(Sender).Controls[i]);
end;

/////////////////////////////////////////////////
function GetParentForm(Control: TControl): TForm;
begin
  while (not (Control is TForm)) and (Control.Parent <> nil) do
    Control := Control.Parent;
  if Control is TForm then
    Result := TForm(Control)
  else
    Result := nil;
end;

////////////////////////////////////////////////////////////////////
procedure GetGlassRegion(const hWnd: HWND; const ClipRect: MARGINS);
var
  rClient, rClip: TRect;
  hClipRgn: THandle;
begin
  GetClientRect(hWnd, rClient);
  if g_GlassRgn <> 0 then
  begin
    DeleteObject(g_GlassRgn);
    g_GlassRgn := 0;
  end;

  g_GlassRgn := CreateRectRgnIndirect(rClient);
  SetRect(rClip, ClipRect.cxLeftWidth, ClipRect.cyTopHeight, rClient.Right - ClipRect.cxRightWidth, rClient.Bottom - ClipRect.cyBottomHeight);
  if not IsRectEmpty(rClip) then
  begin
    hClipRgn := CreateRectRgnIndirect(rClip);
    if CombineRgn(g_GlassRgn, g_GlassRgn, hClipRgn, RGN_DIFF) = NULLREGION then
    begin
      DeleteObject(g_GlassRgn);
      g_GlassRgn := 0;
      g_GlassRgn := CreateRectRgnIndirect(rClient);
    end;
    DeleteObject(hClipRgn);
//    FillRgn(g_hDC, g_GlassRgn, GetSysColorBrush(COLOR_HIGHLIGHT));
  end;
end;

///////////////////////////////////////////////////////
procedure SubclassForm(const AWinControl: TWinControl);
var
  AForm: TForm;
  crColor: TColor;
begin
  { initial settings }
  crColor := clBtnFace;
#if aero == 1 || aero == 3 || aero == 4
  if g_fEnabled then
    crColor := clBackground;
#endif

  { TForm }
  AForm := GetParentForm(AWinControl);
  if Assigned(AForm) then
  with AForm do
  begin
    { settings }
    Color := crColor;
  #if aero == 1
    OnPaint := @FormOnPaint;
  #endif
    { subclass }
    if g_pWndProc = 0 then
      g_pWndProc := CallbackAddr('WndProc');
    SetWindowSubclass(Handle, g_pWndProc, 0, AForm);
  end;
end;

/////////////////////////////////////////////////////////////////////////////
procedure SubclassControls(const AControl: TControl; const Recurse: Boolean);
var
  i: Integer;
  hUpDownCtrl: HWND;
  cbi: COMBOBOXINFO;
  crColor: TColor;
begin
  { initial settings }
  if g_fEnabled then
    crColor := clBackground
  else
    crColor := clBtnFace;

#if aero == 0 || aero == 1
  { TNewNotebook }
  if AControl is TNewNotebook then
  with TNewNotebook(AControl) do
    for i := 0 to PageCount - 1 do
      Pages[i].Color := crColor;
#endif

  { TPanel }
  if AControl is TPanel then
  with TPanel(AControl) do
  begin
    if g_fEnabled then
      Color := clBackground
    else
      Color := clWindow;
  end;

  { TNewStaticText }
  if AControl is TNewStaticText then
  with TNewStaticText(AControl) do
  begin
    { settings }
    Caption := TrimRight(Caption);
    if g_fEnabled then
      Caption := Format('%s ', [Caption]);    // static aero glow fix

    { subclass }
    if g_pStaticWndProc = 0 then
      g_pStaticWndProc := CallbackAddr('StaticWndProc');
    SetWindowSubclass(Handle, g_pStaticWndProc, 0, AControl);
  end;

  { TButtonControl }
  if AControl is TButtonControl then
  with TButtonControl(AControl) do
  begin
    { settings }
    if AControl is TNewButton then
    begin
      if g_fEnabled then
        SetWindowTheme(Handle, StrToWStr('VerticalShowDesktop'), '')
      else
        SetWindowTheme(Handle, StrToWStr('Button'), '');
      SendMessage(Handle, WM_SYSCOLORCHANGE, 0, 0);
    end;

    { subclass }
    if g_pButtonWndProc = 0 then
      g_pButtonWndProc := CallbackAddr('ButtonWndProc');
    SetWindowSubclass(Handle, g_pButtonWndProc, 0, AControl);
  end;

  { TEdit, TNewMemo }
  if (AControl is TEdit) or (AControl is TNewMemo) then
  with TCustomEdit(AControl) do
  begin
    { settings }
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pEditWndProc = 0 then
      g_pEditWndProc := CallbackAddr('EditWndProc');
    SetWindowSubclass(Handle, g_pEditWndProc, 0, AControl);
  end;

  { TRichEditViewer }
  if AControl is TRichEditViewer then
  with TRichEditViewer(AControl) do
  begin
    { subclass }
    if g_pRichEditWndProc = 0 then
      g_pRichEditWndProc := CallbackAddr('RichEditWndProc');
    SetWindowSubclass(Handle, g_pRichEditWndProc, 0, AControl);
  end;

  { TNewComboBox }
  if AControl is TNewComboBox then
  with TNewComboBox(AControl) do
  begin
    { subclass }
    if g_pComboBoxWndProc = 0 then
      g_pComboBoxWndProc := CallbackAddr('ComboBoxWndProc');
    SetWindowSubclass(Handle, g_pComboBoxWndProc, 0, AControl);

    { subclass ComboLBox }
    if AControl.Name = 'TypesCombo' then    // WizardForm.TypesCombo
    begin
      cbi.cbSize := SizeOf(cbi);
      if GetComboBoxInfo(Handle, cbi) then
      begin
        if g_pComboLBoxWndProc = 0 then
          g_pComboLBoxWndProc := CallbackAddr('TypesComboListBoxWndProc');
        SetWindowSubclass(cbi.hwndList, g_pComboLBoxWndProc, 0, AControl);
      end;
    end;
  end;

  { THeaderControl }
  if AControl is THeaderControl then
  with THeaderControl(AControl) do
  begin
    { settings }
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pHeaderWndProc = 0 then
      g_pHeaderWndProc := CallbackAddr('HeaderWndProc');
    SetWindowSubclass(Handle, g_pHeaderWndProc, 0, AControl);
  end;

  { TListView }
  if AControl is TListView then
  with TListView(AControl) do
  begin
    { settings }
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pListViewWndProc = 0 then
      g_pListViewWndProc := CallbackAddr('ListViewWndProc');
    SetWindowSubclass(Handle, g_pListViewWndProc, 0, AControl);
  end;

  { TStartMenuFolderTreeView }
  if AControl is TStartMenuFolderTreeView then
  with TStartMenuFolderTreeView(AControl) do
  begin
    { settings }
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pTreeViewWndProc = 0 then
      g_pTreeViewWndProc := CallbackAddr('TreeViewWndProc');
    SetWindowSubclass(Handle, g_pTreeViewWndProc, 0, AControl);
  end;

  { TNewCheckListBox }
  if AControl is TNewCheckListBox then
  with TNewCheckListBox(AControl) do
  begin
    { settings }
    if TListBox(WizardForm.ComponentsList as TListBox).Handle <> 0 then
    Color := crColor;
    SetProp(Handle, 'AERO_LISTBOX_WANTTABS', Longint(WantTabs));
    if g_fEnabled then
      WantTabs := True
    else
      WantTabs := GetProp(Handle, 'AERO_LISTBOX_WANTTABS') = 1;
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pCheckListBoxWndProc = 0 then
      g_pCheckListBoxWndProc := CallbackAddr('CheckListBoxWndProc');
    SetWindowSubclass(Handle, g_pCheckListBoxWndProc, 0, TNewCheckListBox(AControl));
  end;

  { TListBox }
  if (AControl is TListBox) and not(AControl is TNewCheckListBox) then
  with TListBox(AControl) do
  begin
    { settings }
    Color := crColor;
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pListBoxWndProc = 0 then
      g_pListBoxWndProc := CallbackAddr('ListBoxWndProc');
    SetWindowSubclass(Handle, g_pListBoxWndProc, 0, TListBox(AControl));
  end;

  { TPageControl }
  if AControl is TPageControl then
  with TPageControl(AControl) do
  begin
    { settings }
    if not MultiLine then
    begin
      hUpDownCtrl := FindWindowEx(Handle, 0, 'msctls_updown32', '');
      if hUpDownCtrl <> 0 then
      begin
        if g_pUpDownWndProc = 0 then
          g_pUpDownWndProc := CallbackAddr('UpDownWndProc');
        SetWindowSubclass(hUpDownCtrl, g_pUpDownWndProc, 0, nil);
      end;
    end;

    { subclass }
    if g_pPageControlWndProc = 0 then
      g_pPageControlWndProc := CallbackAddr('PageControlWndProc');
    SetWindowSubclass(Handle, g_pPageControlWndProc, 0, AControl);
  end;

  { TTabSheet }
  if AControl is TTabSheet then
  with TTabSheet(AControl) do
  begin
    { subclass }
    if g_pTabSheetWndProc = 0 then
      g_pTabSheetWndProc := CallbackAddr('TabSheetWndProc');
    SetWindowSubclass(Handle, g_pTabSheetWndProc, 0, AControl);
  end;

  { TBevel }
  if AControl is TBevel then
  with TBevel(AControl) do
  begin
    Visible := not g_fEnabled;
  end;

  { recurse }
  if not Recurse then Exit;
  if AControl is TWinControl then
    for i := 0 to TWinControl(AControl).ControlCount - 1 do
      SubclassControls(TWinControl(AControl).Controls[i], Recurse);
end;

////////////////////////////////////////////////////////////////
procedure UpdateGraphicControls(const AWinControl: TWinControl);
var
  hbrBackground: THandle;
  crBackground: DWORD;
  AForm: TForm;
  shfi: SHFILEINFO;
  hIcon: THandle;
  i: Integer;
begin
  { global brush }
  hbrBackground := GetSysColorBrush(COLOR_BTNFACE);
  crBackground := GetSysColor(COLOR_BTNFACE);
#if aero == 1
  if g_fEnabled then
  begin
    hbrBackground := GetSysColorBrush(COLOR_BACKGROUND);
    crBackground := GetSysColor(COLOR_BACKGROUND);
  end;
#endif
  { root form }
  AForm := GetParentForm(AWinControl);

  { TSelectLanguageForm }
  if AForm is TSelectLanguageForm then
  with TSelectLanguageForm(AForm).IconBitmapImage.Bitmap do
    DrawIconEx(Canvas.Handle, 0, 0, Application.Icon.Handle, Width, Height, 0, hbrBackground, DI_NORMAL);

  { TWizardForm }
  if AForm is TWizardForm then
  with TWizardForm(AForm) do
  begin
    { SelectDirBitmapImage }
    SHGetFileInfo(GetShellFolderByCSIDL(CSIDL_STARTMENU, True), 0, shfi, SizeOf(shfi), SHGFI_ICON);
    with SelectDirBitmapImage.Bitmap do
      DrawIconEx(Canvas.Handle, 0, 0, shfi.hIcon, Width, Height, 0, hbrBackground, DI_NORMAL);

    { SelectGroupBitmapImage }
    if (GetWindowsVersion > $05010000) and (GetWindowsVersion < $06000000) then
    begin
      SHGetFileInfo(GetShellFolderByCSIDL(CSIDL_PROGRAMS, True), 0, shfi, SizeOf(shfi), SHGFI_ICON);
      with SelectGroupBitmapImage.Bitmap do
        DrawIconEx(Canvas.Handle, 0, 0, shfi.hIcon, Width, Height, 0, hbrBackground, DI_NORMAL);
    end;
    if GetWindowsVersion > $06000000 then
    begin
      shfi.hIcon := ExtractIcon(HInstance, ExpandConstant('{sys}\shell32.dll'), 39);
      with SelectGroupBitmapImage.Bitmap do
        DrawIconEx(Canvas.Handle, 0, 0, shfi.hIcon, Width, Height, 0, hbrBackground, DI_NORMAL);
      DestroyIcon(shfi.hIcon);
    end;

    { bitmaps }
    DrawImageOnBitmap(WizardBitmapImage, '{#WizardImageFile}', crBackground);
    DrawImageOnBitmap(WizardBitmapImage2, '{#WizardImageFile}', crBackground);
    if g_fEnabled then
    #if aero == 3
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_WINDOW))
    #else
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_BACKGROUND))
    #endif
    else
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_WINDOW));
    DrawImageOnBitmap(DefaultInstallTypeBitmapImage, '{#InstallLogo}', crBackground);
    DrawImageOnBitmap(PortableInstallTypeBitmapImage, '{#PortableLogo}', crBackground);
    DrawImageOnBitmap(DefaultUninstallTypeBitmapImage, '{#RecycleLogo}', crBackground);
    with StylesPage.CheckListBox do
      if AbsItemIndex > -1 then
        DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[AbsItemIndex].szSelectedBitmap, crBackground);
    with PreparePageBitmap do
    begin
      hIcon := LoadImage(0, OIC_ERROR, IMAGE_ICON, 0, 0, LR_SHARED);
      DrawIconEx(Bitmap.Canvas.Handle, 0, 0, hIcon, Width, Height, 0, hbrBackground, DI_NORMAL);
    end;
  end;

  { TUninstallProgressForm }
  if AForm is TUninstallProgressForm then with TUninstallProgressForm(AForm) do
  begin
    { WizardSmallBitmapImage }
    if g_fEnabled then
    #if aero == 3
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_WINDOW))
    #else
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_BACKGROUND))
    #endif
    else
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_WINDOW));
  end;

  { PreviewForm }
  if AForm = PreviewForm then
  with PreviewForm do
  begin
    for i := 0 to GetArrayLength(g_StylesHelper) - 1 do
    case g_StylesHelper[i].szInternalName of
//      'SkinDiplomatDark',
//      'SkinDiplomatLight',
      'SkinGlamourDark',
      'SkinGlamourLight',
//      'SkinGoldtimeDark',
//      'SkinGoldtimeLight',
      'SkinGraphiteDark',
      'SkinGraphiteLight',
      'SkinPhotooneDark',
      'SkinPhotooneLight',
      'SkinSurfaceBlack',
      'SkinSurfaceWhite',
      'SkinTextoliteDark',
      'SkinTextoliteLight':
        if StylesPage.CheckListBox.Checked[i] then
          DrawImageOnBitmap(PreviewFormBitmapImage, g_StylesHelper[i].szPreviewBitmap, crBackground);
    end;
    ClientWidth := PreviewFormBitmapImage.Width;
    ClientHeight := PreviewFormBitmapImage.Height;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////
procedure SubclassControlsProc(AWinControl: TWinControl; const Recurse: Boolean);
var
  i: Integer;
begin
#if aero != 0
  { check composition }
  if (GetWindowsVersion > $06000000) and (GetWindowsVersion < $06020000) then
    DwmIsCompositionEnabled(g_fEnabled);
#endif
  { enable buffered paint }
  if g_fEnabled then
    BufferedPaintInit;

  { subclass }
  GetThemeHandles(AWinControl);
  SubclassForm(AWinControl);
  SubclassControls(AWinControl, Recurse);
  if not Recurse then
    for i := 0 to AWinControl.ControlCount - 1 do
      SubclassControls(AWinControl.Controls[i], False);
  UpdateGraphicControls(AWinControl);
  Application.ProcessMessages;
end;

/////////////////////////////////////////////////////////
procedure UnSubclassForm(const AWinControl: TWinControl);
var
  AForm: TForm;
begin
  AForm := GetParentForm(AWinControl);
  if Assigned(AForm) then
    RemoveWindowSubclass(AForm.Handle, g_pWndProc, 0);
end;

///////////////////////////////////////////////////////
procedure UnSubclassControls(const AControl: TControl);
var
  i: Integer;
  hUpDownCtrl: HWND;
  cbi: COMBOBOXINFO;
begin
  { TNewStaticText }
  if AControl is TNewStaticText then
    RemoveWindowSubclass(TNewStaticText(AControl).Handle, g_pStaticWndProc, 0);

  { TButtonControl }
  if AControl is TButtonControl then
    RemoveWindowSubclass(TButtonControl(AControl).Handle, g_pButtonWndProc, 0);

  { TEdit }
  if (AControl is TEdit) or (AControl is TNewMemo) then
  with TCustomEdit(AControl) do
  begin
    DeleteObject(GetProp(Handle, 'AERO_EDIT_SELRGN'));
    RemoveProp(Handle, 'AERO_EDIT_SELRGN');
    RemoveWindowSubclass(Handle, g_pEditWndProc, 0);
  end;

  { TRichEditViewer }
  if AControl is TRichEditViewer then
  with TRichEditViewer(AControl) do
  begin
    DeleteObject(GetProp(Handle, 'AERO_RICHEDIT_BRUSH'));
    RemoveProp(Handle, 'AERO_RICHEDIT_BRUSH');
    RemoveWindowSubclass(Handle, g_pRichEditWndProc, 0);
  end;

  { TNewComboBox }
  if AControl is TNewComboBox then
  with TNewComboBox(AControl) do
  begin
    RemoveProp(Handle, 'AERO_COMBOBOX_READONLYSTATES');
    RemoveWindowSubclass(Handle, g_pComboBoxWndProc, 0);

    { unsubclass ComboLBox }
    if AControl.Name = 'TypesCombo' then    // WizardForm.TypesCombo
    begin
      cbi.cbSize := SizeOf(cbi);
      if GetComboBoxInfo(Handle, cbi) then
        RemoveWindowSubclass(cbi.hwndList, g_pComboLBoxWndProc, 0);
    end;
  end;

  { THeaderControl }
  if AControl is THeaderControl then
    RemoveWindowSubclass(THeaderControl(AControl).Handle, g_pHeaderWndProc, 0);


  { TListView }
  if AControl is TListView then
    RemoveWindowSubclass(TListView(AControl).Handle, g_pListViewWndProc, 0);

  { TStartMenuFolderTreeView }
  if AControl is TStartMenuFolderTreeView then
    RemoveWindowSubclass(TStartMenuFolderTreeView(AControl).Handle, g_pTreeViewWndProc, 0);

  { TNewCheckListBox }
  if AControl is TNewCheckListBox then
  with TNewCheckListBox(AControl) do
  begin
    RemoveProp(Handle, 'AERO_LISTBOX_WANTTABS');
    RemoveWindowSubclass(Handle, g_pCheckListBoxWndProc, 0);
  end;

  { TListBox }
  if AControl is TListBox then
    RemoveWindowSubclass(TListBox(AControl).Handle, g_pListBoxWndProc, 0);

  { TPageControl }
  if AControl is TPageControl then
  with TPageControl(AControl) do
  begin
    if not MultiLine then
    begin
      hUpDownCtrl := FindWindowEx(Handle, 0, 'msctls_updown32', '');
      RemoveWindowSubclass(hUpDownCtrl, g_pUpDownWndProc, 0);
    end;
    RemoveWindowSubclass(Handle, g_pPageControlWndProc, 0);
  end;

  { TTabSheet }
  if AControl is TTabSheet then
    RemoveWindowSubclass(TTabSheet(AControl).Handle, g_pTabSheetWndProc, 0);

  { recurse }
  if AControl is TWinControl then
    for i := 0 to TWinControl(AControl).ControlCount - 1 do
      UnSubclassControls(TWinControl(AControl).Controls[i]);
end;

/////////////////////////////////////////////////////////////////
procedure UnSubclassControlsProc(const AWinControl: TWinControl);
begin
  { unsubclass }
  UnSubclassForm(AWinControl);
  UnSubclassControls(AWinControl);
  UpdateGraphicControls(AWinControl);

  { disable buffered paint }
  if (GetWindowsVersion > $06000000) and (GetWindowsVersion < $06020000) then
    BufferedPaintUnInit;
end;
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
procedure CreateWizardForm(const cx, cy: DWORD);
var
  dx: DWORD;
begin
  { load bitmap }
  DrawImageOnBitmap(WizardForm.WizardBitmapImage, '{#WizardImageFile}', 0);
  DrawImageOnBitmap(WizardForm.WizardBitmapImage2, '{#WizardImageFile}', 0);
  DrawImageOnBitmap(WizardForm.WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', 0);

  { redesign form }
  with WizardForm do
  begin
    // metrics
    cx := ScaleX(cx);
    cy := ScaleY(cy);
    ClientWidth := ClientWidth + cx;
    ClientHeight := ClientHeight + cy;

    // Buttons
    CancelButton.Left := CancelButton.Left + cx;
    CancelButton.Top := CancelButton.Top + cy;
    NextButton.Left := NextButton.Left + cx;
    NextButton.Top := NextButton.Top + cy;
    BackButton.Left := BackButton.Left + cx;
    BackButton.Top := BackButton.Top + cy;

    // Common
    OuterNotebook.ClientWidth := ClientWidth;
    OuterNotebook.ClientHeight := OuterNotebook.ClientHeight + cy;
    InnerNotebook.Width := InnerNotebook.Width + cx;
    InnerNotebook.Height := InnerNotebook.Height + cy;
    MainPanel.ClientWidth := ClientWidth;
    dx := MulDiv(cy, WizardBitmapImage.Width, WizardBitmapImage.Height);
    WizardBitmapImage.Width := WizardBitmapImage.Width + dx;
    WizardBitmapImage.Height := WizardBitmapImage.Height + cy;
    WizardSmallBitmapImage.Width := WizardSmallBitmapImage.Bitmap.Width;
    WizardSmallBitmapImage.Left := MainPanel.ClientWidth - WizardSmallBitmapImage.Width - ScaleX(8);
    PageNameLabel.Width := WizardSmallBitmapImage.Left - PageNameLabel.Left - ScaleX(8);
    PageDescriptionLabel.Width := WizardSmallBitmapImage.Left - PageDescriptionLabel.Left - ScaleX(8);
    Bevel1.Width := Bevel1.Width + cx;
    Bevel.Width := Bevel.Width + cx;
    Bevel.Top := Bevel.Top + cy;
    BeveledLabel.Left := ScaleX(25);
    BeveledLabel.Top := BeveledLabel.Top + cy;

    // Welcome page
    WelcomeLabel1.Left := WelcomeLabel1.Left + dx;
    WelcomeLabel1.Width := WelcomeLabel1.Width + cx;
    WelcomeLabel2.Left := WelcomeLabel2.Left + dx;
    WelcomeLabel2.Width := WelcomeLabel2.Width + cx;
    WelcomeLabel2.Height := WelcomeLabel2.Height + cy;

    // License page
    LicenseLabel1.Width := LicenseLabel1.Width + cx;
    LicenseMemo.Width := LicenseMemo.Width + cx;
    LicenseMemo.Height := LicenseMemo.Height + cy;
    LicenseAcceptedRadio.Top := LicenseAcceptedRadio.Top + cy;
    LicenseAcceptedRadio.Checked := True;
    LicenseAcceptedRadio.Hide;
    LicenseNotAcceptedRadio.Top := LicenseNotAcceptedRadio.Top + cy;
    LicenseNotAcceptedRadio.Hide;
    LicenseMemo.Height := LicensePage.Height - LicenseMemo.Top - ScaleY(8);

    // Password page
    PasswordLabel.Width := PasswordLabel.Width + cx;

    // InfoBefore page
    InfoBeforeClickLabel.Width := InfoBeforeClickLabel.Width + cx;
    InfoBeforeMemo.Width := InfoBeforeMemo.Width + cx;
    InfoBeforeMemo.Height := InfoBeforeMemo.Height + cy;

    // UserInfo page
    UserInfoNameEdit.Width := UserInfoNameEdit.Width + cx;
    UserInfoOrgEdit.Width := UserInfoOrgEdit.Width + cx;
    UserInfoSerialEdit.Width := UserInfoSerialEdit.Width + cx;

    // SelectDir page
    SelectDirLabel.Width := SelectDirLabel.Width + cx;
    SelectDirBrowseLabel.Width := SelectDirBrowseLabel.Width + cx;
    DirEdit.Width := DirEdit.Width + cx;
    DirBrowseButton.Left := DirBrowseButton.Left + cx;
    DiskSpaceLabel.Top := DiskSpaceLabel.Top + cy;

    // ComponentsSelect page
    SelectComponentsLabel.Width := SelectComponentsLabel.Width + cx;
    TypesCombo.Width := TypesCombo.Width + cx;
    ComponentsList.Width := ComponentsList.Width + cx;
    ComponentsList.Height := ComponentsList.Height + cy;
    ComponentsDiskSpaceLabel.Top := ComponentsDiskSpaceLabel.Top + cy;

    // SelectProgramGroup page
    SelectStartMenuFolderLabel.Width := SelectStartMenuFolderLabel.Width + cx;
    SelectStartMenuFolderBrowseLabel.Width := SelectStartMenuFolderBrowseLabel.Width + cx;
    GroupEdit.Width := GroupEdit.Width + cx;
    GroupBrowseButton.Left := GroupBrowseButton.Left + cx;
    NoIconsCheck.Top := NoIconsCheck.Top + cy;

    // SelectTasks page
    SelectTasksLabel.Width := SelectTasksLabel.Width + cx;
    TasksList.Width := TasksList.Width + cx;
    TasksList.Height := TasksList.Height + cy;

    // Ready page
    ReadyLabel.Width := ReadyLabel.Width + cx;
    ReadyMemo.Width := ReadyMemo.Width + cx;
    ReadyMemo.Height := ReadyMemo.Height + cy;

    // Preparing page
    PreparingLabel.Width := PreparingLabel.Width + cx;
    PreparingMemo.Width := PreparingMemo.Width + cx;
    PreparingMemo.Height := PreparingMemo.Height + cy;

    // Installing page
    StatusLabel.Width := StatusLabel.Width + cx;
    FilenameLabel.Top := FilenameLabel.Top + ScaleY(3);
    FilenameLabel.Width := FilenameLabel.Width + cx;
    ProgressGauge.Width := ProgressGauge.Width + cx;

    // InfoAfter page
    InfoAfterClickLabel.Width := InfoAfterClickLabel.Width + cx;
    InfoAfterMemo.Width := InfoAfterMemo.Width + cx;
    InfoAfterMemo.Height := InfoAfterMemo.Height + cy;

    // Finished page
    WizardBitmapImage2.Width := WizardBitmapImage2.Width + dx;
    WizardBitmapImage2.Height := WizardBitmapImage2.Height + cy;
    FinishedHeadingLabel.Left := FinishedHeadingLabel.Left + dx;
    FinishedHeadingLabel.Width := FinishedHeadingLabel.Width + cx;
    FinishedLabel.Left := FinishedLabel.Left + dx;
    FinishedLabel.Width := FinishedLabel.Width + cx;
    RunList.Left := RunList.Left + dx;
    RunList.Width := RunList.Width + cx;
    YesRadio.Left := YesRadio.Left + dx;
    YesRadio.Width := YesRadio.Width + cx;
    NoRadio.Left := NoRadio.Left + dx;
    NoRadio.Width := NoRadio.Width + cx;

    //
    Center;
  end;
end;
////////////////////////////
////////////////////////////
////////////////////////////
procedure CreateWelcomePage;
begin
  { WelcomePage }
  WizardForm.WelcomePage.Color := clBtnFace;

  { WelcomeMessage }
  WelcomeMessage := TNewStaticText.Create(WizardForm);
  with WelcomeMessage do
  begin
    Parent := WizardForm.WelcomePage;
    Font.Size := 11;
    Font.Style := [fsBold];
    Caption := CustomMessage('WelcomeMessageCaption');
    AutoSize := False;
    SetBounds(WizardForm.WelcomeLabel2.Left, WizardForm.WelcomeLabel2.Top + WizardForm.WelcomeLabel2.Height shr 1 + Height, WizardForm.WelcomeLabel2.Width, WizardForm.WelcomeLabel2.Height shr 1);
    WordWrap := True;
  end;
end;
//////////////////////////////////////////////////
//////////////////////////////////////////////////
//////////////////////////////////////////////////
procedure InstallTypePageOnClick(Sender: TObject);
begin
  case Sender of
    { BitmapImage, TNewStaticText }
    DefaultInstallTypeBitmapImage,
    DefaultInstallTypeCaption:
      DefaultInstallType.Perform(BM_CLICK, 0, 0);
    PortableInstallTypeBitmapImage,
    PortableInstallTypeCaption:
      PortableInstallType.Perform(BM_CLICK, 0, 0);
    DefaultUninstallTypeBitmapImage,
    DefaultUninstallTypeCaption:
      DefaultUninstallType.Perform(BM_CLICK, 0, 0);

    { RadioButton }
    DefaultInstallType:
      CheckDefaultInstall;
    PortableInstallType:
      CheckPortableInstall;
    DefaultUninstallType:
      WizardForm.Caption := FmtMessage(CustomMessage('UninstallWindowTitle'), ['{#AppName}']);    // uninstall caption
  end;
end;

////////////////////////////////
procedure CreateInstallTypePage;
begin
  { create page }
  InstallTypePage := CreateInputOptionPage(wpInfoBefore, CustomMessage('WizardInstallType'), CustomMessage('WizardInstallTypeDesc'), SetupMessage(msgInfoBeforeClickLabel), False, False);
  InstallTypePage.CheckListBox.Free;

  { default install type }
  DefaultInstallType := TNewRadioButton.Create(InstallTypePage);
  with DefaultInstallType do
  begin
    Parent := InstallTypePage.Surface;
    Top := InstallTypePage.SubCaptionLabel.Top + InstallTypePage.SubCaptionLabel.Height + ScaleY(40);
    Width := ScaleX(16);
    Checked := (GetSetupPreviousDataEx('UninstallString', '') = '') xor CheckUpdateVersion('{#AppUpdateVersion}');  // checked if clean or updatable installation
    Enabled := Checked;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { DefaultInstallTypeBitmapImage }
  DefaultInstallTypeBitmapImage := TBitmapImage.Create(InstallTypePage);
  with DefaultInstallTypeBitmapImage do
  begin
    Parent := InstallTypePage.Surface;
    DrawImageOnBitmap(DefaultInstallTypeBitmapImage, '{#InstallLogo}', 0);
    SetBounds(DefaultInstallType.Left + DefaultInstallType.Width + ScaleX(1), DefaultInstallType.Top + (DefaultInstallType.Height - Bitmap.Height) div 2, Bitmap.Width, Bitmap.Height);
    Enabled := DefaultInstallType.Enabled;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { DefaultInstallTypeCaption }
  DefaultInstallTypeCaption := TNewStaticText.Create(InstallTypePage);
  with DefaultInstallTypeCaption do
  begin
    Parent := InstallTypePage.Surface;
    Left := DefaultInstallTypeBitmapImage.Left + DefaultInstallTypeBitmapImage.Width + ScaleX(4);
    Width := InstallTypePage.SurfaceWidth - Left - ScaleX(5);
    WordWrap := True;
    if CheckUpdateVersion('{#AppUpdateVersion}') then
    begin
      Caption := FmtMessage(CustomMessage('DefaultUpdateTypeCaption'), [ExtractFileName(ExpandConstant('{userappdata}'))]);       // update caption
      WizardForm.Caption := FmtMessage(CustomMessage('UpdateWindowTitle'), ['{#AppName}']);                                       // update caption
    end
    else
      Caption := FmtMessage(CustomMessage('DefaultInstallTypeCaption'), [ExtractFileName(ExpandConstant('{userappdata}'))]);      // default caption
    Top := DefaultInstallType.Top + (DefaultInstallType.Height - Height) div 2;
    Enabled := DefaultInstallType.Enabled;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { portable install type }
  PortableInstallType := TNewRadioButton.Create(InstallTypePage);
  with PortableInstallType do
  begin
    Parent := InstallTypePage.Surface;
    Top := DefaultInstallType.Top + (InstallTypePage.SurfaceHeight - DefaultInstallType.Top - ScaleY(5)) div 3;
    Width := ScaleX(16);
    Cursor := crHand;
    Checked := not DefaultInstallType.Checked;
    OnClick := @InstallTypePageOnClick;
  end;

  { PortableInstallTypeBitmapImage }
  PortableInstallTypeBitmapImage := TBitmapImage.Create(InstallTypePage);
  with PortableInstallTypeBitmapImage do
  begin
    Parent := InstallTypePage.Surface;
    DrawImageOnBitmap(PortableInstallTypeBitmapImage, '{#PortableLogo}', 0);
    SetBounds(PortableInstallType.Left + PortableInstallType.Width + ScaleX(1), PortableInstallType.Top + (PortableInstallType.Height - Bitmap.Height) div 2, Bitmap.Width, Bitmap.Height);
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { PortableInstallTypeCaption }
  PortableInstallTypeCaption := TNewStaticText.Create(InstallTypePage);
  with PortableInstallTypeCaption do
  begin
    Parent := InstallTypePage.Surface;
    Left := PortableInstallTypeBitmapImage.Left + PortableInstallTypeBitmapImage.Width + ScaleX(4);
    Width := InstallTypePage.SurfaceWidth - Left - ScaleX(5);
    WordWrap := True;
    Caption := CustomMessage('PortableInstallTypeCaption');
    Top := PortableInstallType.Top + (PortableInstallType.Height - Height) div 2;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { uninstall type }
  DefaultUninstallType := TNewRadioButton.Create(InstallTypePage);
  with DefaultUninstallType do
  begin
    Parent := InstallTypePage.Surface;
    Top := DefaultInstallType.Top + 2*((InstallTypePage.SurfaceHeight - DefaultInstallType.Top - ScaleY(5)) div 3);
    Width := ScaleX(16);
    Cursor := crHand;
    Enabled := GetSetupPreviousData('UninstallString', '') <> '';   // enabled if uninstall entry found
    OnClick := @InstallTypePageOnClick;
  end;

  { DefaultUninstallTypeBitmapImage }
  DefaultUninstallTypeBitmapImage := TBitmapImage.Create(InstallTypePage);
  with DefaultUninstallTypeBitmapImage do
  begin
    Parent := InstallTypePage.Surface;
    DrawImageOnBitmap(DefaultUninstallTypeBitmapImage, '{#RecycleLogo}', 0);
    SetBounds(DefaultUninstallType.Left + DefaultUninstallType.Width + ScaleX(1), DefaultUninstallType.Top + (DefaultUninstallType.Height - Bitmap.Height) div 2, Bitmap.Width, Bitmap.Height);
    Enabled := DefaultUninstallType.Enabled;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { DefaultUninstallTypeCaption }
  DefaultUninstallTypeCaption := TNewStaticText.Create(InstallTypePage);
  with DefaultUninstallTypeCaption do
  begin
    Parent := InstallTypePage.Surface;
    Left := DefaultUninstallTypeBitmapImage.Left + DefaultUninstallTypeBitmapImage.Width + ScaleX(4);
    Width := InstallTypePage.SurfaceWidth - Left - ScaleX(5);
    WordWrap := True;
    Caption := CustomMessage('DefaultUninstallTypeCaption');
    Top := DefaultUninstallType.Top + (DefaultUninstallType.Height - Height) div 2;
    Enabled := DefaultUninstallType.Enabled;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;
end;
////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
function BytesToSize(const exBytes: Double): AnsiString;
begin
  Result := StringOfChar(#0, 15);
  if Abs(exBytes) > 9.223372036854775807E18 then exBytes := 0;
#ifdef UNICODE
  Result := CastIntegerToAnsiString(StrFormatByteSize64(Abs(exBytes div 1E4), Result, Length(Result)));
#else
  Result := CastIntegerToString(StrFormatByteSize64(Abs(exBytes div 1E4), Result, Length(Result)));
#endif
end;

////////////////////////////////////////////////////
function Size64(QuadPart: ULARGE_INTEGER): Extended;
begin
  Result := (QuadPart.HighPart + Integer(QuadPart.LowPart < 0))*4.294967296E9 + QuadPart.LowPart;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure DriveHeaderOnSectionTrack(HeaderControl: THeaderControl; Section: THeaderSection; Width: Integer; State: TSectionTrackState);
var
  pt: TPoint;
  rc: TRect;
  hWndHeader: HWND;
begin
  pt := TListView(HeaderControl.Parent).ViewOrigin;
  hWndHeader := SendMessage(TListView(HeaderControl.Parent).Handle, LVM_GETHEADER, 0, 0);
  if hWndHeader <> 0 then
  begin
    pt := TListView(HeaderControl.Parent).ViewOrigin;
    GetClientRect(hWndHeader, rc);
    SetWindowPos(HeaderControl.Handle, 0, -pt.x, HeaderControl.Top, rc.Right, HeaderControl.Height, SWP_NOZORDER or SWP_NOACTIVATE);
  end;
  if Width > 0 then
    TListView(HeaderControl.Parent).Column[Section.Index].Width := Width
  else
    TListView(HeaderControl.Parent).Column[Section.Index].Width := 0;
end;

////////////////////////////////////////////////
procedure DriveListViewOnClick(Sender: TObject);
var
  szDriveLetter: string;
begin
  if Assigned(TListView(Sender).Selected) then
  begin
    { get drive letter }
    szDriveLetter := TListView(Sender).Selected.Caption;
    if Length(szDriveLetter) = 0 then Exit;
    szDriveLetter := szDriveLetter[Pos('(', szDriveLetter) + 1];

    { no removable devices for default install }
    if IsDefaultSetupType then
      if GetDriveType(Format('%s:\', [szDriveLetter])) = DRIVE_REMOVABLE then Exit;

    { detect Program Files dir }
    WizardForm.DirEdit.Text := Format('%s:\{#AppPath}', [szDriveLetter]);
    if DirExists(Format('%s:\%s', [szDriveLetter, ExtractFileName(ExpandConstant('{pf}'))])) then
      WizardForm.DirEdit.Text := Format('%s:\%s\{#AppPath}', [szDriveLetter, ExtractFileName(ExpandConstant('{pf}'))]);
    if DirExists(Format('%s:\Programs', [szDriveLetter])) then
      WizardForm.DirEdit.Text := Format('%s:\Programs\{#AppPath}', [szDriveLetter]);
  end;
end;

//////////////////////////////
procedure CreateSelectDirPage;
var
  i: Integer;
  uDriveType: UINT;
  szDriveLetter, szFileSystemName: string;
  dwDrives: DWORD;
  uiFreeBytesAvailableToCaller, uiTotalNumberOfBytes, uiTotalNumberOfFreeBytes: ULARGE_INTEGER;
  shfi: SHFILEINFO;
  hImgList: THandle;
begin
  { g_DriveListView }
  g_DriveListView := TListView.Create(WizardForm);
  with g_DriveListView do
  begin
    Parent := WizardForm.SelectDirPage;
    Top := WizardForm.DirEdit.Top + WizardForm.DirEdit.Height + ScaleY(5);
    Width := WizardForm.SelectDirPage.Width;
    Height := WizardForm.DiskSpaceLabel.Top - Top - ScaleY(5);
    ViewStyle := vsReport;
    ShowColumnHeaders := False;
    ReadOnly := True;
    Color := clWindow;
    OnClick := @DriveListViewOnClick;
    SendMessage(Handle, LVM_SETEXTENDEDLISTVIEWSTYLE, 0, LVS_EX_FULLROWSELECT);

    // create imagelist
    hImgList := ImageList_Create(16, 16, ILC_COLOR32, 0, 0);
    Perform(LVM_SETIMAGELIST, LVSIL_SMALL, hImgList);

    // create columns
    for i := 0 to 4 do
    begin
      Columns.Add;
      Column[i].Caption := CustomMessage(Format('DiskListView_%d', [i]));
      Column[i].Width := LVSCW_AUTOSIZE_USEHEADER;
    end;

    // create dummy row
    Items.Add;
    Items.Item[0].ImageIndex := ImageList_ReplaceIcon(hImgList, -1, Application.Icon.Handle);

    // create rows
    dwDrives := GetLogicalDrives;
    for i := 2 to 25 do
      if dwDrives and (1 shl i) <> 0 then
      begin
        szDriveLetter := Chr(Ord('A') + i) + ':\';
        uDriveType := GetDriveType(szDriveLetter);
        case uDriveType of
          DRIVE_REMOVABLE,
          DRIVE_FIXED:
            begin
              // get filesystem
              szFileSystemName := StringOfChar(#0, MAX_PATH);
              GetVolumeInformation(szDriveLetter, 0, 0, 0, 0, 0, szFileSystemName, MAX_PATH);

              // get space
              GetDiskFreeSpaceEx(szDriveLetter, uiFreeBytesAvailableToCaller, uiTotalNumberOfBytes, uiTotalNumberOfFreeBytes);

              // get file info
              SHGetFileInfo(szDriveLetter, 0, shfi, SizeOf(shfi), SHGFI_ICON or SHGFI_TYPENAME or SHGFI_DISPLAYNAME or SHGFI_SMALLICON);

              // add item
              Items.Add;
              with Items.Item[Items.Count - 1] do
              begin
                Caption := CharArrayToString(shfi.szDisplayName);
                SubItems.Add(szFileSystemName);
                SubItems.Add(BytesToSize(Size64(uiTotalNumberOfBytes)));
                SubItems.Add(Format('%s (%d%%)', [BytesToSize(Size64(uiTotalNumberOfFreeBytes)), Round(Size64(uiTotalNumberOfFreeBytes)*100/(Size64(uiTotalNumberOfBytes)+1))]));
                SubItems.Add(CharArrayToString(shfi.szTypeName));
                ImageIndex := ImageList_ReplaceIcon(hImgList, -1, shfi.hIcon);
              end;
            end;
          DRIVE_NO_ROOT_DIR: Continue;
        end;
      end;

      // fix width iconized column
      Column[0].Width := Column[0].Width + ScaleY(16);
  end;

  { g_DriveHeader }
  g_DriveHeader := THeaderControl.Create(WizardForm);
  with g_DriveHeader do
  begin
    Parent := g_DriveListView;
    for i := 0 to 4 do
    begin
      Sections.Add;
      Sections.Items[i].Text := TListView(Parent).Column[i].Caption;
      Sections.Items[i].Width := TListView(Parent).Column[i].Width;
    end;
    OnSectionTrack := @DriveHeaderOnSectionTrack;
  end;
end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function TypesComboEditWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
begin
  case uMsg of
    WM_NCHITTEST:
      begin
        ComponentListInfoLabel.Caption := g_TypesHelper[WizardForm.TypesCombo.ItemIndex].szDescription;
        ComponentListInfoLabel.Enabled := True;
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
    CN_CTLCOLOREDIT:
      begin
        ComponentListInfoLabel.Caption := CustomMessage('TypesListInfoCaption');
        ComponentListInfoLabel.Enabled := False;
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function TypesComboListBoxWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
begin
  case uMsg of
    WM_NCHITTEST:
      begin
        ComponentListInfoLabel.Caption := g_TypesHelper[WizardForm.TypesCombo.ItemIndex].szDescription;
        ComponentListInfoLabel.Enabled := True;
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure ComponentListOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  case Button of
    mbLeft:
      WizardForm.NextButton.Enabled := IsComponentSelected('protocols');
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure ComponentsListOnItemMouseMove(Sender: TObject; X, Y: Integer; Index: Integer; Area: TItemArea);
begin
	if Index = -1 then
	begin
	ComponentListInfoLabel.Caption := CustomMessage('ComponentListInfoCaption');
	ComponentListInfoLabel.Enabled := False;
    SetCapture(0);
	end
  else
  begin
  	ComponentListInfoLabel.Caption := g_ComponentsHelper[Index].szDescription;
  	ComponentListInfoLabel.Enabled := True;
  	SetCapture(TNewCheckListBox(Sender).Handle);
  end;
end;

/////////////////////////////////////
procedure CreateSelectComponentsPage;
begin
  with WizardForm do
  begin
    { SelectComponentsLabel }
    SelectComponentsLabel.AdjustHeight;

    { ComponentsPageDescriptionBevel }
    ComponentsPageDescriptionBevel := TBevel.Create(WizardForm);
    with ComponentsPageDescriptionBevel do
    begin
      Parent := SelectComponentsPage;
      Left := 2 * SelectComponentsPage.Width div 3 + ScaleX(5);
      Top := SelectComponentsLabel.Top + SelectComponentsLabel.Height + ScaleY(5);
      Width := SelectComponentsPage.Width - Left;
      Height := ComponentsDiskSpaceLabel.Top - Top - ScaleY(5);
      Shape := bsFrame;
    end;

    { ComponentListInfoLabel }
    ComponentListInfoLabel := TNewStaticText.Create(WizardForm);
    with ComponentListInfoLabel do
    begin
      Parent := SelectComponentsPage;
      AutoSize := False;
      Left := ComponentsPageDescriptionBevel.Left + ScaleX(5);
      Top := ComponentsPageDescriptionBevel.Top + ScaleY(5);
      Width := ComponentsPageDescriptionBevel.Width - 2*ScaleX(5);
      Height := ComponentsPageDescriptionBevel.Height - 2*ScaleY(5);
      WordWrap := True;
      Caption := CustomMessage('ComponentListInfoCaption');
      Enabled := False;
    end;

    { TypesCombo }
    with TypesCombo do
    begin
      Top := ComponentsPageDescriptionBevel.Top;
      Width := SelectComponentsPage.Width - ComponentsPageDescriptionBevel.Width - ScaleX(5);
      Height := ComponentsPageDescriptionBevel.Height;
    end;

    { ComponentsList }
    with ComponentsList do
    begin
      Top := TypesCombo.Top + TypesCombo.Height + ScaleY(2);
      Width := TypesCombo.Width;
      Height := ComponentsDiskSpaceLabel.Top - Top - ScaleY(5);
      WantTabs := True;
      Flat := False;
      Color := clBtnFace;
      OnMouseDown := @ComponentListOnMouseDown;
      OnItemMouseMove := @ComponentsListOnItemMouseMove;
    end;
  end;
end;
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
procedure SettingsListOnItemMouseMove(Sender: TObject; X, Y: Integer; Index: Integer; Area: TItemArea);
begin
	if Index = -1 then
	begin
		SettingsInfoLabel.Caption := CustomMessage('SettingsInfoCaption');
		SettingsInfoLabel.Enabled := False;
      SetCapture(0);
	end
  else
  begin
    SettingsInfoLabel.Caption := g_SetHelper[Index].szDescription;
	  SettingsInfoLabel.Enabled := True;
	  SetCapture(TNewCheckListBox(Sender).Handle);
	end;
end;

////////////////////////////////////////////////////////////////////////////////////////////
procedure AddSettingsListBoxOnMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  pt: TPoint;
  Index: Integer;
begin
  with TListBox(Sender) do
  begin
    { get cursor pos }
    GetCursorPos(pt);
    MapWindowPointsPOINT(0, Handle, pt, 1);

    { get hover item }
    Index := ItemAtPos(pt, True);
    if Index = -1 then
  	begin
  		SettingsInfoLabel.Caption := CustomMessage('SettingsInfoCaption');
  		SettingsInfoLabel.Enabled := False;
  	end
    else
    begin
      SettingsInfoLabel.Caption := g_AddSetHelper[Index].szDescription;
		  SettingsInfoLabel.Enabled := True;
	  end;
  end;
end;

/////////////////////////////
procedure CreateSettingsPage;
var
  i, j, ComboWidth: Integer;
  rt: TRect;
  SettingsTab, AddSettingsTab: TTabSheet;
begin
  SettingsPage := CreateInputOptionPage(wpSelectComponents, CustomMessage('WizardSettings'), CustomMessage('WizardSettingsDesc'), CustomMessage('SelectSettingsLabel'), False, False);
  with SettingsPage do
  begin
    { SettingsPageDescriptionBevel }
    SettingsPageDescriptionBevel := TBevel.Create(WizardForm);
    with SettingsPageDescriptionBevel do
    begin
      Parent := SettingsPage.Surface;
      Left := 2 * SurfaceWidth div 3 + ScaleX(5);
      Top := SubCaptionLabel.Top + SubCaptionLabel.Height + ScaleY(5);
      Width := SurfaceWidth - Left;
      Height := SurfaceHeight - Top - ScaleY(10);
      Shape := bsFrame;
    end;

    { SettingsInfoLabel }
    SettingsInfoLabel := TNewStaticText.Create(WizardForm);
    with SettingsInfoLabel do
    begin
      Parent := SettingsPage.Surface;
      Left := SettingsPageDescriptionBevel.Left + ScaleX(5);
      Top := SettingsPageDescriptionBevel.Top + ScaleY(5);
      Width := SettingsPageDescriptionBevel.Width - 2*ScaleX(5);
      Height := SettingsPageDescriptionBevel.Height - 2*ScaleY(5);
      AutoSize := False;
      WordWrap := True;
      Caption := CustomMessage('SettingsInfoCaption');
      Enabled := False;
    end;

    { SettingsPageControl }
    SettingsPageControl := TPageControl.Create(WizardForm);
    with SettingsPageControl do
    begin
      Parent := SettingsPage.Surface;
      Top := SettingsPageDescriptionBevel.Top;
      Width := SurfaceWidth - SettingsPageDescriptionBevel.Width - ScaleX(5);
      Height := SettingsPageDescriptionBevel.Height;

      { SettingsTab }
      SettingsTab := TTabSheet.Create(WizardForm);
      with SettingsTab do
      begin
        PageControl := SettingsPageControl;
        Caption := CustomMessage('SettingsTabCaption');

        { settings checklistbox }
        with CheckListBox do
        begin
          Parent := SettingsTab;
          Align := alClient;
          MinItemHeight := ScaleY(16);
          TreeViewStyle := True;
          Showroot := True;
          BorderStyle := bsNone;

          { add settings }
          #if AppStatus == "Final"
          AddCheckBox(SettingsHelper('UpdateSettings'), '', 0, False, False, False, True, nil);
          AddCheckBox(SettingsHelper('CheckUpdates'), '', 1, False, True, True, True, nil);
          AddRadioButton(SettingsHelper('StableVersion'), '', 1, False, True, nil);
          AddRadioButton(SettingsHelper('DevelopmentVersion'), '', 1, False, True, nil);
          #endif
          AddCheckBox(SettingsHelper('ContactList'), '', 0, False, True, False, True, nil);
//          AddRadioButton(SettingsHelper('ClistRight'), '', 1, False, True, nil);
//          AddRadioButton(SettingsHelper('ClistLeft'), '', 1, False, True, nil);
          AddCheckBox(SettingsHelper('OnTop'), '', 1, False, True, True, False, nil);
          AddCheckBox(SettingsHelper('ViewModes'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('CompactMode'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('UseSound'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('CLCNoVScrollBar'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('MessageSessions'), '', 0, False, True, True, True, nil);
          AddCheckBoxEx(SettingsHelper('SendingMessage'), '', 1, False, True, True, True, nil, False);
          AddCheckBox(SettingsHelper('SendCtrlEnter'), '', 2, False, False, True, True, nil);
          AddCheckBox(SettingsHelper('SendShiftEnter'), '', 2, False, True, True, False, nil);
          AddCheckBox(SettingsHelper('SendEnter'), '', 2, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('SendDoubleEnter'), '', 2, False, True, True, False, nil);
          AddCheckBox(SettingsHelper('AutoSizeInputArea'), '', 1, False, True, True, True, nil);
//          AddCheckBox(SettingsHelper('AutoCreateNewTabs'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('LogStatusChanges'), '', 1, False, True, True, False, nil);
          AddCheckBox(SettingsHelper('TypingNotification'), '', 1, False, True, True, False, nil);
          AddCheckBox(SettingsHelper('TabSRMMNoVScrollBar'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('Status'), '', 0, False, True, False, True, nil);
          AddCheckBox(SettingsHelper('DialogStatusMessages'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('Autoreply'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('AutoAwayDetection'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('AutoIdleDetection'), '', 1, False, True, True, True, nil);

          { events }
          OnItemMouseMove := @SettingsListOnItemMouseMove;
        end;
      end;

      { AddSettingsTab }
      AddSettingsTab := TTabSheet.Create(WizardForm);
      with AddSettingsTab do
      begin
        PageControl := SettingsPageControl;
        Caption := CustomMessage('AdditionalSettingsTabCaption');

        { AddSettingsListBox }
        AddSettingsListBox := TListBox.Create(WizardForm);
        with AddSettingsListBox do
        begin
          Parent := AddSettingsTab;
          Align := alClient;
          Style := lbOwnerDrawFixed;
          ParentColor := True;
          ItemHeight := ScaleY(21);
          BorderStyle := bsNone;
          TabStop := False;

          { add additional settings }
          Items.AddObject(AddSetHelper('DialogFontSize'), TNewComboBox.Create(WizardForm));
          Items.AddObject(AddSetHelper('LoadHistorySize'), TNewComboBox.Create(WizardForm));
          Items.AddObject(AddSetHelper('LocationTabsMessageWindow'), TNewComboBox.Create(WizardForm));

          { get combo width }
          for i := 0 to Items.Count - 1 do
          begin
            if Canvas.TextWidth(Items.Strings[i]) > ComboWidth then
              ComboWidth := Canvas.TextWidth(Items.Strings[i]);
          end;
          ComboWidth := ClientWidth - ComboWidth - ScaleX(5);

          { adjust combo }
          for i := 0 to Items.Count - 1 do
          begin
            rt := ItemRect(i);
            TNewComboBox(Items.Objects[i]).Parent := AddSettingsTab;
            TNewComboBox(Items.Objects[i]).Top := Top + rt.Top;
            TNewComboBox(Items.Objects[i]).Width := ComboWidth;
            TNewComboBox(Items.Objects[i]).Left := AddSettingsTab.Width - TNewComboBox(Items.Objects[i]).Width;
            TNewComboBox(Items.Objects[i]).Style := csDropDownList;
            with TStringList.Create do
            try
              CommaText := g_AddSetHelper[i].szInternalValues;
              for j := 0 to Count - 1 do
                Strings[j] := CustomMessage(Strings[j]);
              TNewComboBox(Items.Objects[i]).Items.CommaText := CommaText;
            finally
              Free;
            end;
          end;

          { events }
          OnMouseMove := @AddSettingsListBoxOnMouseMove;
        end;
      end;
    end;
  end;
end;
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
procedure PreviewFormOnKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (Key = VK_ESCAPE) then
    TForm(Sender).Close;
end;

////////////////////////////////////////////////
procedure PreviewButtonOnClick(Sender: TObject);
var
  crBackground: DWORD;
begin
  { global color }
  crBackground := GetSysColor(COLOR_BTNFACE);
#if aero == 1
  if g_fEnabled then
    crBackground := GetSysColor(COLOR_BACKGROUND);
#endif

  { create form }
  PreviewForm := TForm.Create(nil);
  with PreviewForm do
  try
    { PreviewFormBitmapImage }
    PreviewFormBitmapImage := TBitmapImage.Create(PreviewForm);
    PreviewFormBitmapImage.Parent := PreviewForm;
    Position := poScreenCenter;
    BorderStyle := bsDialog;
    Caption := CustomMessage('FullViewCaption');
    OnKeyDown := @PreviewFormOnKeyDown;

    { subclass }
    SubclassControlsProc(PreviewForm, True);

    { show }
    ShowModal;

    { unsubclass }
    UnSubclassControlsProc(PreviewForm);
  finally
    Free;
  end;
end;

//////////////////////////////////////////////////
procedure StylesListOnClickCheck(Sender: TObject);
var
  crBackground: DWORD;
begin
  with TNewCheckListBox(Sender) do
  begin
    if AbsItemIndex = -1 then Exit;

    { global color }
    crBackground := GetSysColor(COLOR_BTNFACE);
  #if aero == 1
    if g_fEnabled then
      crBackground := GetSysColor(COLOR_BACKGROUND);
  #endif

    { draw thumb }
    if Checked[AbsItemIndex] then
      DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[AbsItemIndex].szSelectedBitmap, crBackground)
    else
      DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[AbsItemIndex].szUnselectedBitmap, crBackground);

    { preview button enable/disable }
    PreviewButton.Enabled := (g_StylesHelper[AbsItemIndex].szPreviewBitmap <> '');
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////
procedure StylesListOnItemMouseMove(Sender: TObject; X, Y: Integer; Index: Integer; Area: TItemArea);
begin
	if Index = -1 then
	begin
		StylesInfoLabel.Caption := CustomMessage('StylesInfoCaption');
		StylesInfoLabel.Enabled := False;
      SetCapture(0);
	end
  else
  begin
    StylesInfoLabel.Caption := g_StylesHelper[Index].szDescription;
		StylesInfoLabel.Enabled := True;
		SetCapture(TNewCheckListBox(Sender).Handle);
	end;
end;

///////////////////////////
procedure CreateStylesPage;
begin
  StylesPage := CreateInputOptionPage(SettingsPage.ID, CustomMessage('WizardStyles'), CustomMessage('WizardStylesDesc'), SetupMessage(msgInfoBeforeClickLabel), False, False);
  with StylesPage do
  begin
    { ThumbsBitmapImage }
    ThumbsBitmapImage := TBitmapImage.Create(WizardForm);
    with ThumbsBitmapImage do
    begin
      Parent := Surface;
      DrawImageOnBitmap(ThumbsBitmapImage, 'DefaultMir_Light.bmp', 0);
      Bitmap.FreeImage;
    end;

    { PreviewButton }
    PreviewButton := TNewButton.Create(WizardForm);
    with PreviewButton do
    begin
      Parent := Surface;
      Left := SurfaceWidth - ThumbsBitmapImage.Width - ScaleX(4);
      Width := ThumbsBitmapImage.Width + ScaleX(4);
      Top := SurfaceHeight - Height - ScaleY(5);
      Caption := CustomMessage('FullView');
      Enabled := False;
      OnClick := @PreviewButtonOnClick;
    end;

    { PreviewBevel }
    PreviewBevel := TBevel.Create(WizardForm);
    with PreviewBevel do
    begin
      Parent := Surface;
      SetBounds(PreviewButton.Left, CheckListBox.Top, PreviewButton.Width, PreviewButton.Top - CheckListBox.Top - ScaleY(5));
      Shape := bsFrame;

      // bitmapimage adjust
      ThumbsBitmapImage.Left := Left + ScaleX(2);
      ThumbsBitmapImage.Top := Top + ScaleY(2);
    end;

    { StylePageDescriptionBevel }
    StylePageDescriptionBevel := TBevel.Create(WizardForm);
    with StylePageDescriptionBevel do
    begin
      Parent := Surface;
      SetBounds(0, SurfaceHeight - ScaleY(55), SurfaceWidth - PreviewBevel.Width - ScaleX(5), ScaleY(50));
      Shape := bsFrame;
    end;

    { StylesInfoLabel }
    StylesInfoLabel := TNewStaticText.Create(WizardForm);
    with StylesInfoLabel do
    begin
      Parent := Surface;
      AutoSize := False;
      Left := StylePageDescriptionBevel.Left + ScaleX(5);
      Top := StylePageDescriptionBevel.Top + ScaleY(5);
      Width := StylePageDescriptionBevel.Width - 2*ScaleX(5);
      Height := StylePageDescriptionBevel.Height - 2*ScaleY(5);
      WordWrap := True;
      Caption := CustomMessage('StylesInfoCaption');
      Enabled := False;
    end;

    { CheckListBox }
    with CheckListBox do
    begin
      Height := StylePageDescriptionBevel.Top - Top - ScaleY(5);
      Width := StylePageDescriptionBevel.Width;
      MinItemHeight := ScaleY(16);
      TreeViewStyle := True;
      BorderStyle := bsSingle;

      // add skin items
      AddGroup(StylesHelper('Skin'), '', 0, nil);
      AddRadioButton(StylesHelper('SkinDefaultMirLight'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinDefaultWinLight'), '', 1, False, True, nil);
//      AddRadioButton(StylesHelper('SkinDiplomatDark'), '', 1, False, True, nil);
//      AddRadioButton(StylesHelper('SkinDiplomatLight'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinGlamourDark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinGlamourLight'), '', 1, False, True, nil);
//      AddRadioButton(StylesHelper('SkinGoldtimeDark'), '', 1, False, True, nil);
//      AddRadioButton(StylesHelper('SkinGoldtimeLight'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinGraphiteDark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinGraphiteLight'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinPhotooneDark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinPhotooneLight'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinSurfaceBlack'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinSurfaceWhite'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinTextoliteDark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinTextoliteLight'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinWinstyleDark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('SkinWinstyleLight'), '', 1, False, True, nil);

      // add icon patcher items
      AddGroup(StylesHelper('Icons'), '', 0, nil);
      AddRadioButton(StylesHelper('IconsFugue'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('IconsNova'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('IconsXpk'), '', 1, False, True, nil);

      // add ieview items
      AddGroup(StylesHelper('IEViewSettings'), '', 0, nil);
      AddCheckBox(StylesHelper('IEViewAnimation'), '', 1, False, True, False, False, nil);
      AddCheckBox(StylesHelper('IEViewAvatar'), '', 1, False, True, False, False, nil);
      AddCheckBox(StylesHelper('IEViewShortLink'), '', 1, False, True, False, False, nil);
      AddCheckBox(StylesHelper('IEViewContextMenu'), '', 1, False, True, False, False, nil);

      // add font items
      AddGroup(StylesHelper('Font'), '', 0, nil);
      AddRadioButton(StylesHelper('FontHandwriting'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('FontPrinting'), '', 1, False, True, nil);

      // events
      OnClickCheck := @StylesListOnClickCheck;
      OnItemMouseMove := @StylesListOnItemMouseMove;
    end;
  end;
end;
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
procedure StartMenuTreeViewOnChange(Sender: TObject);
begin
  case TObject(Sender) of
    StartMenuTreeView:
      WizardForm.GroupEdit.Text := AddBackslash(StartMenuTreeView.Directory) + '{#SetupSetting("DefaultGroupName")}';
    WizardForm.NoIconsCheck:
      begin
        WizardForm.GroupEdit.Enabled := not WizardNoIcons;
        if WizardNoIcons then
          WizardForm.GroupEdit.Color := clBtnFace
        else
          WizardForm.GroupEdit.Color := clWindow;
        WizardForm.GroupBrowseButton.Enabled := not WizardNoIcons;
        StartMenuTreeView.Enabled := not WizardNoIcons;
      end;
  end;
end;

///////////////////////////////////////
procedure CreateSelectProgramGroupPage;
begin
  StartMenuTreeView := TStartMenuFolderTreeView.Create(WizardForm);
  with StartMenuTreeView do
  begin
    Parent := WizardForm.SelectProgramGroupPage;
    Top := WizardForm.GroupEdit.Top + WizardForm.GroupEdit.Height + ScaleY(5);
    Width := WizardForm.SelectProgramGroupPage.Width;
    Height := WizardForm.NoIconsCheck.Top - Top - ScaleY(5);
    SetPaths(ExpandConstant('{userprograms}'), ExpandConstant('{commonprograms}'), ExpandConstant('{userstartup}'), ExpandConstant('{commonstartup}'));
    Cursor := crHand;
    OnChange := @StartMenuTreeViewOnChange;
    Enabled := not WizardNoIcons;
  end;
  WizardForm.NoIconsCheck.OnClick := @StartMenuTreeViewOnChange;
end;
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
procedure TasksListOnItemMouseMove(Sender: TObject; X, Y: Integer; Index: Integer; Area: TItemArea);
var
    i: Integer;
begin
  if Index = -1 then
  begin
    TasksInfoLabel.Caption := CustomMessage('TasksListInfoCaption');
    TasksInfoLabel.Enabled := False;
    SetCapture(0);
  end
  else    // GroupDescription bugfix
  begin
    with TNewCheckListBox(Sender) do
    begin
      for i := 0 to GetArrayLength(g_TasksHelper) - 1 do
        if CompareText(g_TasksHelper[i].szName, ItemCaption[Index]) = 0 then
        begin
          TasksInfoLabel.Caption := g_TasksHelper[i].szDescription;
          TasksInfoLabel.Enabled := True;
          Break;
        end;
        if (i = GetArrayLength(g_TasksHelper)) and TasksInfoLabel.Enabled then
        begin
          TasksInfoLabel.Caption := CustomMessage('TasksListInfoCaption');
          TasksInfoLabel.Enabled := False;
        end;
        SetCapture(TNewCheckListBox(Sender).Handle);
    end;
	end;
end;

////////////////////////////////
procedure CreateSelectTasksPage;
begin
  with WizardForm do
  begin
    { SelectTasksPageDescriptionBevel }
    SelectTasksPageDescriptionBevel := TBevel.Create(WizardForm);
    with SelectTasksPageDescriptionBevel do
    begin
      Parent := SelectTasksPage;
      Left := 2 * SelectTasksPage.Width div 3 + ScaleX(5);
      Top := SelectTasksLabel.Top + SelectTasksLabel.Height + ScaleY(5);
      Width := SelectTasksPage.Width - Left;
      Height := SelectTasksPage.Height - Top - ScaleY(10);
      Shape := bsFrame;
    end;

    { TasksInfoLabel }
    TasksInfoLabel := TNewStaticText.Create(WizardForm);
    with TasksInfoLabel do
    begin
      Parent := SelectTasksPage;
      Left := SelectTasksPageDescriptionBevel.Left + ScaleX(5);
      Top := SelectTasksPageDescriptionBevel.Top + ScaleY(5);
      Width := SelectTasksPageDescriptionBevel.Width - 2*ScaleX(5);
      Height := SelectTasksPageDescriptionBevel.Height - 2*ScaleY(5);
      AutoSize := False;
      WordWrap := True;
      Caption := CustomMessage('TasksListInfoCaption');
      Enabled := False;
    end;

    { TasksList }
    with TasksList do
    begin
      Top := SelectTasksPageDescriptionBevel.Top;
      Width := SelectTasksPage.Width - SelectTasksPageDescriptionBevel.Width - ScaleX(5);
      Height := SelectTasksPageDescriptionBevel.Height;
      OnItemMouseMove := @TasksListOnItemMouseMove;
    end;
  end;
end;
///////////////////////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////
procedure PreparePageOnClickCheck(Sender: TObject);
begin
  case Sender of
    PreparePage.CheckListBox:
      WizardForm.NextButton.Enabled := PreparePage.CheckListBox.Checked[0];
  end;
  WizardForm.NextButton.Invalidate;
end;

////////////////////////////
procedure CreatePreparePage;
begin
  PreparePage := CreateInputOptionPage(wpReady, SetupMessage(msgWizardPreparing), FmtMessage(CustomMessage('PreparingDesc'), ['{#AppName}']), CustomMessage('ApplicationsFound'), True, False);
  with PreparePage do
  begin
    { PreparePageBitmap }
    PreparePageBitmap := TBitmapImage.Create(WizardForm);
    with PreparePageBitmap do
    begin
      Parent := Surface;
      SetBounds(0, 5, 32, 32);
      Bitmap.Width := Width;
      Bitmap.Height := Height;
    end;

    { SubCaptionLabel }
    SubCaptionLabel.Left := PreparePageBitmap.Width + ScaleX(7);
    SubCaptionLabel.Width := SurfaceWidth - SubCaptionLabel.Left;
    SubCaptionLabel.AutoSize := True;

    { CheckListBox }
    with CheckListBox do
    begin
      AddRadioButton(CustomMessage('CloseApplications'), '', 0, True, True, nil);
      AddRadioButton(CustomMessage('DontCloseApplications'), '', 0, False, True, nil);
      SetBounds(0, SurfaceHeight - ItemCount * MinItemHeight - ScaleY(5), SurfaceWidth, ItemCount * MinItemHeight);
      OnClickCheck := @PreparePageOnClickCheck;
    end;

    { g_PrepareListView }
    g_PrepareListView := TListView.Create(WizardForm);
    with g_PrepareListView do
    begin
      Parent := Surface;
      Top := PreparePageBitmap.Height + ScaleY(15);
      Width := SurfaceWidth;
      Height := CheckListBox.Top - Top - ScaleY(5);
      ViewStyle := vsReport;
      ShowColumnHeaders := False;
      ReadOnly := True;
      Color := clWhite;

      // add column
      Columns.Add;
      SendMessage(Handle, LVM_SETCOLUMNWIDTH, 0, LVSCW_AUTOSIZE_USEHEADER);
    end;
  end;
end;
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
procedure DetailsButtonOnClick(Sender: TObject);
begin
  case TNewButton(Sender).Caption of
    CustomMessage('SetupShowDetails'):
      begin
        DetailsMemo.Show;
        TNewButton(Sender).Caption := CustomMessage('SetupHideDetails');
      end;
    CustomMessage('SetupHideDetails'):
      begin
        DetailsMemo.Hide;
        TNewButton(Sender).Caption := CustomMessage('SetupShowDetails');
      end;
  end;
end;

///////////////////////////////////////////////
procedure PercentTimerOnTimer(Sender: TObject);
begin
  SetupDone.Caption := Format('%s %d %%', [CustomMessage('SetupDone'), MulDiv(WizardForm.ProgressGauge.Position, 100, WizardForm.ProgressGauge.Max)]);
end;

///////////////////////////////
procedure CreateInstallingPage;
var
  lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled: DWORD;
begin
  { DetailsButton }
  DetailsButton := TNewButton.Create(WizardForm);
  with DetailsButton do
  begin
    Parent := WizardForm.InstallingPage;
    Top := WizardForm.ProgressGauge.Top + WizardForm.ProgressGauge.Height + ScaleY(5);
    Width := ScaleX(100);
    Left := WizardForm.InstallingPage.Width - Width;
    Caption := CustomMessage('SetupShowDetails');
    OnClick := @DetailsButtonOnClick;
  end;

  { SetupDone }
  SetupDone := TNewStaticText.Create(WizardForm);
  with SetupDone do
  begin
    Parent := WizardForm.InstallingPage;
    AutoSize := False;
    Top := DetailsButton.Top + ScaleY(6);
    Width := DetailsButton.Left - ScaleX(5);
  end;

  { DetailsMemo }
  DetailsMemo := TNewMemo.Create(WizardForm);
  with DetailsMemo do
  begin
    Parent := WizardForm.InstallingPage;
    Top := DetailsButton.Top + DetailsButton.Height + ScaleY(5);
    Width := WizardForm.InstallingPage.Width;
    Height := WizardForm.InstallingPage.Height - Top - ScaleY(8);
    ReadOnly := True;
    ScrollBars := ssVertical;
    Hide;
  end;

  { PercentTimer }
  PercentTimer := TTimer.Create(WizardForm);
  with PercentTimer do
  begin
    GetSystemTimeAdjustment(lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled);
    Enabled := False;
    Interval := lpTimeIncrement div 10000;
    OnTimer := @PercentTimerOnTimer;
  end;
end;
///////////////////////////
///////////////////////////
///////////////////////////
procedure CreateFinishPage;
begin
  { FinishedPage }
  WizardForm.FinishedPage.Color := clBtnFace;

  { FinishedMessage }
  FinishedMessage := TNewStaticText.Create(WizardForm);
  with FinishedMessage do
  begin
    Parent := WizardForm.FinishedPage;
    Font.Size := 11;
    Font.Style := [fsBold];
    Caption := CustomMessage('FinishedMessageCaption');
    AutoSize := False;
    SetBounds(WizardForm.FinishedLabel.Left, WizardForm.FinishedPage.ClientHeight - Height - ScaleY(5), WizardForm.FinishedLabel.Width, Height);
    SetWindowLong(Handle, GWL_STYLE, WS_CHILDWINDOW or WS_VISIBLE or WS_CLIPSIBLINGS or SS_RIGHT);
  end;
end;
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
procedure URLLabelOnClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
  ShellExecAsOriginalUser('open', CustomMessage('AppURLMNG'), '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure URLLabelOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
  if Button = mbLeft then
  begin
    URLLabel.Font.Color := $FF8000; // pressed color
    URLLabel.Font.Style := URLLabel.Font.Style + [fsUnderline];
  end;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure URLLabelOnMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
  if Button = mbLeft then
    if g_fEnabled then
      URLLabel.Font.Color := $646464
    else
      URLLabel.Font.Color := clGray;   // normal color
end;

////////////////////////////////////////////////
procedure URLLabelOnMouseEnter(Sender: TObject);
begin
  URLLabel.Font.Color := $804000;         // hover color
  URLLabel.Font.Style := URLLabel.Font.Style + [fsUnderline];
end;

////////////////////////////////////////////////
procedure URLLabelOnMouseLeave(Sender: TObject);
begin
  if g_fEnabled then
    URLLabel.Font.Color := $646464
  else
    URLLabel.Font.Color := clGray;      // normal color
  URLLabel.Font.Style := URLLabel.Font.Style - [fsUnderline];
end;

//////////////////////////////////////////////////////////////////////////////////
procedure URLLabelOnMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  rc: TRect;
  pt: TPoint;
begin
  if ssLeft in Shift then
  begin
    GetClientRect(URLLabel.Handle, rc);
    pt.x := X;
    pt.y := Y;
    if PtInRect(rc, pt) then
      URLLabel.OnMouseDown(Sender, mbLeft, Shift, X, Y)
    else
      URLLabel.OnMouseLeave(Sender);
  end;
end;

/////////////////////////
procedure CreateUrlLabel;
begin
  URLLabel := TNewStaticText.Create(WizardForm);
  with URLLabel do
  begin
    Parent := WizardForm;
    Top := WizardForm.NextButton.Top + ScaleY(5);
    Left := ScaleX(30);
    Caption := CustomMessage('Support');
    Cursor := crHand;
    if FontExists('Segoe UI') then Font.Name := 'Segoe UI';
    Font.Style := [fsBold];
    if g_fEnabled then Font.Color := $646464 else Font.Color := clGray;
    Font.Size := -11;
    OnClick := @URLLabelOnClick;
    OnMouseDown := @URLLabelOnMouseDown;
    OnMouseUp := @URLLabelOnMouseUp;
    OnMouseEnter := @URLLabelOnMouseEnter;
    OnMouseLeave := @URLLabelOnMouseLeave;
    OnMouseMove := @URLLabelOnMouseMove;
  end;
end;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function WndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  crBackground: DWORD;
  i: Integer;
#if aero != 0
  margins: MARGINS;
#endif
begin
  case uMsg of
  #if aero != 0
    WM_DWMNCRENDERINGCHANGED:
      begin
        { set glass area }
        if BOOL(wParam = 1) and g_fEnabled then
        begin
        #if aero == 1
          margins := SetMargins(-1, -1, -1, -1);
          GetGlassRegion(hWnd, margins);
        #else
          case GetClassNameFromHandle(hWnd) of
            'TWizardForm':
                with TWizardForm(AObject) do
                begin
                #if aero == 2
                  if lParam = 1 then
                    margins := SetMargins(0, 0, 0, 0);
                  if lParam = 2 then
                    margins := SetMargins(0, 0, MainPanel.Height, 0);
                  if lParam <> 0 then
                    GetGlassRegion(hWnd, margins);
                #elif aero == 3
                  margins := SetMargins(0, 0, 0, ClientHeight - OuterNotebook.ClientHeight);
                  GetGlassRegion(hWnd, margins);
                #elif aero == 4
                  if lParam = 1 then
                    margins := SetMargins(0, 0, 0, ClientHeight - OuterNotebook.ClientHeight);
                  if lParam = 2 then
                    margins := SetMargins(0, 0, MainPanel.Height, ClientHeight - OuterNotebook.ClientHeight);
                  if lParam <> 0 then
                    GetGlassRegion(hWnd, margins);
                #endif
                end;
            'TUninstallProgressForm':
                with TUninstallProgressForm(AObject) do
                begin
                #if aero == 2
                  margins := SetMargins(0, 0, MainPanel.Height, 0);
                #elif aero == 3
                  margins := SetMargins(0, 0, 0, ClientHeight - OuterNotebook.ClientHeight);
                #elif aero == 4
                  margins := SetMargins(0, 0, MainPanel.Height, ClientHeight - OuterNotebook.ClientHeight);
                #endif
                  GetGlassRegion(hWnd, margins);
                end;
            'TForm':
              begin
                margins := SetMargins(0, 0, 0, 0);
                GetGlassRegion(hWnd, margins);
              end;
          end;
        #endif
          DwmExtendFrameIntoClientArea(hWnd, margins);
        end;
      end;
  #endif
    WM_SYSCOLORCHANGE,
    WM_DWMCOMPOSITIONCHANGED:
      begin
        { subclass }
        case GetClassNameFromHandle(hWnd) of
        #if aero == 1
          'TSelectLanguageForm':
            SubclassControlsProc(TSelectLanguageForm(AObject), True);
          'TUninstallProgressForm':
            SubclassControlsProc(TUninstallProgressForm(AObject), True);
        #endif
          'TWizardForm':
          #if aero == 0 || aero == 1
            SubclassControlsProc(TWizardForm(AObject), True);
          #elif aero == 2
            SubclassControlsProc(TWizardForm(AObject).MainPanel, True);
          #elif aero == 3
            SubclassControlsProc(TWizardForm(AObject), False);
          #elif aero == 4
            begin
              SubclassControlsProc(TWizardForm(AObject), False);
              SubclassControlsProc(TWizardForm(AObject).MainPanel, True);
            end;
          #endif
          'TUninstallProgressForm':
          #if aero == 0 || aero == 1
            SubclassControlsProc(TUninstallProgressForm(AObject), True);
          #elif aero == 2
            SubclassControlsProc(TUninstallProgressForm(AObject).MainPanel, True);
          #elif aero == 3
            SubclassControlsProc(TUninstallProgressForm(AObject), False);
          #elif aero == 4
            begin
              SubclassControlsProc(TUninstallProgressForm(AObject), False);
              SubclassControlsProc(TUninstallProgressForm(AObject).MainPanel, True);
            end;
          #endif
          'TForm':
            begin
            #if aero != 0
              DwmIsCompositionEnabled(g_fEnabled);
            #endif
            #if aero == 1
              SubclassForm(TForm(AObject));
            #endif
              crBackground := GetSysColor(COLOR_BTNFACE);
            #if aero == 1
              if g_fEnabled then
                crBackground := GetSysColor(COLOR_BACKGROUND);
            #endif
              for i := 0 to GetArrayLength(g_StylesHelper) - 1 do
              case g_StylesHelper[i].szInternalName of
//                'SkinDiplomatDark',
//                'SkinDiplomatLight',
                'SkinGlamourDark',
                'SkinGlamourLight',
//                'SkinGoldtimeDark',
//                'SkinGoldtimeLight',
                'SkinGraphiteDark',
                'SkinGraphiteLight',
                'SkinPhotooneDark',
                'SkinPhotooneLight',
                'SkinSurfaceBlack',
                'SkinSurfaceWhite',
                'SkinTextoliteDark',
                'SkinTextoliteLight':
                  if StylesPage.CheckListBox.Checked[i] then
                    DrawImageOnBitmap(PreviewFormBitmapImage, g_StylesHelper[i].szPreviewBitmap, crBackground);
              end;
            end;
          end;
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function CheckListBoxWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  hDC, hPaintBuffer, hTempPaintBuffer, hSelPaintBuffer, hBufferedDC,
  hTempBufferedDC, hSelBufferedDC, hFontOld, hBrush: THandle;
  rTemp, rText, rClient: TRect;
  dtt: DTTOPTS;
  hBitmap: HBITMAP;
  bi: BITMAPINFO;
  i, j, k: Integer;
begin
  case uMsg of
    WM_NCPAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          DrawAeroBorder(hWnd);
          DrawAeroScrollBar(hWnd);
        end;
      end;
    WM_ERASEBKGND:
      begin
        if g_fEnabled then
          Result := 1
        else
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
    WM_PAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          with TNewCheckListBox(AObject) do if Showing then
          begin
            { paint to buffer }
            hDC := GetDC(hWnd);
            try
              { create buffer }
              GetClientRect(hWnd, rClient);
              hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
              BufferedPaintClear(hPaintBuffer, rClient);

            { temp buffer for text rect detection }
              // create temp buffer
              hTempPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hTempBufferedDC);
              BufferedPaintClear(hTempPaintBuffer, rClient);

              // fill buffer
              hBrush := CreateSolidBrush($010000); // RGB - clBackground
              FillRect(hTempBufferedDC, rClient, hBrush);
              DeleteObject(hBrush);

              // paint to buffer
              SendMessage(hWnd, WM_PRINTCLIENT, hTempBufferedDC, PRF_CLIENT or PRF_CHECKVISIBLE);

              // get temp buffer bitmap
              hBitmap := GetCurrentObject(hTempBufferedDC, OBJ_BITMAP);
              bi.bmiHeader.biSize := SizeOf(bi.bmiHeader);
              bi.bmiHeader.biWidth := rClient.Right - rClient.Left;
              bi.bmiHeader.biHeight := -(rClient.Bottom - rClient.Top);
              bi.bmiHeader.biPlanes := 1;
              bi.bmiHeader.biBitCount := 32;
              bi.bmiHeader.biCompression := 0;
              bi.bmiHeader.biSizeImage := 4 * (rClient.Right - rClient.Left) * (rClient.Bottom - rClient.Top);
              SetArrayLength(bi.bmiColors, bi.bmiHeader.biWidth);

              // items
              for i := TopIndex to Items.Count - 1 do
              begin
                // get rect
                rTemp := ItemRect(i);
                if rTemp.Top >= rClient.Bottom - rClient.Top then Break;

                // get paint offset
                if GetDIBits(hTempBufferedDC, hBitmap, rClient.Bottom - rTemp.Top - 1, 1, bi.bmiColors[0], bi, 0) = 1 then
                  repeat
                    rTemp.Left := rTemp.Left + 1
                  until (rTemp.Left = GetArrayLength(bi.bmiColors) - 1) or (bi.bmiColors[rTemp.Left] = 0);

                // draw buttons
                BitBlt(hBufferedDC, 0, rTemp.Top, rTemp.Left, rTemp.Bottom - rTemp.Top, hTempBufferedDC, 0, rTemp.Top, SRCCOPY);

                // get paint text rect
                hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
                SetRect(rText, 0, 0, rTemp.Right - rTemp.Left, rTemp.Bottom - rTemp.Top);
                DrawText(hBufferedDC, StrToWStr(Items[i]), -1, rText, DT_CALCRECT or DT_LEFT or DT_WORDBREAK or DT_WORD_ELLIPSIS);
                rText.Right := rTemp.Right - rTemp.Left;
                OffsetRect(rText, rTemp.Left, rTemp.Top + ((rTemp.Bottom - rTemp.Top - rText.Bottom) shr 1));
                InflateRect(rText, -Offset, 0);

                // get stupid bitched motherfucking absolute index
                if i = TopIndex then k := 0;
                for j := k to ItemCount - 1 do
                  if ItemCaption[j] = Items[i] then Break;
                k := j;

                // draw text
                dtt.dwSize := SizeOf(dtt);
                dtt.iGlowSize := 6;
                if (GetProp(Handle, 'AERO_LISTBOX_WANTTABS') = 0) and Selected[i] then
                begin
                  // create sel buffer
                  hSelPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hSelBufferedDC);
                  BufferedPaintClear(hSelPaintBuffer, rTemp);
                  FillRect(hSelBufferedDC, rTemp, GetSysColorBrush(COLOR_HIGHLIGHT));

                  // draw text
                  hFontOld := SelectObject(hSelBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
                  dtt.dwFlags := DTT_COMPOSITED or DTT_TEXTCOLOR;
                  dtt.crText := GetSysColor(COLOR_HIGHLIGHTTEXT);
                  DrawThemeTextEx(g_hThemeTreeView, hSelBufferedDC, 0, 0, StrToWStr(Items[i]), -1, DT_LEFT or DT_WORDBREAK or DT_WORD_ELLIPSIS, rText, dtt);
                  DrawThemeTextEx(g_hThemeTreeView, hSelBufferedDC, 0, 0, StrToWStr(ItemSubItem[i]), -1, DT_RIGHT or DT_WORDBREAK or DT_WORD_ELLIPSIS, rText, dtt);
                  if hFontOld <> 0 then
                    SelectObject(hSelBufferedDC, hFontOld);

                  // blit
                  BufferedPaintSetAlpha(hSelPaintBuffer, rTemp, $FF);
                  BitBlt(hBufferedDC, 0, 0, rTemp.Right, rTemp.Bottom, hSelBufferedDC, 0, 0, SRCCOPY);

                  // apply sel buffer
                  EndBufferedPaint(hSelPaintBuffer, False);
                end
                else
                begin
                  // draw text
                  dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
                  if ItemEnabled[j] then
                    dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
                  else
                    dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
                  DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Items[i]), -1, DT_LEFT or DT_WORDBREAK or DT_WORD_ELLIPSIS, rText, dtt);
                  DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(ItemSubItem[j]), -1, DT_RIGHT or DT_WORDBREAK or DT_WORD_ELLIPSIS, rText, dtt);
                end;
                if hFontOld <> 0 then
                  SelectObject(hBufferedDC, hFontOld);
              end;

              // apply buffers
              EndBufferedPaint(hTempPaintBuffer, False);
              EndBufferedPaint(hPaintBuffer, True);
            finally
              ReleaseDC(hWnd, hDC);
            end;
          end;
        end;
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ListBoxWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  i: Integer;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  rTemp, rClient: TRect;
  dwFlags: DWORD;
  dtt: DTTOPTS;
begin
  case uMsg of
    WM_NCPAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          DrawAeroBorder(hWnd);
          DrawAeroScrollBar(hWnd);
        end;
      end;
      WM_ERASEBKGND:
        begin
          if g_fEnabled then
            Result := 1
          else
            Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        end;
      WM_PAINT:
        if g_fEnabled then
        begin
          with TListBox(AObject) do if Showing then
          begin
            { paint }
            hDC := GetDC(hWnd);
            try
              { paint to buffer }
              GetClientRect(hWnd, rClient);
              hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
              BufferedPaintClear(hPaintBuffer, rClient);

              { items }
              for i := TopIndex to Items.Count - 1 do
              begin
                { get rect }
                rTemp := ItemRect(i);
                if rTemp.Top >= rClient.Bottom - rClient.Top then Break;
                InflateRect(rTemp, -4, 0);

                { draw text }
                hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
                dwFlags := DT_LEFT or DT_VCENTER or DT_SINGLELINE or DT_WORD_ELLIPSIS;
                dtt.dwSize := SizeOf(dtt);
                dtt.iGlowSize := 6;
                dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
                dtt.crText := GetSysColor(COLOR_CAPTIONTEXT);
                DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Items[i]), -1, dwFlags, rTemp, dtt);
                if hFontOld <> 0 then
                  SelectObject(hBufferedDC, hFontOld);
              end;

              { apply buffer }
              EndBufferedPaint(hPaintBuffer, True);
            finally
              ReleaseDC(hWnd, hDC);
            end;
          end;
        end
        else
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_LBUTTONDOWN:
      Result := 0;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function HeaderWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  pt: TPoint;
  rTemp, rClient: TRect;
  szText: string;
  iPartId, iStateId, i, iHotItem: Integer;
  dtt: DTTOPTS;
  dwFlags: DWORD;
  hdhti: HD_HITTESTINFO;
begin
  case uMsg of
    WM_ERASEBKGND:
      Result := 1;
    WM_PAINT:
      if g_fEnabled then
      begin
        with THeaderControl(AObject) do if Showing then
        begin
          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            // get hot item
            GetCursorPos(pt);
            MapWindowPointsPOINT(0, hWnd, pt, 1);
            hdhti.pt := pt;
            iHotItem := SendMessageHDHTI(hWnd, HDM_HITTEST, 0, hdhti);

            // dttopts
            dtt.dwSize := SizeOf(dtt);
            dtt.iGlowSize := 6;
            if Enabled then
              dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
            else
              dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
            dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;

            // create buffer
            GetClientRect(hWnd, rClient);
            rClient.Right := rClient.Right shl 1; // fix
            hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rClient);

            // draw background
            iPartId := EP_EDITBORDER_NOSCROLL;  // use partid from edit class
            iStateId := EPSN_HOT;               // use stateid from edit class
            DrawThemeBackground(g_hThemeEdit, hBufferedDC, iPartId, iStateId, rClient, 0);

            // draw items
            hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
            for i := 0 to Sections.Count - 1 do
            begin
              // partid, stateid
              iPartId := BP_PUSHBUTTON;       // use part from button class
              if Enabled then                 // use states from button class
              begin
                iStateId := PBS_NORMAL;
                if i = iHotItem then
                  iStateId := PBS_HOT;
              end
              else
                iStateId := PBS_DISABLED;

              // get item text
              szText := Sections.Items[i].Text;

              // draw item sheet
              SetRect(rTemp, Sections.Items[i].Left, Top, Sections.Items[i].Left + Sections.Items[i].Width + 1, Height);
              DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);

              // draw text
              case Sections.Items[i].Alignment of
                taLeftJustify: dwFlags := DT_SINGLELINE or DT_LEFT or DT_VCENTER or DT_END_ELLIPSIS;
                taRightJustify: dwFlags := DT_SINGLELINE or DT_RIGHT or DT_VCENTER or DT_END_ELLIPSIS;
                taCenter: dwFlags := DT_SINGLELINE or DT_CENTER or DT_VCENTER or DT_END_ELLIPSIS;
              end;
              rTemp.Left := rTemp.Left + ScaleX(5);     // glow offset
              DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(szText), -1, dwFlags, rTemp, dtt);
            end;
            if hFontOld <> 0 then
              SelectObject(hBufferedDC, hFontOld);

            // apply buffer
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;

          { redraw parent }
          GetClientRect(Parent.Handle, rClient);
          InvalidateRect(Parent.Handle, rClient, False);
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ListViewWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld, hImgList: THandle;
  pt: TPoint;
  rTemp, rText, rClient: TRect;
  szItem: string;
  dtt: DTTOPTS;
  i, j, iPartId, iStateId, iHotItem: Integer;
  dwFlags: DWORD;
  hWndHeader: HWND;
begin
  case uMsg of
    WM_NCPAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          DrawAeroBorder(hWnd);
          DrawAeroScrollBar(hWnd);
        end;
      end;
    WM_ERASEBKGND:
      if g_fEnabled then
      begin
        with TListView(AObject) do if Showing then
        begin
          { exclude header }
          GetClientRect(SendMessage(hWnd, LVM_GETHEADER, 0, 0), rClient);
          ExcludeClipRect(wParam, rClient.Left, rClient.Top, rClient.Right, rClient.Bottom);

          { get items rect }
          rText := Items.Item[0].DisplayRect(drIcon);
          rTemp := Items.Item[Items.Count - 1].DisplayRect(drBounds);
          SetRect(rTemp, rText.Left, rText.Top, rTemp.Right, rTemp.Bottom);

          { create buffer }
          hPaintBuffer := BeginBufferedPaint(wParam, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
          BufferedPaintClear(hPaintBuffer, rTemp);

          { text struct }
          dtt.dwSize := SizeOf(dtt);
          dtt.iGlowSize := 6;
          if Enabled then
            dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
          else
            dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
          dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;

          { hot item }
          iHotItem := SendMessage(hWnd, LVM_GETHOTITEM, 0, 0);

          { draw items }
          hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
          for i := TopItem.Index to Items.Count - 1 do
          begin
            { skip dummy row in DriveListView }
            if (TListView(AObject) = g_DriveListView) and (i = TopItem.Index) then Continue;

            { draw icon }
            rTemp := Items.Item[i].DisplayRect(drIcon);
            if rTemp.Top >= ClientHeight then Break;   // break
            hImgList := Perform(LVM_GETIMAGELIST, LVSIL_SMALL, 0);
            if hImgList <> 0 then
              ImageList_DrawEx(hImgList, Items.Item[i].ImageIndex, hBufferedDC, rTemp.Left, rTemp.Top, rTemp.Right - rTemp.Left, rTemp.Bottom - rTemp.Top, 0, $FFFFFFFF, 0);

            { draw selected and hot rects }
            if Items.Item[i].Selected or (i = iHotItem) then
            begin
              // partid, stateid
              iPartId := CP_READONLY;     // use partid from combobox class
              if Enabled then             // use stateid from combobox class
              begin
                iStateId := CBRO_PRESSED;
                if i = iHotItem then
                  iStateId := CBRO_HOT;
              end
              else
                iStateId := CBRO_DISABLED;

              { draw background }
              rText := Items.Item[i].DisplayRect(drSelectBounds);
              rText.Left := rTemp.Left; // bounds fix
              DrawThemeBackground(g_hThemeComboBox, hBufferedDC, iPartId, iStateId, rText, 0);
            end;

            { items }
            dwFlags := DT_SINGLELINE or DT_VCENTER or DT_LEFT or DT_END_ELLIPSIS;
            case ViewStyle of
              vsReport:
                for j := 0 to Columns.Count - 1 do
                begin
                  { get item text }
                  if j = 0 then
                    szItem := Items.Item[i].Caption
                  else
                    szItem := Items.Item[i].SubItems.Strings[j-1];

                  { get item text rect }
                  SetRect(rText, LVIR_LABEL, j, 0, 0);
                  SendMessageRECT(hWnd, LVM_GETSUBITEMRECT, i, rText);
                  rText.Left := rText.Left + 4;

                  { draw text }
                  DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(szItem), -1, dwFlags, rText, dtt);
                end;
            end;
          end;
          if hFontOld <> 0 then
            SelectObject(hBufferedDC, hFontOld);

          { apply buffer }
          EndBufferedPaint(hPaintBuffer, True);
        end;
        Result := 1;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        with TListView(AObject) do if Showing then
        begin
          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            { exclude header }
            GetClientRect(SendMessage(hWnd, LVM_GETHEADER, 0, 0), rClient);
            ExcludeClipRect(hDC, rClient.Left, rClient.Top, rClient.Right, rClient.Bottom);

            { get items rect }
            rText := Items.Item[0].DisplayRect(drIcon);
            rTemp := Items.Item[Items.Count - 1].DisplayRect(drBounds);
            ExcludeClipRect(hDC, rText.Left, rText.Top, rTemp.Right, rTemp.Bottom);

            { fill region }
            FillRect(hDC, ps.rcPaint, GetSysColorBrush(COLOR_BACKGROUND));
          finally
            EndPaint(hWnd, ps);
          end;
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_LBUTTONDOWN:
      if TListView(AObject) <> g_PrepareListView then
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_HSCROLL:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if TListView(AObject) = g_DriveListView then
        begin
          hWndHeader := SendMessage(hWnd, LVM_GETHEADER, 0, 0);
          if hWndHeader <> 0 then
          begin
            pt := g_DriveListView.ViewOrigin;
            GetClientRect(hWndHeader, rClient);
            SetWindowPos(g_DriveHeader.Handle, 0, -pt.x, g_DriveHeader.Top, rClient.Right, g_DriveHeader.Height, SWP_NOZORDER or SWP_NOACTIVATE);
          end;
        end;
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function TreeViewWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld, hItem, hImageList: THandle;
  rt, rtt, rClient: TRect;
  szItem: string;
  pszItem: Longint;
  dtt: DTTOPTS;
  iPartId, iStateId, cx, cy: Integer;
  dwFlags: DWORD;
  tvi: TVITEM;
  tvhti: TVHITTESTINFO;
begin
  case uMsg of
    WM_NCPAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          DrawAeroBorder(hWnd);
          DrawAeroScrollBar(hWnd);
        end;
      end;
    WM_ERASEBKGND:
        if g_fEnabled then
        begin
          { fill client region }
          GetClientRect(hWnd, rClient);
          FillRect(wParam, rClient, GetSysColorBrush(COLOR_BACKGROUND));
          Result := 1;
        end
        else
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        with TStartMenuFolderTreeView(AObject) do if Showing then
        begin
          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            { get imagelist handle }
            hImageList := SendMessage(hWnd, TVM_GETIMAGELIST, TVSIL_NORMAL, 0);
            ImageList_GetIconSize(hImageList, cx, cy);

            { create buffer }
            GetClientRect(hWnd, rClient);
            hPaintBuffer := BeginBufferedPaint(hDC, ps.rcPaint, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, ps.rcPaint);

            { text struct }
            dtt.dwSize := SizeOf(dtt);
            dtt.iGlowSize := 6;
            if Enabled then
              dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
            else
              dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
            dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;

            { items }
            hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
            hItem := SendMessage(hWnd, TVM_GETNEXTITEM, TVGN_FIRSTVISIBLE, 0);
            rt.Left := hItem;
            SendMessageRECT(hWnd, TVM_GETITEMRECT, 1, rt);
            while rt.Top < ClientHeight do
            begin
              { get item text }
              szItem := StringOfChar(#0, 255);
              pszItem := CastStringToInteger(szItem);
              tvi.mask := TVIF_TEXT or TVIF_IMAGE or TVIF_STATE or TVIF_HANDLE or TVIF_CHILDREN;
              tvi.hItem := hItem;
              tvi.pszText := pszItem;
              tvi.cchTextMax := Length(szItem);
              tvi.stateMask := TVIS_SELECTED or TVIS_EXPANDED;
              SendMessageTVITEM(hWnd, TVM_GETITEM{#A}, 0, tvi);
              szItem := CastIntegerToString(tvi.pszText);

              { draw selected and hot states }
              GetCursorPos(tvhti.pt);
              MapWindowPointsPOINT(0, hWnd, tvhti.pt, 1);
              tvhti.hItem := hItem;
              if (tvi.state and TVIS_SELECTED <> 0) or ((SendMessageTVHTI(hWnd, TVM_HITTEST, 0, tvhti) = hItem) and ((tvhti.flags = TVHT_ONITEMLABEL) or (tvhti.flags = TVHT_ONITEMICON))) then
              begin
                iPartId := CP_READONLY;     // use partid from combobox class
                if Enabled then             // use stateid from combobox class
                begin
                  if tvi.state and TVIS_SELECTED <> 0 then
                    iStateId := CBRO_PRESSED;
                  if SendMessageTVHTI(hWnd, TVM_HITTEST, 0, tvhti) = hItem then
                    if (tvhti.flags = TVHT_ONITEMLABEL) or (tvhti.flags = TVHT_ONITEMICON) then
                      iStateId := CBRO_HOT;
                end
                else
                  iStateId := CBRO_DISABLED;
                rtt := rt;
                rtt.Left := rtt.Left - (rtt.Bottom - rtt.Top) - 2; // bounds fix
                rtt.Top := rtt.Top - 2;
                DrawThemeBackground(g_hThemeComboBox, hBufferedDC, iPartId, iStateId, rtt, 0);
              end;

              { partid, stateid }
              iPartId := TVP_TREEITEM;          // use partid from treeview class
              if Enabled then
                iStateId := TREIS_NORMAL
              else
                iStateId := TREIS_DISABLED;   // use stateid from treeview class

              { draw text }
              dwFlags := DT_SINGLELINE or DT_VCENTER or DT_CENTER;
              DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, iPartId, iStateId, StrToWStr(szItem), -1, dwFlags, rt, dtt);

              { draw imagelist icon }
              SetRect(rtt, rt.Left, rt.Top, rt.Left + rt.Bottom - rt.Top, rt.Bottom);
              OffsetRect(rtt, -(rtt.Right - rtt.Left) - 2, 0);
              InflateRect(rtt, -(rtt.Right - rtt.Left - cx) shr 1, -(rtt.Bottom - rtt.Top - cy) shr 1);
              ImageList_DrawEx(hImageList, tvi.iImage, hBufferedDC, rtt.Left, rtt.Top, cx, cy, 0, $FFFFFFFF, 0);

              { draw glyph }
              if tvi.cChildren > 0 then
              begin
                { partid, stateid }
                iPartId := TVP_GLYPH;
                if SendMessageTVHTI(hWnd, TVM_HITTEST, 0, tvhti) = hItem then
                  if tvhti.flags = TVHT_ONITEMBUTTON then
                    iPartId := TVP_HOTGLYPH;
                if tvi.state and TVIS_EXPANDED <> 0 then
                  iStateId := GLPS_OPENEDED
                else
                  iStateId := GLPS_CLOSED;

                { draw }
                SetRect(rtt, rt.Left, rt.Top, rt.Left + rt.Bottom - rt.Top, rt.Bottom);
                OffsetRect(rtt, -(rtt.Right - rtt.Left) shl 1 - 2, 0);
                InflateRect(rtt, -(rtt.Right - rtt.Left - cx) shr 1, -(rtt.Bottom - rtt.Top - cy) shr 1);
                DrawThemeBackground(g_hThemeTreeView, hBufferedDC, iPartId, iStateId, rtt, 0);
              end;

              { get next item rect }
              hItem := SendMessage(hWnd, TVM_GETNEXTITEM, TVGN_NEXTVISIBLE, hItem);
              if hItem = 0 then Break;
              rt.Left := hItem;
              SendMessageRECT(hWnd, TVM_GETITEMRECT, 1, rt);
            end;
            if hFontOld <> 0 then
              SelectObject(hBufferedDC, hFontOld);

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ComboBoxWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  rClient: TRect;
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  dtt: DTTOPTS;
  dwFlags: DWORD;
  iPartId, iStateId: Integer;
  cbi: COMBOBOXINFO;
  tme: TRACKMOUSEEVENT;
begin
  case uMsg of
    WM_MOUSEMOVE:
      begin
        tme.cbSize := SizeOf(tme);
        tme.dwFlags := TME_HOVER or TME_LEAVE;
        tme.dwHoverTime := 1;
        tme.hwndTrack := hWnd;
        _TrackMouseEvent(tme);
      end;
    WM_MOUSEHOVER:
      with TNewComboBox(AObject) do if Showing then
      begin
        if TNewComboBox(AObject).Name = 'TypesCombo' then   // typescombo
        begin
          ComponentListInfoLabel.Caption := g_TypesHelper[TNewComboBox(AObject).ItemIndex].szDescription;
          ComponentListInfoLabel.Enabled := True;
        end;
        if g_fEnabled then
        begin
          SetProp(hWnd, 'AERO_COMBOBOX_READONLYSTATES', CBRO_HOT);
          TNewComboBox(AObject).Invalidate;
        end;
      end;
    WM_MOUSELEAVE:
      with TNewComboBox(AObject) do if Showing then
      begin
        if TNewComboBox(AObject).Name = 'TypesCombo' then   // typescombo
        begin
          ComponentListInfoLabel.Caption := CustomMessage('TypesListInfoCaption');
          ComponentListInfoLabel.Enabled := False;
        end;
        if g_fEnabled then
        begin
          SetProp(hWnd, 'AERO_COMBOBOX_READONLYSTATES', CBRO_NORMAL);
          TNewComboBox(AObject).Invalidate;
        end;
      end;
    WM_PAINT:
      if g_fEnabled then
      begin
        with TNewComboBox(AObject) do if Showing then
        begin
          { get combobox metrics }
          cbi.cbSize := SizeOf(cbi);
          GetComboBoxInfo(hWnd, cbi);

          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            { create buffer }
            hPaintBuffer := BeginBufferedPaint(hDC, ps.rcPaint, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, ps.rcPaint);

            { partid, stateid }
            iPartId := CP_READONLY;
            if Enabled then
            begin
              if DroppedDown then
                iStateId := CBRO_PRESSED
              else
                iStateId := GetProp(hWnd, 'AERO_COMBOBOX_READONLYSTATES');
            end
            else
              iStateId := CBRO_DISABLED;

            { draw edit }
            GetClientRect(hWnd, rClient);
            DrawThemeBackground(g_hThemeComboBox, hBufferedDC, iPartId, iStateId, rClient, 0);

            { draw button }
            iPartId := CP_DROPDOWNBUTTONRIGHT;
            if Enabled then
              iStateId := CBXSR_NORMAL
            else
              iStateId := CBXSR_DISABLED;
            DrawThemeBackground(g_hThemeComboBox, hBufferedDC, iPartId, iStateId, cbi.rcButton, 0);

            { draw item text }
            dtt.dwSize := SizeOf(dtt);
            dtt.iGlowSize := 6;
            dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
            if Enabled then
              dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
            else
              dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
            dwFlags := DT_SINGLELINE or DT_VCENTER;
            hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
            DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Text), -1, dwFlags, cbi.rcItem, dtt);
            if hFontOld <> 0 then
              SelectObject(hBufferedDC, hFontOld);

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    CN_CTLCOLOREDIT,
    CN_CTLCOLORSTATIC:
      if g_fEnabled then
      begin
        SetBkColor(wParam, GetSysColor(COLOR_BACKGROUND));
        Result := GetSysColorBrush(COLOR_BACKGROUND);
        TNewComboBox(AObject).Invalidate;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function RichEditWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hBrushOld, hBrush: Longint;
  rClient: TRect;
  hBitmap: HBITMAP;
begin
  if g_fEnabled then
  begin
    case uMsg of
      WM_NCPAINT:
        begin
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
          DrawAeroBorder(hWnd);
        end;
      WM_ERASEBKGND:
        Result := 1;
      WM_PAINT:
        begin
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);

          { paint to buffer }
          hDC := GetDC(0);
          try
            { create buffer }
            GetClientRect(hWnd, rClient);
            hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rClient);

            { print to buffer }
            PrintWindow(hWnd, hBufferedDC, 1);

            { create brush }
            BufferedPaintSetAlpha(hPaintBuffer, rClient, $FF);
            hBitmap := GetCurrentObject(hBufferedDC, OBJ_BITMAP);
            hBrush := CreatePatternBrush(hBitmap);
            hBrushOld := GetProp(hWnd, 'AERO_RICHEDIT_BRUSH');
            if hBrushOld <> 0 then
              DeleteObject(hBrushOld);
            SetProp(hWnd, 'AERO_RICHEDIT_BRUSH', hBrush);

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, False);
          finally
            ReleaseDC(0, hDC);
          end;

          { paint }
          InvalidateRect(hWnd, rClient, True);
          hDC := BeginPaint(hWnd, ps);
          FillRect(hDC, ps.rcPaint, GetProp(hWnd, 'AERO_RICHEDIT_BRUSH'));
          EndPaint(hWnd, ps);
        end;
    else
      Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    end;
  end
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function EditWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld, hRgn, hRgnOld, hRgnLine: THandle;
  rt, rtt, rc: TRect;
  szText: string;
  szLine: string;
  dtt: DTTOPTS;
  iStartLine, iEndLine, iSelFirst, iSelLast, iSelFirstLine, iSelLastLine,
  iFirstPos, iSelFirstPos, iFirst, iFirstOffsetX, i: Integer;
  dwStyle: DWORD;
  siHorz, siVert: SCROLLINFO;
begin
  case uMsg of
    WM_NCPAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          DrawAeroBorder(hWnd);
          DrawAeroScrollBar(hWnd);
        end;
      end;
    WM_ERASEBKGND:
      if g_fEnabled then
      begin
        GetClientRect(hWnd, rc);
        FillRect(wParam, rc, GetSysColorBrush(COLOR_BACKGROUND));
        Result := 1;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        hDC := BeginPaint(hWnd, ps);
        try
          { get scroll info }
          dwStyle := GetWindowLong(hWnd, GWL_STYLE);
          if dwStyle and ES_MULTILINE <> 0 then
          begin
            siHorz.cbSize := SizeOf(siHorz);
            siHorz.fMask := SIF_RANGE or SIF_PAGE or SIF_POS;
            GetScrollInfo(hWnd, SB_HORZ, siHorz);

            siVert.cbSize := SizeOf(siVert);
            siVert.fMask := SIF_RANGE or SIF_PAGE or SIF_POS;
            GetScrollInfo(hWnd, SB_VERT, siVert);

            iStartLine := siVert.nPos;
            iEndLine := siVert.nPos + siVert.nPage - 1;
            if iEndLine = -1 then
              iEndLine := TCustomMemo(AObject).Lines.Count - 1;
          end;

          { get selection range }
          iSelFirst := TCustomEdit(AObject).SelStart;
          iSelLast := iSelFirst + TCustomEdit(AObject).SelLength;

          { get selection lines }
          iSelFirstLine := SendMessage(hWnd, EM_LINEFROMCHAR, iSelFirst, 0);
          iSelLastLine := SendMessage(hWnd, EM_LINEFROMCHAR, iSelLast, 0);

          { get text and selection region }
          hFontOld := SelectObject(hDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
          hRgn := CreateRectRgn(0, 0, 0, 0);
          for i := iStartLine to iEndLine do
          begin
            { get line }
            iFirstPos := SendMessage(hWnd, EM_LINEINDEX, i, 0);
            if AObject is TEdit then
              szLine := TEdit(AObject).Text;
            if AObject is TNewMemo then
              szLine := TNewMemo(AObject).Lines[i];
            if dwStyle and ES_MULTILINE <> 0 then
              szText := Format('%s%s'#13#10, [szText, szLine])
            else
              szText := szLine;
            if (Length(szLine) = 0) or (iSelFirst = iSelLast) or (i < iSelFirstLine) or (i > iSelLastLine) then Continue;

            { get sel text rect }
            if (i = iSelFirstLine) and (i = iSelLastLine) then
              szLine := Copy(szLine, iSelFirst - iFirstPos + 1, iSelLast - iSelFirst);
            if (i = iSelFirstLine) and (iSelFirstLine < iSelLastLine) then
              Delete(szLine, 1, iSelFirst - iFirstPos);
            if (i = iSelLastLine) and (iSelFirstLine < iSelLastLine) then
              Delete(szLine, iSelLast - iFirstPos + 1, Length(szLine));
            GetThemeTextExtent(g_hThemeTreeView, hDC, 0, 0, StrToWStr(szLine), -1, DT_CALCRECT, 0, rtt);
            if i = iSelFirstLine then
              iFirst := iSelFirst
            else
              iFirst := iFirstPos;
            iSelFirstPos := SendMessage(hWnd, EM_POSFROMCHAR, iFirst, 0);
            if iSelFirstPos and $FFFF > $7FFF then
              iFirstOffsetX := iSelFirstPos or $FFFF0000
            else
              iFirstOffsetX := iSelFirstPos and $FFFF;
            OffsetRect(rtt, iFirstOffsetX, iSelFirstPos shr $10);

            { update sel region }
            hRgnLine := CreateRectRgnIndirect(rtt);
            CombineRgn(hRgn, hRgn, hRgnLine, RGN_OR);
            DeleteObject(hRgnLine);
          end;
          if hFontOld <> 0 then
            SelectObject(hDC, hFontOld);

          { get offset rect }
          SendMessageRECT(hWnd, EM_GETRECT, 0, rt);
          if dwStyle and ES_MULTILINE <> 0 then
          begin
            SetRect(rtt, 0, 0, siHorz.nMax, rt.Bottom);
            if siHorz.nMax < rt.Right - rt.Left then
              rtt.Right := rt.Right;
            iFirstOffsetX := siHorz.nPos;
          end
          else
          begin
            hFontOld := SelectObject(hDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
            GetThemeTextExtent(g_hThemeTreeView, hDC, 0, 0, StrToWStr(szText), -1, DT_CALCRECT, 0, rtt);
            if hFontOld <> 0 then
              SelectObject(hDC, hFontOld);
            if rtt.Right < rt.Right - rt.Left then
              rtt.Right := rt.Right;
            iSelFirstPos := SendMessage(hWnd, EM_POSFROMCHAR, 0, 0);
            if iSelFirstPos and $FFFF > $7FFF then
              iFirstOffsetX := (-iSelFirstPos) and $FFFF
            else
              iFirstOffsetX := -iSelFirstPos;
          end;

          { paint text to buffer }
          InflateRect(rtt, rt.Left, rt.Top);
          OffsetRect(rtt, -rtt.Left, -rtt.Top);
          hPaintBuffer := BeginBufferedPaint(hDC, rtt, BPBF_TOPDOWNDIB, 0, hBufferedDC);
          BufferedPaintClear(hPaintBuffer, rtt);
          hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
          dtt.dwSize := SizeOf(dtt);
          dtt.iGlowSize := 6;
          dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
          if TCustomEdit(AObject).Enabled then
            dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
          else
            dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
          OffsetRect(rtt, rt.Left, rt.Top);
          DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(szText), -1, DT_VCENTER, rtt, dtt);
          if hFontOld <> 0 then
            SelectObject(hBufferedDC, hFontOld);
          BitBlt(hDC, rt.Left, rt.Top, rt.Right - rt.Left, rt.Bottom - rt.Top, hBufferedDC, iFirstOffsetX + rt.Left, rt.Top, SRCCOPY);
          EndBufferedPaint(hPaintBuffer, False);

          { draw selecton }
          if GetFocus = hWnd then
          begin
            hRgnOld := SelectObject(hDC, hRgn);
            hPaintBuffer := BeginBufferedPaint(hDC, rt, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rt);
            SendMessage(hWnd, WM_PRINTCLIENT, hBufferedDC, PRF_CLIENT or PRF_CHECKVISIBLE);
            BufferedPaintSetAlpha(hPaintBuffer, rt, $FF);
            BitBlt(hDC, rt.Left, rt.Top, rt.Right - rt.Left, rt.Bottom - rt.Top, hBufferedDC, rt.Left, rt.Top, SRCCOPY);
            EndBufferedPaint(hPaintBuffer, False);
            if hRgnOld <> 0 then
              SelectObject(hDC, hRgnOld);
          end;
          DeleteObject(hRgn);
        finally
          EndPaint(hWnd, ps);
        end;
      end
      else
         Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    CN_CTLCOLORSTATIC:
      if g_fEnabled then
      begin
        SetBkMode(wParam, TRANSPARENT);
        Result := GetStockObject(NULL_BRUSH);
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    CN_CTLCOLOREDIT:
      if g_fEnabled then
      begin
        SetBkMode(wParam, TRANSPARENT);
        Result := GetSysColorBrush(COLOR_BACKGROUND);
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function StaticWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  rClient: TRect;
  dwStyle, dwFlags: DWORD;
  dtt: DTTOPTS;
begin
  case uMsg of
    WM_PAINT:
      if g_fEnabled then
      begin
        with TNewStaticText(AObject) do if Showing then
        begin
          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            { create buffer }
            GetClientRect(hWnd, rClient);
            hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rClient);

            { draw intersect bgnd }
            DrawIntersectedBackground(hWnd, hBufferedDC);

            { draw text }
            hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
            OffsetRect(rClient, 2, 0);
            dwStyle := GetWindowLong(hWnd, GWL_STYLE);
            dwFlags := DT_WORDBREAK or DT_WORD_ELLIPSIS;
            dtt.dwSize := SizeOf(dtt);
            dtt.iGlowSize := 6;
            dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
            if Enabled then
              dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
            else
              dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
            if Assigned(URLLabel) then
              if hWnd = URLLabel.Handle then
                dtt.crText := Font.Color;
            if dwStyle and SS_RIGHT <> 0 then
              dwFlags := dwFlags or DT_RIGHT;
            DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Caption), -1, dwFlags, rClient, dtt);
            if hFontOld <> 0 then
              SelectObject(hBufferedDC, hFontOld);

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;
        end;
    end
    else
      Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ButtonWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  pt: TPoint;
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  rClient: TRect;
  szCaption: string;
  dtt: DTTOPTS;
  dwStyle, dwFlags: DWORD;
  iPartId, iStateId: Integer;
begin
  case uMsg of
    WM_ENABLE:
      if g_fEnabled then
      begin
        GetClientRect(hWnd, rClient);
        InvalidateRect(hWnd, rClient, False);
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        { get type button }
        GetClientRect(hWnd, rClient);
        dwStyle := GetWindowLong(hWnd, GWL_STYLE);
        case dwStyle and $000F of
          BS_PUSHBUTTON,
          BS_DEFPUSHBUTTON:
            begin
              iPartId := BP_PUSHBUTTON;
              if TNewButton(AObject).Enabled then
                iStateId := PBS_NORMAL
              else
                iStateId := PBS_DISABLED;
              dwFlags := DT_SINGLELINE or DT_CENTER or DT_VCENTER;
              szCaption := TNewButton(AObject).Caption;
            end;
          BS_RADIOBUTTON,
          BS_AUTORADIOBUTTON:
            begin
              iPartId := BP_RADIOBUTTON;
              if TNewRadioButton(AObject).Enabled then
                iStateId := RBS_UNCHECKEDNORMAL
              else
                iStateId := RBS_UNCHECKEDDISABLED;
              dwFlags := DT_SINGLELINE or DT_LEFT or DT_VCENTER;
              GetThemePartSize(g_hThemeButton, 0, iPartId, iStateId, 0, TS_DRAW, pt);
              rClient.Left := pt.x + 4;    // padding
              szCaption := TNewRadioButton(AObject).Caption;
            end;
          BS_CHECKBOX,
          BS_AUTOCHECKBOX,
          BS_3STATE,
          BS_AUTO3STATE:
            begin
              iPartId := BP_CHECKBOX;
              if TNewCheckBox(AObject).Enabled then
                iStateId := CBS_UNCHECKEDNORMAL
              else
                iStateId := CBS_UNCHECKEDDISABLED;
              dwFlags := DT_SINGLELINE or DT_LEFT or DT_VCENTER;
              GetThemePartSize(g_hThemeButton, 0, iPartId, iStateId, 0, TS_DRAW, pt);
              rClient.Left := pt.x + 4;    // padding
              szCaption := TNewCheckBox(AObject).Caption;
            end;
        end;

        { paint to buffer }
        hDC := BeginPaint(hWnd, ps);
        try
          { create buffer }
          hPaintBuffer := BeginBufferedPaint(hDC, ps.rcPaint, BPBF_TOPDOWNDIB, 0, hBufferedDC);
          BufferedPaintClear(hPaintBuffer, ps.rcPaint);

          { print to buffer }
          SendMessage(hWnd, WM_PRINTCLIENT, hBufferedDC, PRF_CLIENT or PRF_CHECKVISIBLE);

          { draw text }
          dtt.dwSize := SizeOf(dtt);
          dtt.iGlowSize := 6;
          dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
          if TButtonControl(AObject).Enabled then
            dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
          else
            dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
          hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
          DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, iPartId, iStateId, StrToWStr(szCaption), -1, dwFlags, rClient, dtt);
          if hFontOld <> 0 then
            SelectObject(hBufferedDC, hFontOld);

          { apply buffer }
          EndBufferedPaint(hPaintBuffer, True);
        finally
          EndPaint(hWnd, ps);
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function PageControlWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  rClient, rTab: TRect;
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  i: Integer;
  dtt: DTTOPTS;
  dwFlags: DWORD;
  IsVisible, IsFirst: Boolean;
begin
  case uMsg of
    WM_ERASEBKGND:
      if g_fEnabled then
      begin
        GetUpdateRect(hWnd, rClient, False);
        FillRect(wParam, rClient, GetSysColorBrush(COLOR_BACKGROUND));
        Result := 1;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        with TPageControl(AObject) do if Showing then
        begin
          hDC := BeginPaint(hWnd, ps);
          try
            { create buffer }
            GetClientRect(hWnd, rClient);
            hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rClient);

            { set font }
            hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));

            { draw active tab }
            with ActivePage do
            begin
              SendMessageRECT(hWnd, TCM_GETITEMRECT, PageIndex, rTab);
              IsVisible := (rTab.Left > -1);
              IsFirst := (rTab.Left > -1) and (rTab.Left < 3);
              InflateRect(rTab, 2, 2);

              { draw border }
              if IsVisible then
              begin
                DrawImageWithMargins(hBufferedDC, rTab.Left, rTab.Top, rTab.Right - rTab.Left - 4, rTab.Bottom - 4, g_Border, 4, 0, 3, 3, 0, 0);
                DrawImageWithMargins(hBufferedDC, rTab.Right - 4, rTab.Top, 4, rTab.Bottom - 4, g_Border, 4, 1, 0, 3, 3, 0);
                DrawImageWithMargins(hBufferedDC, rTab.Right - 3, rTab.Bottom - 4, 4, 4, g_Border, 4, 3, 3, 0, 0, 3);
                DrawImageWithMargins(hBufferedDC, rTab.Right + 1, rTab.Bottom - 3, rClient.Right - rTab.Right - 1, rClient.Bottom - rTab.Bottom - 1, g_Border, 4, 1, 0, 3, 3, 0);
                DrawImageWithMargins(hBufferedDC, rClient.Right - 4, rClient.Bottom - 4, 4, 4, g_Border, 4, 2, 0, 0, 3, 3);
                if not IsFirst then
                begin
                  DrawImageWithMargins(hBufferedDC, rClient.Left, rTab.Bottom + 1, rClient.Right - 4, rClient.Bottom - rTab.Bottom - 1, g_Border, 4, 3, 3, 0, 0, 3);
                  DrawImageWithMargins(hBufferedDC, rClient.Left, rTab.Bottom - 3, rTab.Left - 1, 4, g_Border, 4, 0, 3, 3, 0, 0);
                  DrawImageWithMargins(hBufferedDC, rTab.Left - 1, rTab.Bottom - 4, 4, 4, g_Border, 4, 2, 0, 0, 3, 3);
                end
                else
                  DrawImageWithMargins(hBufferedDC, rClient.Left, rTab.Bottom - 4, rClient.Right - 4, rClient.Bottom - rTab.Bottom + 4, g_Border, 4, 3, 3, 0, 0, 3);
              end
              else
              begin
                DrawImageWithMargins(hBufferedDC, rClient.Left, rTab.Bottom - 3, rClient.Right - 4, rClient.Bottom - rTab.Bottom - 1, g_Border, 4, 0, 3, 3, 0, 0);
                DrawImageWithMargins(hBufferedDC, rClient.Right - 4, rTab.Bottom - 3, 4, 4, g_Border, 4, 1, 0, 3, 3, 0);
                DrawImageWithMargins(hBufferedDC, rClient.Left + 4, rTab.Bottom + 1, rClient.Right - 4, rClient.Bottom - rTab.Bottom - 1, g_Border, 4, 2, 0, 0, 3, 3);
                DrawImageWithMargins(hBufferedDC, rClient.Left, rClient.Bottom - 4, 4, 4, g_Border, 4, 3, 3, 0, 0, 3);
              end;

              { draw text }
              dwFlags := DT_CENTER or DT_VCENTER or DT_SINGLELINE;
              dtt.dwSize := SizeOf(dtt);
              dtt.iGlowSize := 6;
              dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
              if Enabled then
                dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
              else
                dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
              DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Caption), -1, dwFlags, rTab, dtt);

              { set clip rect }
              if IsVisible then
                ExcludeClipRect(hBufferedDC, rTab.Left + 1, rTab.Top, rTab.Right - 1, rTab.Bottom);
            end;

            { draw inactive tabs }
            for i := 0 to PageCount - 1 do if (Pages[i] <> ActivePage) then
            begin
              SendMessageRECT(hWnd, TCM_GETITEMRECT, i, rTab);
              if rTab.Left < 0 then
                Continue;
              InflateRect(rTab, 1, 0);

              { draw border }
              DrawImageWithMargins(hBufferedDC, rTab.Left, rTab.Top, rTab.Right - rTab.Left - 4, rTab.Bottom - 2, g_Border, 4, 0, 3, 3, 0, 0);
              DrawImageWithMargins(hBufferedDC, rTab.Right - 4, rTab.Top, 4, rTab.Bottom - 2, g_Border, 4, 1, 0, 3, 3, 0);

              { draw text }
              dwFlags := DT_CENTER or DT_VCENTER or DT_SINGLELINE;
              dtt.dwSize := SizeOf(dtt);
              dtt.iGlowSize := 6;
              dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
              if Pages[i].Enabled then
                dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
              else
                dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
              DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Pages[i].Caption), -1, dwFlags, rTab, dtt);

              { set clip rect }
              ExcludeClipRect(hBufferedDC, rTab.Left + 1, rTab.Top, rTab.Right - 1, rTab.Bottom);
            end;

            { select old }
            if hFontOld <> 0 then
              SelectObject(hBufferedDC, hFontOld);

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_LBUTTONDOWN:
      begin
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
          if g_fEnabled then
          begin
            GetClientRect(hWnd, rClient);
            InvalidateRect(hWnd, rClient, False);
          end;
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function UpDownWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  pt: TPoint;
  rClient, rButton: TRect;
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC: THandle;
  iPartId, iStateId: Integer;
begin
  case uMsg of
    WM_ERASEBKGND:
      if g_fEnabled then
      begin
        GetUpdateRect(hWnd, rClient, False);
        FillRect(wParam, rClient, GetSysColorBrush(COLOR_BACKGROUND));
        Result := 1;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        hDC := BeginPaint(hWnd, ps);
        try
          { create buffer }
          GetClientRect(hWnd, rClient);
          hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
          BufferedPaintClear(hPaintBuffer, rClient);

          { partid, stateid }
          iPartId := BP_PUSHBUTTON;
          iStateId := PBS_NORMAL;

          { draw left arrow }
          SetRect(rButton, 0, 0, rClient.Right div 2, rClient.Bottom);
          DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rButton, 0);
          GetThemePartSize(g_hThemeArrowBtnLeft, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
          OffsetRect(rButton, (rButton.Right - rButton.Left - pt.x) div 2, (rButton.Bottom - pt.y) div 2);
          DrawThemeBackground(g_hThemeArrowBtnLeft, hBufferedDC, 0, 0, rButton, 0);

          { draw right arrow }
          SetRect(rButton, rClient.Right div 2, 0, rClient.Right, rClient.Bottom);
          DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rButton, 0);
          GetThemePartSize(g_hThemeArrowBtnRight, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
          OffsetRect(rButton, (rButton.Right - rButton.Left - pt.x) div 2, (rButton.Bottom - pt.y) div 2);
          DrawThemeBackground(g_hThemeArrowBtnRight, hBufferedDC, 0, 0, rButton, 0);

          { apply buffer }
          EndBufferedPaint(hPaintBuffer, True);
        finally
          EndPaint(hWnd, ps);
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function TabSheetWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  rClient: TRect;
  ps: PAINTSTRUCT;
begin
  case uMsg of
    WM_ERASEBKGND:
      if g_fEnabled then
      begin
        GetUpdateRect(hWnd, rClient, False);
        FillRect(wParam, rClient, GetSysColorBrush(COLOR_BACKGROUND));
        Result := 1;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        BeginPaint(hWnd, ps);
        FillRect(ps.hdc, ps.rcPaint, GetSysColorBrush(COLOR_BACKGROUND));
        EndPaint(hWnd, ps);
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;
/////////////////////////////
/////////////////////////////
/////////////////////////////
function ErrorHelper: string;
begin
  { standart }
  if IsDefaultSetupType then
  begin
    Result := 'RestoreStandartSettings';
    if (GetSetupPreviousDataEx('InstallLocation', '') <> '') xor (FileExists(ExpandConstant('{app}\profiles\{#AppINI}'))) then
      if (FileExists(ExpandConstant('{app}\{#AppExeName}')) or FileExists(ExpandConstant('{app}\{#AppExeOppName}'))) and FileExists(ExpandConstant('{app}\profiles\{#AppINI}')) then
        Result := 'PortableDirSelectError';
  end;

  { portable }
  if IsPortableSetupType then
  begin
    Result := 'RestorePortableSettings';
    if CompareText(RemoveBackslash(WizardDirValue), GetSetupPreviousDataEx('InstallLocation', '')) = 0 then
    begin
      Result := 'DefaultDirSelectError';
      Exit;
    end;
    if (FileExists(ExpandConstant('{app}\{#AppExeName}')) or FileExists(ExpandConstant('{app}\{#AppExeOppName}'))) and not FileExists(ExpandConstant('{app}\profiles\{#AppINI}')) then
    begin
      Result := 'OtherVerDirSelectError';
      Exit;
    end;
    if (FileExists(ExpandConstant('{app}\{#AppExeName}')) or FileExists(ExpandConstant('{app}\{#AppExeOppName}'))) and FileExists(ExpandConstant('{app}\profiles\{#AppINI}')) and not CheckUpdateVersion('{#AppUpdateVersion}') then
    begin
      Result := 'FoundVerNotUpdatableConfirm';
      Exit;
    end;
    if (FileExists(ExpandConstant('{app}\{#AppExeName}')) or FileExists(ExpandConstant('{app}\{#AppExeOppName}'))) and FileExists(ExpandConstant('{app}\profiles\{#AppINI}')) and CheckUpdateVersion('{#AppUpdateVersion}') then
      Result := 'FoundPortableVerUpdateActivateInfo';
  end;
end;

///////////////////////////////
procedure ReadStandartSettings;
var
  i, j, Index: Integer;
  crBackground: DWORD;
  TempList: TStringList;
  S: string;
begin
  { global color }
  crBackground := GetSysColor(COLOR_BTNFACE);
#if aero == 1
  if g_fEnabled then
    crBackground := GetSysColor(COLOR_BACKGROUND);
#endif

  { update default captions }
  CheckDefaultInstall;

  { exit if previously restored }
  if CompareText(szPreviousSelectedDefaultAppPath, RemoveQuotes(WizardDirValue)) = 0 then Exit;

  { SelectComponentsPage }
      // check/enable components
  with TStringList.Create do
  try
    Sorted := True;
    with WizardForm.ComponentsList do
    begin
      CommaText := GetSetupPreviousDataEx('Inno Setup: Selected Components', '');
      for i := 0 to ItemCount - 1 do
      begin
        if IsUpdate then
          Checked[i] := Find(g_ComponentsHelper[i].szInternalName, Index);

        // disable previous installed themes
        case g_ComponentsHelper[i].szInternalName of
//          'resources\themes\diplomatd',
//          'resources\themes\diplomatl',
          'resources\themes\glamourd',
          'resources\themes\glamourl',
//          'resources\themes\goldtimed',
//          'resources\themes\goldtimed',
          'resources\themes\graphited',
          'resources\themes\graphitel',
          'resources\themes\photooned',
          'resources\themes\photoonel',
          'resources\themes\surfaceb',
          'resources\themes\surfacew',
          'resources\themes\textolited',
          'resources\themes\textolitel',
          'resources\themes\winstyled',
          'resources\themes\winstylel':
            ItemEnabled[i] := not IsUpdate or not Checked[i];
        end;
      end;
    end;
  finally
    Free;
  end;
      // types
  for i := 0 to GetArrayLength(g_TypesHelper) - 1 do
    if CompareText(g_TypesHelper[i].szInternalName, GetSetupPreviousDataEx('Inno Setup: Setup Type', '{#TypeDefault}')) = 0 then
    begin
      WizardForm.TypesCombo.ItemIndex := i;
      Break;
    end;
  WizardForm.TypesCombo.OnChange(WizardForm.TypesCombo);

  { SelectProgramGroupPage }
  WizardForm.NoIconsCheck.Checked := WizardNoIcons;

  { SettingsPage }
      // settings
  TempList := TStringList.Create;
  with TempList do
  try
    Sorted := True;
    Duplicates := dupIgnore;
    CommaText := GetPreviousData('SelectedSettings', '{#SelectedSettingsDefault}')
    if IsUpdate then with TStringList.Create do
    try
      Sorted := True;
      Duplicates := dupIgnore;
      CommaText := '{#SelectedSettingsDefault}';
      S := Format('%s,%s,', [GetPreviousData('SelectedSettings', ''), GetPreviousData('DeselectedSettings', '')]);
      for i := 0 to Count - 1 do
        if Pos(Format('%s,', [Strings[i]]), S) = 0 then
          TempList.Add(Strings[i]);
    finally
      Free;
    end;
    for i := SettingsPage.CheckListBox.ItemCount - 1 downto 0 do
      if Find(g_SetHelper[i].szInternalName, Index) then
        SettingsPage.CheckListBox.CheckItem(i, coCheck);
  finally
    Free;
  end;
      // additional settings
  for i := 0 to GetArrayLength(g_AddSetHelper) - 1 do
  begin
    S := GetPreviousData(g_AddSetHelper[i].szInternalName, g_AddSetHelper[i].szInternalDefault);
    with TStringList.Create do
    try
      CommaText := g_AddSetHelper[i].szInternalValues;
      for j := 0 to Count - 1 do
        if CompareText(Trim(Strings[j]), S) = 0 then
        begin
          if AddSettingsListBox.Items.Objects[i] is TNewComboBox then
            TNewComboBox(AddSettingsListBox.Items.Objects[i]).ItemIndex := j;
          Break;
        end;
    finally
      Free;
    end;
  end;

  { StylesPage }
  TempList := TStringList.Create;
  with TempList do
  try
    Sorted := True;
    Duplicates := dupIgnore;
    CommaText := GetPreviousData('SelectedStyleSettings', '{#SelectedStyleSettingsDefault}');
    if IsUpdate then with TStringList.Create do
    try
      Sorted := True;
      Duplicates := dupIgnore;
      CommaText := '{#SelectedStyleSettingsDefault}';
      S := Format('%s,%s', [GetPreviousData('SelectedStyleSettings', ''), GetPreviousData('DeselectedStyleSettings', '')]);
      for i := 0 to Count - 1 do
        if Pos(Strings[i], S) = 0 then
          TempList.Add(Strings[i]);
    finally
      Free;
    end;
    for i := StylesPage.CheckListBox.ItemCount - 1 downto 0 do
    begin
      if Find(g_StylesHelper[i].szInternalName, Index) then
      begin
        StylesPage.CheckListBox.CheckItem(i, coCheck);
        if StylesPage.CheckListBox.ItemLevel[i] = 1 then
          PreviewButton.Enabled := g_StylesHelper[i].szPreviewBitmap <> '';
      end;

      // update thumb
      if StylesPage.CheckListBox.Checked[i] then
        DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[i].szSelectedBitmap, crBackground)
      else
        DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[i].szUnselectedBitmap, crBackground);
    end;
  finally
    Free;
  end;

  { set previous selected default path }
  szPreviousSelectedDefaultAppPath := RemoveQuotes(WizardDirValue);
end;

////////////////////////////////////////////////////
procedure ReadPortableSettings(const Param: string);
var
  i, j, Index: Integer;
  crBackground: DWORD;
  TempList: TStringList;
  S: string;
begin
  { global color }
  crBackground := GetSysColor(COLOR_BTNFACE);
#if aero == 1
  if g_fEnabled then
    crBackground := GetSysColor(COLOR_BACKGROUND);
#endif

  { update portable captions }
  CheckPortableInstall;

  { message if found portable }
  if CompareText(Param, 'FoundPortableVerUpdateActivateInfo') = 0 then
    MsgBox(CustomMessage('FoundPortableVerUpdateActivateInfo'), mbInformation, MB_OK);

  { exit if restored }
  if CompareText(szPreviousSelectedPortableAppPath, RemoveQuotes(WizardDirValue)) = 0 then Exit;

  { SelectComponentsPage }
  with TStringList.Create do
  try
    Sorted := True;
    with WizardForm.ComponentsList do
    begin
      CommaText := ExpandConstant('{ini:{app}\profiles\{#AppINI},{#AppNameSetup},SelectedComponents|}');
      for i := 0 to ItemCount - 1 do
      begin
        if (CompareText(Param, 'FoundPortableVerUpdateActivateInfo') = 0) then
          Checked[i] := Find(g_ComponentsHelper[i].szInternalName, Index);

        // disable previous installed themes
        case g_ComponentsHelper[i].szInternalName of
//          'resources\themes\diplomatd',
//          'resources\themes\diplomatl',
          'resources\themes\glamourd',
          'resources\themes\glamourl',
//          'resources\themes\goldtimed',
//          'resources\themes\goldtimed',
          'resources\themes\graphited',
          'resources\themes\graphitel',
          'resources\themes\photooned',
          'resources\themes\photoonel',
          'resources\themes\surfaceb',
          'resources\themes\surfacew',
          'resources\themes\textolited',
          'resources\themes\textolitel',
          'resources\themes\winstyled',
          'resources\themes\winstylel':
            ItemEnabled[i] := (CompareText(Param, 'RestorePortableSettings') = 0) or ((CompareText(Param, 'FoundPortableVerUpdateActivateInfo') = 0) and not Checked[i]);
        end;
      end;
    end;
  finally
    Free;
  end;
      // types
  for i := 0 to GetArrayLength(g_TypesHelper) - 1 do
    if CompareText(g_TypesHelper[i].szInternalName, ExpandConstant('{ini:{app}\profiles\{#AppINI},{#AppNameSetup},SetupType|{#TypeDefault}}')) = 0 then
    begin
        WizardForm.TypesCombo.ItemIndex := i;
        Break;
    end;
  WizardForm.TypesCombo.OnChange(WizardForm.TypesCombo);

  { SettingsPage }
    // settings
  TempList := TStringList.Create;
  with TempList do
  try
    Sorted := True;
    Duplicates := dupIgnore;
    CommaText := ExpandConstant('{ini:{app}\profiles\{#AppINI},{#AppNameSetup},SelectedSettings|{#SelectedSettingsDefault}}');
    if IsUpdate then with TStringList.Create do
    try
      Sorted := True;
      Duplicates := dupIgnore;
      CommaText := '{#SelectedSettingsDefault}';
      S := Format('%s,%s,', [ExpandConstant('{ini:{app}\profiles\{#AppINI},{#AppNameSetup},SelectedSettings|}'), ExpandConstant('{ini:{app}\profiles\{#AppINI},{#AppNameSetup},DeselectedSettings|}')]);
      for i := 0 to Count - 1 do
        if Pos(Format('%s,', [Strings[i]]), S) = 0 then
          TempList.Add(Strings[i]);
    finally
      Free;
    end;
    for i := SettingsPage.CheckListBox.ItemCount - 1 downto 0 do
      if Find(g_SetHelper[i].szInternalName, Index) then
        SettingsPage.CheckListBox.CheckItem(i, coCheck);
  finally
    Free;
  end;
    // additional settings
  for i := 0 to GetArrayLength(g_AddSetHelper) - 1 do
  begin
    S := ExpandConstant(Format('{ini:{app}\profiles\{#AppINI},{#AppNameSetup},%s|%s}', [g_AddSetHelper[i].szInternalName, g_AddSetHelper[i].szInternalDefault]));
    with TStringList.Create do
    try
      CommaText := g_AddSetHelper[i].szInternalValues;
      for j := 0 to Count - 1 do
        if CompareText(Trim(Strings[j]), S) = 0 then
        begin
          if AddSettingsListBox.Items.Objects[i] is TNewComboBox then
            TNewComboBox(AddSettingsListBox.Items.Objects[i]).ItemIndex := j;
          Break;
        end;
    finally
      Free;
    end;
  end;

  { StylesPage }
  TempList := TStringList.Create;
  with TempList do
  try
    Sorted := True;
    Duplicates := dupIgnore;
    CommaText := ExpandConstant('{ini:{app}\profiles\{#AppINI},{#AppNameSetup},SelectedStyleSettings|{#SelectedStyleSettingsDefault}}');
    if IsUpdate then with TStringList.Create do
    try
      Sorted := True;
      Duplicates := dupIgnore;
      CommaText := '{#SelectedStyleSettingsDefault}';
      S := Format('%s,%s', [ExpandConstant('{ini:{app}\profiles\{#AppINI},{#AppNameSetup},SelectedStyleSettings|}'), ExpandConstant('{ini:{app}\profiles\{#AppINI},{#AppNameSetup},DeselectedStyleSettings|}')]);
      for i := 0 to Count - 1 do
        if Pos(Strings[i], S) = 0 then
          TempList.Add(Strings[i]);
    finally
      Free;
    end;
    for i := StylesPage.CheckListBox.ItemCount - 1 downto 0 do
    begin
      if Find(g_StylesHelper[i].szInternalName, Index) then
      begin
        StylesPage.CheckListBox.CheckItem(i, coCheck);
        if StylesPage.CheckListBox.ItemLevel[i] = 1 then
          PreviewButton.Enabled := g_StylesHelper[i].szPreviewBitmap <> '';
      end;

      // update thumb
      if StylesPage.CheckListBox.Checked[i] then
        DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[i].szSelectedBitmap, crBackground)
      else
        DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[i].szUnselectedBitmap, crBackground);
    end;
  finally
    Free;
  end;

  { SelectTasksPage }
  WizardForm.TasksList.Tag := 0;

  { set previous selected portable path }
  szPreviousSelectedPortableAppPath := RemoveQuotes(WizardDirValue);
end;
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
function PinToTaskbar(const Filename: string; IsPin: Boolean): Boolean;
var
  i, ResID, Len: Integer;
  Link, Verb: string;
  objShell, colVerbs: Variant;
  Flag: Longint;
begin
  Result := False;
  if not FileExists(Filename) then Exit;
  if (GetWindowsVersion < $06010000) or not FileExists(Filename) then Exit; { below Windows 7 }

  { String resources }
  if IsPin then
  begin
    Link := StringOfChar(#0, 255);
    if SHGetNewLinkInfo(Filename, ExpandConstant('{tmp}'), Link, Flag, 0) then
    begin
      Link := TrimRight(Link);
      if FileExists(ExpandConstant('{userappdata}\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\') + ExtractFileName(Link)) then Exit;
    end;
    ResID := 5386;  { Pin to Tas&kbar }
  end
  else
    ResID := 5387;  { Unpin from Tas&kbar }

  { Load string resource }
  Verb := StringOfChar(#0, 255);
  Len := LoadString(GetModuleHandle('shell32'), ResID, Verb, Length(Verb));
  if Len = 0 then Exit;
  SetLength(Verb, Len);

  { Do verb }
  try
    objShell := CreateOleObject('Shell.Application');
    colVerbs := objShell.Namespace(ExtractFileDir(Filename)).ParseName(ExtractFileName(Filename)).Verbs;
    for i := 1 to colVerbs.Count do
      if CompareText(colVerbs.Item[i].Name, Verb) = 0 then
      begin
        colVerbs.Item[i].DoIt;
        Result := True;
        Break;
      end;
  except
    Exit;
  end;
end;

///////////////////////////////////////////////////////////////////////////////
function PinToStartMenu(const Filename: string; const IsPin: Boolean): Boolean;
var
  i, ResID, Len: Integer;
  Link, Verb: string;
  Flag: Longint;
  Ver: Cardinal;
  objShell, colVerbs: Variant;
begin
  Result := False;
  if not FileExists(Filename) then Exit;

  { String resources }
  Ver := GetWindowsVersion;
  if IsPin then
  begin
    // Windows 7 and below
    if (Ver < $06020000) then
      ResID := 5381     { Pin to Start Men&u }
    // Windows 8, 10
    else if (Ver > $06010000) then
      ResID := 51201;   { &Pin to Start }
  end
  else
  begin
    // Windows 7 and below
    if (Ver < $06020000) then
      ResID := 5382     { Unpin from Start Men&u  }
    // Windows 8, 10
    else if (Ver > $06010000) then
      ResID := 51394;   { Un&pin from Start }
  end;

  { Check link, Windows 7 only }
  Link := StringOfChar(#0, 255);
  if (Ver > $06000000) and (Ver < $06020000) and Boolean(SHGetNewLinkInfo(Filename, ExpandConstant('{tmp}'), Link, Flag, 0)) then
  begin
    Link := TrimRight(Link);
    if FileExists(ExpandConstant('{userappdata}\Microsoft\Internet Explorer\Quick Launch\User Pinned\StartMenu\') + ExtractFileName(Link)) then Exit;
  end;

  { Load string resource }
  Verb := StringOfChar(#0, 255);
  Len := LoadString(GetModuleHandle('shell32'), ResID, Verb, Length(Verb));
  if Len = 0 then Exit;
  SetLength(Verb, Len);

  { Do verb }
  try
    objShell := CreateOleObject('Shell.Application');
    // below Windows 7
    if Ver < $06010000 then
    begin
      objShell.Namespace(ExtractFileDir(Filename)).ParseName(ExtractFileName(Filename)).InvokeVerb(Verb);
      Result := True;
    end
    // Windows 7 and above
    else if Ver > $06000000 then
    begin
      colVerbs := objShell.Namespace(ExtractFileDir(Filename)).ParseName(ExtractFileName(Filename)).Verbs;
      for i := 1 to colVerbs.Count do
        if CompareText(colVerbs.Item[i].Name, Verb) = 0 then
      begin
        colVerbs.Item[i].DoIt;
        Result := True;
        Break;
      end;
    end;
  except
    Exit;
  end;
end;

/////////////////////////////////////////////////////////////////////////////
function SortOppositeFiles(const pFrom, pTo, szExcludeList: string): Boolean;
var
  FR: TFindRec;
  fs: SHFILEOPSTRUCT;
  dwBinaryType: DWORD;
begin
  if FindFirst(Format('%s\*', [pFrom]), FR) then
  try
    SetCurrentDir(pFrom);
    repeat
      if (FR.Name <> '.') and (FR.Name <> '..') then
      begin
        if FR.Attributes and FILE_ATTRIBUTE_DIRECTORY = 0 then
        begin
          if FR.SizeLow > 0 then
          begin
            if Pos(LowerCase(Format('%s\%s,', [pFrom, FR.Name])), LowerCase(Format('%s,', [ExpandConstant(szExcludeList)]))) = 0 then
              if GetBinaryType(FR.Name, dwBinaryType) then
              case dwBinaryType of
              #if AppArch == "x86"
                SCS_64BIT_BINARY:
              #elif AppArch == "x64"
                SCS_32BIT_BINARY:
              #endif
                  begin
                    fs.wFunc := FO_MOVE;
                    fs.fFlags := FOF_NOCONFIRMMKDIR;
                    fs.pFrom := Format('%s\%s'#0, [pFrom, FR.Name]);
                    fs.pTo := Format('%s\%s'#0, [pTo, FR.Name]);
                    Result := SHFileOperation(fs) = 0;
                  end;
              end;
          end;
        end
        else
        begin
          if Pos(LowerCase(Format('%s\%s,', [pFrom, FR.Name])), LowerCase(Format('%s,', [ExpandConstant(szExcludeList)]))) = 0 then
            Result := SortOppositeFiles(Format('%s\%s', [pFrom, FR.Name]), Format('%s\%s', [pTo, FR.Name]), szExcludeList);
        end;
      end;
    until not FindNext(FR);
  finally
    FindClose(FR);
    SetCurrentDir(pTo);
    RemoveDir(pFrom);
    SetCurrentDir(pFrom);
  end;
end;

///////////////////////////////////////////////////////////
function GetProfileDir(const DefaultValue: string): string;
var
  szDst: string;
  pszDst: Longint;
begin
  Result := GetIniString('Database', 'ProfileDir', ExpandConstant('{app}\profiles'), ExpandConstant('{app}\mirandaboot.ini'));
  if Result = '' then
    Result := DefaultValue;
  szDst := StringOfChar(#0, MAX_PATH);
  pszDst := CastStringToInteger(szDst);
  ExpandEnvironmentStrings(Result, pszDst, Length(szDst));
  Result := CastIntegerToString(pszDst);
  if ExtractFileDrive(Result) = '' then
    Result := Format('%s\%s', [ExpandConstant('{app}'), Result]);
end;

/////////////////////////
procedure BackupProfiles;
var
	FR: TFindRec;
	szPath, szProfile, szBackupProfile: string;
begin
  szPath := GetProfileDir(ExpandConstant('{app}\profiles'));
  if not DirExists(szPath) then Exit;
  //
  if FindFirst(szPath + '\*', FR) then
  try
    repeat
      if (FR.Attributes and FILE_ATTRIBUTE_DIRECTORY <> 0) and (FR.Name <> '.') and (FR.Name <> '..') then
      begin
        szProfile := Format('%s\%s\%1:s.dat', [szPath, FR.Name]);
        if FileExists(szProfile) then
        begin
          szBackupProfile := Format('%s\backups\%s.dat_%s_%s.bak', [ExtractFileDir(szPath), FR.Name, GetDateTimeString('yyyy-mm-dd@hh-nn-ss', #0, #0), GetComputerNameString]);
          if ForceDirectories(Format('%s\backups', [ExtractFileDir(szPath)])) then
          FileCopy(szProfile, szBackupProfile, False);
        end;
      end;
    until not FindNext(FR);
  finally
    FindClose(FR);
  end;
end;

/////////////////////////////////////
function LoadAppOppositeKey: Boolean;
var
  hKeySrc, hKeyDest: THandle;
  lpdwDisposition: Longint;
begin
  if not IsWin64 then Exit;
  if RegKeyExists(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppID}_is1') and RegKeyExists(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppID}_is1') then Exit;
#if AppArch == "x86"
  if RegOpenKeyEx(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1', 0, KEY_READ or KEY_WOW64_64KEY, hKeySrc) <> ERROR_SUCCESS then Exit;
  if RegCreateKeyEx(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1', 0, '', REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS or KEY_WOW64_32KEY, 0, hKeyDest, lpdwDisposition) <> ERROR_SUCCESS then Exit;
#elif AppArch == "x64"
  if RegOpenKeyEx(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1', 0, KEY_READ or KEY_WOW64_32KEY, hKeySrc) <> ERROR_SUCCESS then Exit;
  if RegCreateKeyEx(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1', 0, '', REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS or KEY_WOW64_64KEY, 0, hKeyDest, lpdwDisposition) <> ERROR_SUCCESS then Exit;
#endif
  if lpdwDisposition = REG_OPENED_EXISTING_KEY then Exit;
  Result := SHCopyKey(hKeySrc, '', hKeyDest, 0) = ERROR_SUCCESS;
end;

///////////////////////////////////////
function UnLoadAppOppositeKey: Boolean;
begin
  if not IsWin64 then Exit;
#if AppArch == "x86"
  Result := RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1');
#elif AppArch == "x64"
  Result := RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1');
#endif
  g_bLoadAppOppKey := False;
end;
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
function InitializeLanguageDialog: Boolean;
begin
  { initialize GdiPlus }
  InitializeGdiPlus;
#if aero == 1
  { subclass }
  SubclassControlsProc(SelectLanguageForm, True);
#endif
  { settings }
  SelectLanguageForm.Caption := CustomMessage('SelectLanguageTitle');
  SelectLanguageForm.SelectLabel.Caption := CustomMessage('SelectLanguageLabel');

  Result := True;
end;

//////////////////////////////////
function InitializeSetup: Boolean;
begin
  { check mutex }
  if CheckForMutexes('{#SetupSetting("AppId")}AppMutex') then
  begin
    MsgBox(FmtMessage(SetupMessage(msgSetupAppRunningError), ['{#AppName}']), mbError, MB_OK);
    Result := False;
    Exit;
  end;
  g_hMutex := _CreateMutex(0, False, '{#SetupSetting("AppId")}AppMutex');      // create mutex
#if splash == 1
  { show splash }
  ShowSplash(2000, 2000, 2000);
#endif
  { load opposite arch registry }
  g_bLoadAppOppKey := LoadAppOppositeKey;
#if aero != 0
  { check composition }
  if (GetWindowsVersion > $06000000) and (GetWindowsVersion < $06020000) then
    DwmIsCompositionEnabled(g_fEnabled);
#endif
  Result := True;
end;

///////////////////////////
procedure InitializeWizard;
begin
#if debug == 1
  g_hDC := GetDC(0);
#endif
  CreateWizardForm({#AppWidth}, {#AppHeight});
  CreateWelcomePage;
  CreateInstallTypePage;
  CreateSelectDirPage;
  CreateSelectComponentsPage;
  CreateSettingsPage;
  CreateStylesPage;
  CreateSelectProgramGroupPage;
  CreateSelectTasksPage;
  CreatePreparePage;
  CreateInstallingPage;
  CreateFinishPage;
  CreateUrlLabel;
#if aero == 0 || aero == 1
  SubclassControlsProc(WizardForm, True);
#elif aero == 2
  SubclassControlsProc(WizardForm.MainPanel, True);
#elif aero == 3
  SubclassControlsProc(WizardForm, False);
#elif aero == 4
  SubclassControlsProc(WizardForm, False);
  SubclassControlsProc(WizardForm.MainPanel, True);
#endif
#if aero == 1
  SetDlgHook;
#endif
end;

/////////////////////////////////////////////
procedure CurPageChanged(CurPageID: Integer);
var
  i, j: Integer;
  bUpdate: Boolean;
begin
  case CurPageID of
    wpLicense:
      begin
        WizardForm.NextButton.Caption := CustomMessage('LicenseAccept');
        WizardForm.CancelButton.Caption := CustomMessage('LicenseNotAccept');
      end;
    wpSelectComponents:
      WizardForm.NextButton.SetFocus;
    StylesPage.ID:
      with StylesPage.CheckListBox do
      begin
      #if AppSkinUp == "0"
        bUpdate := not IsUpdate;
      #else
        bUpdate := True;
      #endif
        for i := 0 to GetArrayLength(g_StylesHelper) - 1 do
        case g_StylesHelper[i].szInternalName of
          { enabled/disabled skins }
        #if AppSkinUp == "0"
          'SkinDefaultMirLight',
          'SkinDefaultWinLight':
            ItemEnabled[i] := bUpdate;
        #endif
//          'SkinDiplomatDark':
//            ItemEnabled[i] := IsComponentSelected('resources\themes\diplomatd') and bUpdate;
//          'SkinDiplomatLight':
//            ItemEnabled[i] := IsComponentSelected('resources\themes\diplomatl') and bUpdate;
          'SkinGlamourDark':
            ItemEnabled[i] := IsComponentSelected('resources\themes\glamourd') and bUpdate;
          'SkinGlamourLight':
            ItemEnabled[i] := IsComponentSelected('resources\themes\glamourl') and bUpdate;
//          'SkinGoldtimeDark':
//            ItemEnabled[i] := IsComponentSelected('resources\themes\goldtimed') and bUpdate;
//          'SkinGoldtimeLight':
//            ItemEnabled[i] := IsComponentSelected('resources\themes\goldtimel') and bUpdate;
          'SkinGraphiteDark':
            ItemEnabled[i] := IsComponentSelected('resources\themes\graphited') and bUpdate;
          'SkinGraphiteLight':
            ItemEnabled[i] := IsComponentSelected('resources\themes\graphitel') and bUpdate;
          'SkinPhotooneDark':
            ItemEnabled[i] := IsComponentSelected('resources\themes\photooned') and bUpdate;
          'SkinPhotooneLight':
            ItemEnabled[i] := IsComponentSelected('resources\themes\photoonel') and bUpdate;
          'SkinSurfaceBlack':
            ItemEnabled[i] := IsComponentSelected('resources\themes\surfaceb') and bUpdate;
          'SkinSurfaceWhite':
            ItemEnabled[i] := IsComponentSelected('resources\themes\surfacew') and bUpdate;
          'SkinTextoliteDark':
            ItemEnabled[i] := IsComponentSelected('resources\themes\textolited') and bUpdate;
          'SkinTextoliteLight':
            ItemEnabled[i] := IsComponentSelected('resources\themes\textolitel') and bUpdate;
          'SkinWinstyleDark':
            ItemEnabled[i] := IsComponentSelected('resources\themes\winstyled') and bUpdate;
          'SkinWinstyleLight':
            ItemEnabled[i] := IsComponentSelected('resources\themes\winstylel') and bUpdate;

          { enabled/disabled IEView settings }
          'IEViewAnimation',
          'IEViewAvatar',
          'IEViewShortLink':
            ItemEnabled[i] := IsComponentSelected('resources\ieview');

//          { enabled/disabled Font settings }
//          'FontHandwriting',
//          'FontPrinting':
//            ItemEnabled[i] := IsComponentSelected('resources\ieview');
        end;
      end;
    wpSelectTasks:
      if IsPortableSetupType and (WizardForm.TasksList.Tag = 0) then
      begin
        { load previous tasks }
        with TStringList.Create do
        try
          CommaText := ExpandConstant('{ini:{app}\profiles\{#AppINI},{#AppNameSetup},SelectedTasks|{#SelectedTasksDefault}}');
          for i := 0 to Count - 1 do
          begin
            for j := 0 to GetArrayLength(g_TasksHelper) - 1 do
              if CompareText(Strings[i], g_TasksHelper[j].szInternalName) = 0 then
              begin
                Strings[i] := g_TasksHelper[j].szName;
                Break;
              end;
          end;
          if Count > 0 then
          begin
            for i := WizardForm.TasksList.ItemCount - 1 downto 0 do
              WizardForm.TasksList.Checked[i] := (Pos(Format('%s'#13#10, [WizardForm.TasksList.ItemCaption[i]]), Text) > 0);
          end;
        finally
          Free;
        end;

        { store flag }
        WizardForm.TasksList.Tag := 1;
      end;
    PreparePage.ID:
      begin
        PreparePage.Values[0] := True;
        PreparePageOnClickCheck(PreparePage.CheckListBox);
      end;
#if freezecheckbox == 1
    wpFinished:
      WizardForm.RunList.ItemEnabled[2] := False;
#endif
    wpInfoAfter,
    wpFinished:
      WizardForm.BackButton.Show;
  end;

#if aero == 2 || aero == 4
  if g_fEnabled then
    case CurPageID of
      wpWelcome,
      wpFinished:
        PostMessage(WizardForm.Handle, WM_DWMNCRENDERINGCHANGED, 1, 1);
    else
      PostMessage(WizardForm.Handle, WM_DWMNCRENDERINGCHANGED, 1, 2);
    end;
#endif

  { update buttons on aero glass }
  if g_fEnabled then
  begin
    WizardForm.BackButton.Invalidate;
    WizardForm.NextButton.Invalidate;
    WizardForm.CancelButton.Invalidate;
  end;
end;

//////////////////////////////////////////////////////////////////////////////
procedure CancelButtonClick(CurPageID: Integer; var Cancel, Confirm: Boolean);
begin
  case CurPageID of
    wpLicense:
      Confirm := False;
  end;
end;

//////////////////////////////////////////////////////
function BackButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;
  case CurPageID of
    wpSelectDir:
      begin
        if IsDefaultSetupType then
          CheckDefaultInstall;
        if IsPortableSetupType then
          CheckPortableInstall;
      end;
    SettingsPage.ID:
      begin
        Result := (SettingsPageControl.ActivePage = SettingsPageControl.Pages[0]);
        if not Result then
          SettingsPageControl.SelectNextPage(True);
      end;
    wpInfoAfter:
      begin
        WizardForm.InstallingPage.Show;
        if DetailsButton.Caption = CustomMessage('SetupShowDetails') then
          DetailsButton.Click;
        WizardForm.BackButton.Hide;
      end;
  end;
end;

/////////////////////////////////
procedure UninstallPortableFiles;
var
  i: Integer;
  szFiles: string;
begin
  if FileExists(ExpandConstant('{app}\profiles\{#AppINI}')) then
  with TStringList.Create do
  try
    LoadFromFile(ExpandConstant('{app}\profiles\{#AppINI}'));
    for i := 0 to Count - 1 do
      if CompareText(Names[i], 'UninstallFiles') = 0 then
      begin
        szFiles := Values[Names[i]];
        Break;
      end;
    if szFiles <> '' then
    begin
      Clear;
      CommaText := szFiles;
      for i := 0 to Count - 1 do
        DeleteFile(ExpandConstant(Strings[i]));
    end;
  finally
    Free;
  end;
end;

//////////////////////////////////////////////////////
function NextButtonClick(CurPageID: Integer): Boolean;
var
  i, ResultCode: Integer;
  szUninstallString: string;
begin
  Result := True;
  case CurPageID of
    InstallTypePage.ID:
      begin
        { default install }
        if IsDefaultSetupType then
        begin
          if IsUpdate then
          begin
            WizardForm.DirEdit.Text := GetSetupPreviousDataEx('InstallLocation', '');    // restore previous path
            for i := 0 to g_DriveListView.Items.Count - 1 do
              if Pos(Lowercase(RemoveBackslash(ExtractFileDrive(WizardForm.DirEdit.Text))), Lowercase(g_DriveListView.Items.Item[i].Caption)) > 0 then
              begin
                  g_DriveListView.Selected := g_DriveListView.Items.Item[i];
                  Break;
              end;
            ReadStandartSettings;
          end;
        end;

        { portable install }
        if IsPortableSetupType then
        begin
          if not IsUpdate and (CompareText(szPreviousSelectedPortableAppPath, RemoveQuotes(WizardDirValue)) <> 0) then
          begin
            g_DriveListView.Items.Item[g_DriveListView.Items.Count - 1].Selected := True;
            DriveListViewOnClick(g_DriveListView);
          end;
        end;

        { uninstall }
        if IsUninstallSetupType then
        begin
          { release mutex }
          ReleaseMutex(g_hMutex);
          CloseHandle(g_hMutex);

          { call uninstall }
          szUninstallString := GetSetupPreviousData('UninstallString', '');
          if Exec('>', szUninstallString, '', SW_SHOW, ewWaitUntilTerminated, ResultCode) then
            WaitUninstaller(szUninstallString);

          { create mutex }
          g_hMutex := _CreateMutex(0, False, '{#SetupSetting("AppId")}AppMutex');

          { unload hive }
          if BOOL(ResultCode = 0) and g_bLoadAppOppKey then
            UnLoadAppOppositeKey;

          { update UI }
          if ResultCode = 0 then
          begin
            DefaultInstallType.Checked := True;
            DefaultInstallType.Enabled := True;
            DefaultInstallTypeBitmapImage.Enabled := True;
            DefaultInstallTypeCaption.Enabled := True;
            DefaultInstallTypeCaption.Caption := FmtMessage(CustomMessage('DefaultInstallTypeCaption'), [ExtractFileName(ExpandConstant('{userappdata}'))]);    // default caption
            DefaultUninstallType.Enabled := False;
            DefaultUninstallTypeBitmapImage.Enabled := False;
            DefaultUninstallTypeCaption.Enabled := False;
            DefaultUninstallTypeCaption.Invalidate;
            WizardForm.Caption := FmtMessage(SetupMessage(msgSetupWindowTitle), ['{#AppName}']);
            WizardForm.TypesCombo.Enabled := True;
            WizardForm.TypesCombo.Color := clWindow;
            WizardForm.TypesCombo.Font.Color := clWindowText;
          end;

          Result := False;
        end;
      end;
    wpSelectDir:
      begin
        if Pos('miranda', Lowercase(WizardDirValue)) = 0 then
          Result := MsgBox(CustomMessage('NotMirandaFolderNameError'), mbError, MB_OK) = IDOK;                    // error when not "miranded" dir name select
        case ErrorHelper of
          { default select }
          'PortableDirSelectError':
            Result := MsgBox(CustomMessage('PortableDirSelectError'), mbCriticalError, MB_OK) <> IDOK;          // error when portable location dir select
          'RestoreStandartSettings':
            ReadStandartSettings;

          { portable select }
          'DefaultDirSelectError':
            Result := MsgBox(CustomMessage('DefaultDirSelectError'), mbCriticalError, MB_OK) <> IDOK;           // error when default location dir select
          'OtherVerDirSelectError':
            Result := MsgBox(CustomMessage('OtherVerDirSelectError'), mbCriticalError, MB_OK) <> IDOK;          // not HotCoffee installation
          'FoundVerNotUpdatableConfirm':
            begin
              if MsgBox(CustomMessage('FoundVerNotUpdatableConfirm'), mbConfirmation, MB_YESNO) = IDYES then  // portable update not allowed
              begin
                // close application
                TerminateApp(GetFilesInUse(ExpandConstant('{app}'), nil), 5000);

                // delete app dir
                DelTree(ExpandConstant('{app}'), True, True, True);

                // set default portable settings
                ReadPortableSettings('RestorePortableSettings');
              end
              else
                Result := False;
            end;
          'FoundPortableVerUpdateActivateInfo':
            ReadPortableSettings('FoundPortableVerUpdateActivateInfo');
          'RestorePortableSettings':
            ReadPortableSettings('RestorePortableSettings');
        end;
      end;
    SettingsPage.ID:
      begin
        Result := (SettingsPageControl.ActivePage = SettingsPageControl.Pages[SettingsPageControl.PageCount - 1]);
        if not Result then
          SettingsPageControl.SelectNextPage(False);
      end;
    PreparePage.ID:
      begin
        if PreparePage.Values[0] then
          TerminateApp(GetFilesInUse(ExpandConstant('{app}'), nil), 5000);
      end;
  end;
end;

//////////////////////////////////////////////
procedure CurStepChanged(CurStep: TSetupStep);
var
  i, j, ResultCode: Integer;
  szWorkingDir, szUninstallString: string;
begin
  case CurStep of
    ssInstall:
      begin
        { update UI }
        WizardForm.StatusLabel.Caption := CustomMessage('PrepareToInstallMsg');
        WizardForm.ProgressGauge.Style := npbstMarquee;
        DetailsButton.Hide;
        SetupDone.Hide;

        { default type selected }
        if IsDefaultSetupType then
        begin
          if IsUpdate then
          begin
            { release mutex }
            ReleaseMutex(g_hMutex);
            CloseHandle(g_hMutex);

            { call uninstaller }
            szUninstallString := GetSetupPreviousDataEx('UninstallString', '');
            if Exec(szUninstallString, '/VERYSILENT /UPDATE=1', '', SW_HIDE, ewWaitUntilTerminated, ResultCode) then
              WaitUninstaller(szUninstallString);

            { create mutex }
            g_hMutex := _CreateMutex(0, False, '{#SetupSetting("AppId")}AppMutex');
          end;

          { unload hive }
          if g_bLoadAppOppKey then
            UnLoadAppOppositeKey;
        end;

        { portable type selected }
        if IsPortableSetupType then
        begin
          // close application
          TerminateApp(GetFilesInUse(ExpandConstant('{app}'), nil), 5000);

          // delete updatable app dir
          UninstallPortableFiles;
        end;

        { message if find incompatible files after opposite update }
        if IsWin64 then
        begin
          szWorkingDir := GetCurrentDir;
        #if AppArch == "x86"
          if SortOppositeFiles(ExpandConstant('{app}'), ExpandConstant('{#IncompatibleDir}\x64'), '{#ExcludeList}') then
        #elif AppArch == "x64"
          if SortOppositeFiles(ExpandConstant('{app}'), ExpandConstant('{#IncompatibleDir}\x86'), '{#ExcludeList}') then
        #endif
            MsgBox(CustomMessage('ArchIncompatibleInfo'), mbInformation, MB_OK);
          SetCurrentDir(szWorkingDir);
        end;

        { update UI }
        WizardForm.ProgressGauge.Style := npbstNormal;
        DetailsButton.Show;
        SetupDone.Show;

        { timer on }
        PercentTimer.Enabled := True;
      end;
    ssPostInstall:
      begin
        { timer off }
        PercentTimer.Enabled := False;

        { update UI }
        DetailsMemo.Lines.Add(CustomMessage('SetupDone'));

        { pin to TaskBar }
        if IsTaskSelected('pintotaskbar') then
          PinToTaskbar(ExpandConstant('{app}\{#AppExeName}'), True);

        { pin to StartMenu }
        if IsTaskSelected('pintostartmenu') then
          PinToStartMenu(ExpandConstant('{app}\{#AppExeName}'), True);

        { portable mode }
        if IsPortableSetupType then
        begin
          // create {#AppINI}
          SetIniString('{#AppNameSetup}', 'AppVerBuild', '{#AppVer}', ExpandConstant('{app}\profiles\{#AppINI}'));
          SetIniString('{#AppNameSetup}', 'SetupType', g_TypesHelper[WizardForm.TypesCombo.ItemIndex].szInternalName, ExpandConstant('{app}\profiles\{#AppINI}'));
          SetIniString('{#AppNameSetup}', 'SelectedComponents', WizardSelectedComponents(False), ExpandConstant('{app}\profiles\{#AppINI}'));
          with TStringList.Create do
          try
            for i := 0 to WizardForm.ComponentsList.ItemCount - 1 do
              if not WizardForm.ComponentsList.Checked[i] then
                Add(g_ComponentsHelper[i].szInternalName);
            SetIniString('{#AppNameSetup}', 'DeselectedComponents', CommaText, ExpandConstant('{app}\profiles\{#AppINI}'));
          finally
            Free;
          end;
          SetIniString('{#AppNameSetup}', 'SelectedTasks', WizardSelectedTasks(False), ExpandConstant('{app}\profiles\{#AppINI}'));

          { settings }
          with TStringList.Create do
          try
            // selected
            for i := 0 to SettingsPage.CheckListBox.ItemCount - 1 do
              if SettingsPage.CheckListBox.Checked[i] then
                Add(g_SetHelper[i].szInternalName);
            SetIniString('{#AppNameSetup}', 'SelectedSettings', CommaText, ExpandConstant('{app}\profiles\{#AppINI}'));

            // deselected
            Clear;
            for i := 0 to SettingsPage.CheckListBox.ItemCount - 1 do
              if not SettingsPage.CheckListBox.Checked[i] then
                Add(g_SetHelper[i].szInternalName);
            SetIniString('{#AppNameSetup}', 'DeselectedSettings', CommaText, ExpandConstant('{app}\profiles\{#AppINI}'));
          finally
            Free;
          end;

          { additional settings }
          for i := 0 to AddSettingsListBox.Items.Count - 1 do
            if AddSettingsListBox.Items.Objects[i] is TNewComboBox then
            with TStringList.Create do
            try
              CommaText := g_AddSetHelper[i].szInternalValues;
              for j := 0 to Count - 1 do
                if CompareText(CustomMessage(Strings[j]), TNewComboBox(AddSettingsListBox.Items.Objects[i]).Text) = 0 then
                begin
                  SetIniString('{#AppNameSetup}', g_AddSetHelper[i].szInternalName, Strings[j], ExpandConstant('{app}\profiles\{#AppINI}'));
                  Break;
                end;
            finally
              Free;
            end;

          { style settings }
          with TStringList.Create do
          try
            // selected
            for i := 0 to StylesPage.CheckListBox.ItemCount-1 do
              if StylesPage.CheckListBox.Checked[i] then
                Add(g_StylesHelper[i].szInternalName);
            SetIniString('{#AppNameSetup}', 'SelectedStyleSettings', CommaText, ExpandConstant('{app}\profiles\{#AppINI}'));

            // deselected
            Clear;
            for i := 0 to StylesPage.CheckListBox.ItemCount - 1 do
              if not StylesPage.CheckListBox.Checked[i] then
                Add(g_StylesHelper[i].szInternalName);
            SetIniString('{#AppNameSetup}', 'DeselectedStyleSettings', CommaText, ExpandConstant('{app}\profiles\{#AppINI}'));
          finally
            Free;
          end;

            { uninstall files }
            if IsTaskSelected('curuser') and IsTaskSelected('desktopicon') then
              g_UninstallFilesHelper.Add('{userdesktop}\{#AppName}.lnk');
            if IsTaskSelected('quicklaunchicon') then
              g_UninstallFilesHelper.Add('{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}.lnk');
            if IsTaskSelected('curuser') and IsTaskSelected('autorun') then
              g_UninstallFilesHelper.Add('{userstartup}\{#AppLnk}.lnk');
            if not IsTaskSelected('pintotaskbar') then
              PinToTaskbar(ExpandConstant('{app}\{#AppExeName}'), False);
            if not IsTaskSelected('pintostartmenu') then
              PinToStartMenu(ExpandConstant('{app}\{#AppExeName}'), False);
            g_UninstallFilesHelper.Add('{app}\profiles\{#AppINI}');
            SetIniString('{#AppNameSetup}', 'UninstallFiles', g_UninstallFilesHelper.CommaText, ExpandConstant('{app}\profiles\{#AppINI}'));
        end;
      end;
  end;
end;

//////////////////////////////////////////////////
function ShouldSkipPage(PageID: Integer): Boolean;
begin
  case PageID of
    wpSelectDir:
      Result := IsUpdate and IsDefaultSetupType;
    wpSelectProgramGroup:
      begin
        Result := IsPortableSetupType;
        if Result then
          WizardForm.NoIconsCheck.Checked := True;
      end;
    PreparePage.ID:
      Result := GetFilesInUse(ExpandConstant('{app}'), g_PrepareListView) = '';
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo, MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: string): string;
begin
  if IsDefaultSetupType then
    Result := MemoDirInfo + NewLine + NewLine + MemoTypeInfo + NewLine + NewLine + MemoComponentsInfo + NewLine + NewLine + MemoGroupInfo + NewLine + NewLine + MemoTasksInfo;
  if IsPortableSetupType then
    Result := MemoDirInfo + NewLine + NewLine + MemoTypeInfo + NewLine + NewLine + MemoComponentsInfo;
end;

/////////////////////////////////////////////////////////
procedure RegisterPreviousData(PreviousDataKey: Integer);
var
  i, j: Integer;
begin
  { save settings }
  with TStringList.Create do
  try
    // selected
    for i := 0 to SettingsPage.CheckListBox.ItemCount - 1 do
      if SettingsPage.CheckListBox.Checked[i] then
        Add(g_SetHelper[i].szInternalName);
    SetPreviousData(PreviousDataKey, 'SelectedSettings', CommaText);

    // deselected
    Clear;
    for i := 0 to SettingsPage.CheckListBox.ItemCount - 1 do
      if not SettingsPage.CheckListBox.Checked[i] then
        Add(g_SetHelper[i].szInternalName);
    SetPreviousData(PreviousDataKey, 'DeselectedSettings', CommaText);
  finally
    Free;
  end;

  { save additional settings }
  for i := 0 to AddSettingsListBox.Items.Count - 1 do
    if AddSettingsListBox.Items.Objects[i] is TNewComboBox then
    with TStringList.Create do
    try
      CommaText := g_AddSetHelper[i].szInternalValues;
      for j := 0 to Count - 1 do
        if CompareText(CustomMessage(Strings[j]), TNewComboBox(AddSettingsListBox.Items.Objects[i]).Text) = 0 then
        begin
          SetPreviousData(PreviousDataKey, g_AddSetHelper[i].szInternalName, Strings[j]);
          Break;
        end;
    finally
      Free;
    end;

  { save style settings }
  with TStringList.Create do
  try
    // selected
    for i := 0 to StylesPage.CheckListBox.ItemCount - 1 do
      if StylesPage.CheckListBox.Checked[i] then
        Add(g_StylesHelper[i].szInternalName);
    SetPreviousData(PreviousDataKey, 'SelectedStyleSettings', CommaText);

    // deselected
    Clear;
    for i := 0 to StylesPage.CheckListBox.ItemCount - 1 do
      if not StylesPage.CheckListBox.Checked[i] then
        Add(g_StylesHelper[i].szInternalName);
    SetPreviousData(PreviousDataKey, 'DeselectedStyleSettings', CommaText);
  finally
    Free;
  end;
end;

////////////////////////////////////////////////////////////////////
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var
  i, ResultCode: Integer;
begin
	case CurUninstallStep of
    usAppMutexCheck:
      begin
        { get profiles dir path }
        szProfilesPath := GetProfileDir(ExpandConstant('{app}\profiles'));

        { close application }
        if UninstallSilent then
          TerminateApp(GetFilesInUse(ExpandConstant('{app}'), nil), 5000);
        if not UninstallSilent then if msgConfirmUninstall then
        begin
          TerminateApp(GetFilesInUse(ExpandConstant('{app}'), nil), 5000);
          if MsgBox(CustomMessage('DeleteUserProfiles'), mbConfirmation, MB_YESNO) = IDNO then
            BackupProfiles;
        end;

        { delete shortcuts }
        with TStringList.Create do
        try
          Sorted := True;
          CommaText := GetSetupPreviousData('Inno Setup: Selected Tasks', '');
          if Find('alluser', i) and Find('quicklaunchicon', i) then
            DeleteQLShortcuts;
          if Find('curuser', i) and Find('pintotaskbar', i) then
            PinToTaskbar(ExpandConstant('{app}\{#AppExeName}'), False);
          if Find('pintostartmenu', i) then
            PinToStartMenu(ExpandConstant('{app}\{#AppExeName}'), False);
        finally
          Free;
        end;
      end;
    usPostUninstall:
      { delete profiles dir }
      if ExpandConstant('{param:UPDATE|}') <> '1' then
      begin
        DelTree(ExpandConstant('{#IncompatibleDir}'), True, True, True);
        DelTree(szProfilesPath, True, True, True);
        RemoveDir(ExtractFileDir(szProfilesPath));
      end;
    usDone:
      { open folders }
      if DirExists(Format('%s\backups', [ExtractFileDir(szProfilesPath)])) then
        ShellExec('open', Format('%s\backups', [ExtractFileDir(szProfilesPath)]), '', '', SW_SHOW, ewNoWait, ResultCode)
      else if not UninstallSilent and DirExists(ExpandConstant('{app}')) then
        ShellExec('open', ExpandConstant('{app}'), '', '', SW_SHOW, ewNoWait, ResultCode);
	end;
end;

//////////////////////////////////////
function InitializeUninstall: Boolean;
begin
  Result := True;

  { initialize GdiPlus }
  InitializeGdiPlus;
#if aero == 1
  { set dialog hook }
  SetDlgHook;
#endif
end;

//////////////////////////////////////////
procedure InitializeUninstallProgressForm;
begin
  { settings }
  with UninstallProgressForm do
  begin
    DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', 0);
    WizardSmallBitmapImage.Left := MainPanel.ClientWidth - WizardSmallBitmapImage.Width - ScaleX(5);
    PageNameLabel.Width := WizardSmallBitmapImage.Left - PageNameLabel.Left - ScaleX(5);
    PageDescriptionLabel.Width := WizardSmallBitmapImage.Left - PageDescriptionLabel.Left - ScaleX(5);
  end;

  { subclass }
#if aero == 0 || aero == 1
  SubclassControlsProc(UninstallProgressForm, True);
#elif aero == 2
  SubclassControlsProc(UninstallProgressForm.MainPanel, True);
#elif aero == 3
  SubclassControlsProc(UninstallProgressForm, False);
#elif aero == 4
  SubclassControlsProc(UninstallProgressForm, False);
  SubclassControlsProc(UninstallProgressForm.MainPanel, True);
#endif
end;

////////////////////////////
procedure DeinitializeSetup;
begin
  if ExpandConstant('{wizardhwnd}') = '0' then Exit;

  { unsubclass }
#if aero == 2
  UnSubclassControlsProc(WizardForm.MainPanel);
#else
  UnSubclassControlsProc(WizardForm);
#endif
  SetArrayLength(g_AeroControls, 0);
  ReleaseThemeHandles;
#if aero == 1
  { unhook dialog }
  UnHookDlg;
#endif
  { deinitialize GdiPlus }
  GdiplusShutdown(g_pToken);

  { free resources }
  if Assigned(ThumbsBitmapImage) then
    ThumbsBitmapImage.Free;
  if g_GlassRgn <> 0 then
    DeleteObject(g_GlassRgn);

  { release mutex }
  ReleaseMutex(g_hMutex);
  CloseHandle(g_hMutex);

  { unload registry }
  if g_bLoadAppOppKey then
    UnLoadAppOppositeKey;
#if debug == 1
  ReleaseDC(0, g_hDC);
#endif
end;

////////////////////////////////
procedure DeinitializeUninstall;
begin
#if aero == 1
  { unhook }
  UnHookDlg;
#endif
  { deinitialize GdiPlus }
  GdiplusShutdown(g_pToken);
end;

///////////////////////////////////////////
//function BoolToStr(Value: Boolean): string;
//begin
//	if Value then
//		Result := 'true'
//	else
//		Result := 'false';
//end;

//function FormatIEJSON(Param: string): string;
//var
//	Font: string;
//begin
//	if IsStyleChecked('FontPrinting') then
//		Font := 'printing'
//	else
//		Font := 'handwriting';
//	Result := Format(
//    'u{"animation":{"enable":%s,"on_window_open":false},' +
//    '"avatars":{"enable":%s},' +
//    '"files":{"inbox":"/inbox/"},' +
//    '"font":{"change_size_button":1,"name":"%s"},' +
//    '"media":{"enable":1,"images_preview":1,"inline_images":{"maxheight":200,"maxwidth":300},"video":{"external_window":{"enable":0,"height":600,"width":800}}},' +
//    '"shortlink":{"global":%3:s,"localy":%3:s},' +
//    '"tooltipify":{"animationDuration":150,"animationOffset":0,"animationProperty":"top","displayAware":1,"opacity":1,"position":"bottom"},' +
//    '"tZers":{"autoplay":0,"enable":1,"only_supported_protos":0},' +
//    '"version":"2.1.3"}', [
//      BoolToStr(IsStyleChecked('IEViewAnimation')),
//      BoolToStr(IsStyleChecked('IEViewAvatar')),
//      Font,
//      BoolToStr(IsStyleChecked('IEViewShortLink'))]
//    );
//end;

////////////////////
procedure Extract();
var
rs: integer;
strFile: String;
begin
  strFile := ExpandConstant(CurrentFileName);
  if not FileExists(ExpandConstant('{tmp}\7za.exe')) then ExtractTemporaryFile('7za.exe');
  Exec(ExpandConstant('{tmp}\7za.exe'), ' x '+'"'+ExpandConstant(strFile)+'" -y -o'+'"'+ExpandConstant(ExtractFilePath(strFile))+'"', '', SW_Hide, ewWaitUntilTerminated, rs);
  DeleteFile(ExpandConstant(strFile));
end;