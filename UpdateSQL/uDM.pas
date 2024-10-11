unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Moni.Base, FireDAC.Moni.RemoteClient;

type
  TdmCustomer = class(TDataModule)
    FDConDBDemos: TFDConnection;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    FDQryCustomer: TFDQuery;
    updCustomer: TFDUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCustomer: TdmCustomer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmCustomer.DataModuleCreate(Sender: TObject);
begin
  FDConDBDemos.Params.Clear;
  //NOTE! I have not supplied the database file
  //you should have the database file here
  FDConDBDemos.Params.Add('Database=C:\Users\Public\Documents\Embarcadero\Studio\23.0\Samples\Data\dbdemos.gdb');
  //In my example I copied the database here
  //  FDConDBDemos.Params.Add('Database=..\..\dbdemos.gdb');
  FDConDBDemos.Params.Add('User_Name=sysdba');
  FDConDBDemos.Params.Add('Password=masterkey');
  FDConDBDemos.Params.Add('DriverID=IB');
  FDConDBDemos.Params.Add('MonitorBy=Remote');

  var IDidModifyTheDatabase : Boolean := False;
  if not IDidModifyTheDatabase then
    raise Exception.Create('You need to modify the dbdemos database to get this to work');


//  In order to get this demo to work you need to modify the dbdemos.gdb database (or a copy of it)
//  with
//  SQL ALTER TABLE Customer ADD DELETED BOOLEAN, ADD ChangedBy VARCHAR(50);

end;

end.
