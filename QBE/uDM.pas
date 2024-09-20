unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.QBE, FireDAC.Phys.IB, FireDAC.Phys.IBDef;

type
  TdmBiolife = class(TDataModule)
    qryBiolife: TFDQuery;
    dsrcBiolife: TDataSource;
    dsrcSecondGrid: TDataSource;
    fdConFishFacts: TFDConnection;
    qbeBiolife: TFDQBE;
    procedure FDQBE1AfterPost(Sender: TObject);
  private
    FmatchingRecordCount: integer;
    Fmatching: Boolean;
    procedure SetmatchingRecordCount(const Value: integer);
    procedure Setmatching(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    property matchingRecordCount : integer read FmatchingRecordCount write SetmatchingRecordCount;
    property matching : Boolean read Fmatching write Setmatching;
  end;

var
  dmBiolife: TdmBiolife;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmBiolife.FDQBE1AfterPost(Sender: TObject);
begin
  matching :=  qbeBiolife.DataSource.DataSet.Found;
end;

procedure TdmBiolife.Setmatching(const Value: Boolean);
begin
  Fmatching := Value;
end;

procedure TdmBiolife.SetmatchingRecordCount(const Value: integer);
begin
  FmatchingRecordCount := Value;
end;

end.
