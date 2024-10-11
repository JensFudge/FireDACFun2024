object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 597
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnOpenQuery: TButton
    Left = 88
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Open query'
    TabOrder = 0
    OnClick = btnOpenQueryClick
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 136
    Width = 929
    Height = 281
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = dmCustomer.FDQryCustomer
    Left = 384
    Top = 64
  end
end
