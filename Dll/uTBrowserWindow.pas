unit uTBrowserWindow;

interface

uses Vcl.Forms, System.SysUtils, uCommonTypes, uIBrowserWindow, uFrmBrowserWindow;

type
  TBrowserWindow = class(TInterfacedObject, IBrowserWindow)
  private
    frmBrowserWindow: TfrmBrowserWindow;
  protected
    procedure Show; safecall;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TBrowserWindow }

constructor TBrowserWindow.Create;
begin
  Application.CreateForm(TfrmBrowserWindow, frmBrowserWindow);
end;

destructor TBrowserWindow.Destroy;
begin
  FreeAndNil(frmBrowserWindow);
  inherited;
end;

procedure TBrowserWindow.Show;
begin
  if Assigned(frmBrowserWindow) then
  begin
    frmBrowserWindow.ShowModal;
  end;
end;

end.
