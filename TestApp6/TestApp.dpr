program TestApp;

uses
  Forms,
  uMainForm in 'uMainForm.pas' {frmMainTestForm},
  uStaticLoadDllApi in 'uStaticLoadDllApi.pas',
  uIBrowserWindow in '..\Dll\uIBrowserWindow.pas',
  uICefApp in '..\Dll\uICefApp.pas',
  uCommonTypes in '..\Dll\uCommonTypes.pas';

{$R *.res}

begin
  Application.Initialize;
  // Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainTestForm, frmMainTestForm);
  Application.Run;
end.
