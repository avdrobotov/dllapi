unit uStaticLoadDllApi;

interface

uses
  uCommonTypes, uIBrowserWindow, uICefApp;

function GetFunctions(out CEFApp: ICEFApp): HRESULT; stdcall; external 'ADApi.dll';

implementation

end.
