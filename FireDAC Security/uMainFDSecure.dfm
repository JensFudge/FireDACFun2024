object frmMainFDSecurity: TfrmMainFDSecurity
  Left = 0
  Top = 0
  Caption = 'frmMainFDSecurity'
  ClientHeight = 657
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 32
    Top = 128
    Width = 1009
    Height = 137
    DataSource = dsrcBiolife
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnOpen: TButton
    Left = 32
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Open Biolife'
    TabOrder = 1
    OnClick = btnOpenClick
  end
  object btnChangeSQL: TButton
    Left = 128
    Top = 80
    Width = 129
    Height = 25
    Caption = 'Open Customer'
    TabOrder = 2
    OnClick = btnChangeSQLClick
  end
  object mmoSQL: TMemo
    Left = 32
    Top = 329
    Width = 401
    Height = 137
    TabOrder = 3
  end
  object btnCustomSQL: TButton
    Left = 32
    Top = 298
    Width = 137
    Height = 25
    Caption = 'Custom SQL'
    TabOrder = 4
    OnClick = btnCustomSQLClick
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 472
    Width = 1009
    Height = 153
    DataSource = dsrcCustom
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object dsrcBiolife: TDataSource
    DataSet = dmSecurity.fdqryBiolife
    Left = 144
    Top = 24
  end
  object dsrcCustom: TDataSource
    DataSet = dmSecurity.fdqryCustom
    Left = 72
    Top = 488
  end
end
