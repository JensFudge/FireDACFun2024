program UpdateSQL;

uses
  Vcl.Forms,
  uMainUpdateSQL in 'uMainUpdateSQL.pas' {Form1},
  uDM in 'uDM.pas' {dmCustomer: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmCustomer, dmCustomer);
  Application.Run;
end.
