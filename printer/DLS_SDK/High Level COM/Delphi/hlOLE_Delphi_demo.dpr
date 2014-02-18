program hlOLE_Delphi_demo;

uses
  Forms,
  hlOLE_Delphi_main in 'hlOLE_Delphi_main.pas' {fmMain},
  Dymo_TLB in 'Dymo_TLB.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Delphi High-Level OLE Demo';
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
