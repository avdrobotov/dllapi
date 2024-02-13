unit uMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uCommonTypes, uIBrowserWindow, uICefApp, uStaticLoadDllApi,
  StdCtrls;

type
  TfrmMainTestForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainTestForm: TfrmMainTestForm;

implementation

{$R *.dfm}

var
  Api : ICEFApp;

procedure TfrmMainTestForm.Button1Click(Sender: TObject);
begin
  if GetFunctions(Api) = S_OK then
  begin
    // MessageBox(0, PWideChar(Api.Data), 'Load', 0);
  end
  else
  begin
    MessageBox(0, 'Wrong', 'Load', 0);
  end;
end;

procedure TfrmMainTestForm.Button2Click(Sender: TObject);
var
  W: IBrowserWindow;
begin
  if Assigned(Api) then
  begin
    W := Api.CreateBrowserWindow;
    W.Show;
  end;
end;

end.

