unit uICefApp;

interface

uses uCommonTypes, uIBrowserWindow;

type
  ICEFApp = interface
    function Init: BOOL; safecall;
    function CreateBrowserWindow: IBrowserWindow; safecall;
    procedure Done; safecall;
    function GetIsInit: BOOL; safecall;

    property isInit: BOOL read GetIsInit;
  end;

implementation

end.
