program QBEDemo;

uses
  Vcl.Forms,
  uMainQBE in 'uMainQBE.pas' {frmMainQBE},
  uDM in 'uDM.pas' {dmBiolife: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainQBE, frmMainQBE);
  Application.CreateForm(TdmBiolife, dmBiolife);
  Application.Run;
end.
