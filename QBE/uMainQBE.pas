unit uMainQBE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, udm,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls;

type
  TfrmMainQBE = class(TForm)
    DBGrid1: TDBGrid;
    btnOpenQ: TButton;
    btnFilter: TButton;
    btnCancelFilter: TButton;
    BtnApplyFilter: TButton;
    btnInternalMemTable: TButton;
    mmoInternalFields: TMemo;
    mmoSQL: TMemo;
    DBGrid2: TDBGrid;
    tsGrids: TToggleSwitch;
    rgLanguage: TRadioGroup;
    btnDefined: TButton;
    btnSave: TButton;
    btnOpenFilter: TButton;
    procedure btnOpenQClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnCancelFilterClick(Sender: TObject);
    procedure BtnApplyFilterClick(Sender: TObject);
    procedure btnInternalMemTableClick(Sender: TObject);
    procedure tsGridsClick(Sender: TObject);
    procedure btnDefinedClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnOpenFilterClick(Sender: TObject);
    procedure rgLanguageClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowSQL;
    procedure ApplyLanguage;
  public
    { Public declarations }
  end;

var
  frmMainQBE: TfrmMainQBE;

implementation

{$R *.dfm}

uses
  FireDAC.Comp.QBE;

procedure TfrmMainQBE.ApplyLanguage;
begin
  if dmBiolife.qbeBiolife.State <> qsInactive  then
  begin
    ShowMessage ('The filter must be inactive to change language');
    Exit;
  end;
  

  case rgLanguage.ItemIndex of
    0 : dmBiolife.qbeBiolife.Language := qlAuto;
    1 : dmBiolife.qbeBiolife.Language := qlSQL;
    2 : dmBiolife.qbeBiolife.Language := qlFilter;
    else
      ShowMessage('No language chosen');
  end;
end;

procedure TfrmMainQBE.BtnApplyFilterClick(Sender: TObject);
begin

  //man kan i et felt skrive feks >1300 & <1500
  //eller >1300 | 1221

  
  dmBiolife.qbeBiolife.Post;

  ShowSQL;


end;

procedure TfrmMainQBE.btnOpenFilterClick(Sender: TObject);
begin
  dmBiolife.qbeBiolife.LoadFromFile('c:\temp\qbe.txt');
end;

procedure TfrmMainQBE.btnOpenQClick(Sender: TObject);
begin
  dmBiolife.qryBiolife.open;
  ShowSQL;
end;

procedure TfrmMainQBE.btnSaveClick(Sender: TObject);
begin
  dmBiolife.qbeBiolife.SaveToFile('c:\temp\qbe.txt');
end;

procedure TfrmMainQBE.rgLanguageClick(Sender: TObject);
begin  
  ApplyLanguage;
end;

procedure TfrmMainQBE.btnFilterClick(Sender: TObject);
begin

 // dmBiolife.qbeBiolife.Cancel;
//  ApplyLanguage;
  dmBiolife.qbeBiolife.Edit;
  ShowSQL;
end;

procedure TfrmMainQBE.btnCancelFilterClick(Sender: TObject);
begin
  dmBiolife.qbeBiolife.Cancel;
  ShowSQL;
end;

procedure TfrmMainQBE.ShowSQL;
begin
  mmoSQL.lines.Clear;
  mmoSQL.Lines.Add('SQL:');
  for var i  := 0 to dmBiolife.qryBiolife.SQL.Count - 1 do
    mmoSQL.Lines.Add(dmBiolife.qryBiolife.SQL[i]);
  mmoSQL.Lines.Add('---------------------');
  mmoSQL.Lines.Add(format('Filter: %s', [dmBiolife.qryBiolife.Filtered.ToString]));
  mmoSQL.Lines.Add(dmBiolife.qryBiolife.Filter);
end;

procedure TfrmMainQBE.tsGridsClick(Sender: TObject);
begin
  case tsGrids.State of
    tssOff: dmBiolife.qbeBiolife.QuerySource := nil ;
    tssOn: dmBiolife.qbeBiolife.QuerySource := dmBiolife.dsrcSecondGrid;
  end;
end;

procedure TfrmMainQBE.btnDefinedClick(Sender: TObject);
begin
  dmBiolife.qbeBiolife.Edit;
  dmBiolife.qbeBiolife.QBETable.EmptyDataSet;
  dmBiolife.qbeBiolife.QBETable.Append;
  dmBiolife.qbeBiolife.QBETable.FieldByName('LENGTH__CM_').AsString := '>80 & <100 ';

  dmBiolife.qbeBiolife.QBETable.FieldByName('COMMON_NAME').AsString := 'Y%';
  dmBiolife.qbeBiolife.QBETable.Post;
  dmBiolife.qbeBiolife.Post;
  ShowSQL;
end;

procedure TfrmMainQBE.btnInternalMemTableClick(Sender: TObject);
begin
  if dmBiolife.qbeBiolife.State in [TFDQBEState.qsActive] then
  begin
   var sl := TStringList.Create;
   try
     for var i := 0 to dmBiolife.qbeBiolife.QBETable.FieldCount - 1 do
       begin
         sl.Add(dmBiolife.qbeBiolife.QBETable.Fields[i].FieldName);
       end;
   finally
     mmoInternalFields.Lines.Assign(sl);
     sl.Free;
   end;
  end;
end;

end.
