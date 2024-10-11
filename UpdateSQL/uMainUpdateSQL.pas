unit uMainUpdateSQL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, uDM,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnOpenQuery: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure btnOpenQueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnOpenQueryClick(Sender: TObject);
begin
  dmCustomer.FDQryCustomer.Close;
  dmCustomer.FDQryCustomer.Open;
end;

end.
