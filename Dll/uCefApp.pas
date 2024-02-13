unit uCefApp;

interface

uses Unit2;

type
  ICEFApp = interface
    procedure Load; safecall;
    function CreateBrowserWindow: IBrowserWindow; safecall;
    function Unload; safecall;
  end;

  TCEFApp = class(TInterfacedObject, ICEFApp)
  protected
    procedure DoSomething; safecall;
    function GetDynData(const AFlags: DWORD): IData; safecall;
    function DoSomethingElse(AOptions: IOptions): BSTR; safecall;
  end;

implementation

{ TMyDLL }

procedure TMyDLL.DoSomething;
begin

end;

function TMyDLL.DoSomethingElse(AOptions: IOptions): BSTR;
begin

end;

function TMyDLL.GetDynData(const AFlags: DWORD): IData;
begin

end;

end.
