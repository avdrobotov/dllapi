unit uTCEFApp;

interface

uses System.SysUtils, uCommonTypes, uICefApp, uIBrowserWindow, uTBrowserWindow;

type
  TCEFApp = class(TInterfacedObject, ICEFApp)
  private
    fIsInit: BOOL;
  protected
    function Init: BOOL; safecall;
    function CreateBrowserWindow: IBrowserWindow; safecall;
    procedure Done; safecall;
    function GetIsInit: BOOL; safecall;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TCEFApp }

constructor TCEFApp.Create;
begin
  fIsInit := False;
end;

function TCEFApp.CreateBrowserWindow: IBrowserWindow;
begin
  try
    Result := TBrowserWindow.Create;

  except on E: Exception do
    begin
      // do nothing
    end;
  end;
end;

destructor TCEFApp.Destroy;
begin
  inherited;
end;

procedure TCEFApp.Done;
begin
  try
    if fIsInit then
    begin

    end;
  except on E: Exception do
    begin
      // do nothing
    end;
  end;
end;

function TCEFApp.GetIsInit: BOOL;
begin
  Result := fIsInit;
end;

function TCEFApp.Init: BOOL;
begin
  try
    if not fIsInit then
    begin
      fIsInit := True;
    end;
  except on E: Exception do
    begin
      // do nothing
    end;
  end;
end;

end.
