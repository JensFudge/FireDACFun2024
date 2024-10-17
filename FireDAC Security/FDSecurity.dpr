program FDSecurity;

uses
  Vcl.Forms,
  uMainFDSecure in 'uMainFDSecure.pas' {frmMainFDSecurity},
  uDMSecurity in 'uDMSecurity.pas' {dmSecurity: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainFDSecurity, frmMainFDSecurity);
  Application.CreateForm(TdmSecurity, dmSecurity);
  Application.Run;
end.
