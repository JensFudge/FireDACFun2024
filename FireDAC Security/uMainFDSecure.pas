unit uMainFDSecure;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, uDMSecurity, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TfrmMainFDSecurity = class(TForm)
    dsrcBiolife: TDataSource;
    DBGrid1: TDBGrid;
    btnOpen: TButton;
    btnChangeSQL: TButton;
    mmoSQL: TMemo;
    btnCustomSQL: TButton;
    DBGrid2: TDBGrid;
    dsrcCustom: TDataSource;
    procedure btnOpenClick(Sender: TObject);
    procedure btnChangeSQLClick(Sender: TObject);
    procedure btnCustomSQLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainFDSecurity: TfrmMainFDSecurity;

implementation

{$R *.dfm}

procedure TfrmMainFDSecurity.btnOpenClick(Sender: TObject);
begin
  //This is standard
  dmSecurity.fdqryBiolife.Close;
  dmSecurity.fdqryBiolife.Open;
end;

procedure TfrmMainFDSecurity.btnChangeSQLClick(Sender: TObject);
begin
  //This will fail, because the fdqryBiolife has AllowSQLChange set to false
  dmSecurity.fdqryBiolife.SQL.Clear;
  dmSecurity.fdqryBiolife.SQL.Text := 'select * from customer';
  dmSecurity.fdqryBiolife.Close;
  dmSecurity.fdqryBiolife.open;
end;

procedure TfrmMainFDSecurity.btnCustomSQLClick(Sender: TObject);
begin
  //The fdqrycustom component has the skDelete set to false in AllowedCommandKinds
  //So if the user enters a delete from statement, it will fail

  dmSecurity.fdqryCustom.SQL.Clear;
  dmSecurity.fdqryCustom.SQL.Assign(mmoSQL.Lines);
  dmSecurity.fdqryCustom.Close;
  dmSecurity.fdqryCustom.Open;

end;

end.
