object frmMainQBE: TfrmMainQBE
  Left = 0
  Top = 0
  Caption = 'Biolife Query By Example Demo'
  ClientHeight = 653
  ClientWidth = 1123
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 32
    Top = 74
    Width = 777
    Height = 217
    DataSource = dmBiolife.dsrcBiolife
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnOpenQ: TButton
    Left = 32
    Top = 297
    Width = 75
    Height = 25
    Caption = 'Open Query'
    TabOrder = 1
    OnClick = btnOpenQClick
  end
  object btnFilter: TButton
    Left = 128
    Top = 297
    Width = 75
    Height = 25
    Caption = 'Filter'
    TabOrder = 2
    OnClick = btnFilterClick
  end
  object btnCancelFilter: TButton
    Left = 216
    Top = 297
    Width = 75
    Height = 25
    Caption = 'Cancel Filter'
    TabOrder = 3
    OnClick = btnCancelFilterClick
  end
  object BtnApplyFilter: TButton
    Left = 304
    Top = 297
    Width = 75
    Height = 25
    Caption = 'Apply Filter'
    TabOrder = 4
    OnClick = BtnApplyFilterClick
  end
  object btnInternalMemTable: TButton
    Left = 815
    Top = 64
    Width = 242
    Height = 73
    Caption = 'Internal'#13#10'MemTable'
    TabOrder = 5
    OnClick = btnInternalMemTableClick
  end
  object mmoInternalFields: TMemo
    Left = 815
    Top = 143
    Width = 242
    Height = 106
    TabOrder = 6
  end
  object mmoSQL: TMemo
    Left = 32
    Top = 328
    Width = 509
    Height = 219
    TabOrder = 7
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 7
    Width = 777
    Height = 61
    DataSource = dmBiolife.dsrcSecondGrid
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object tsGrids: TToggleSwitch
    Left = 815
    Top = 19
    Width = 108
    Height = 20
    StateCaptions.CaptionOn = 'Extra Grid'
    StateCaptions.CaptionOff = 'Main Grid'
    TabOrder = 9
    OnClick = tsGridsClick
  end
  object rgLanguage: TRadioGroup
    Left = 545
    Top = 321
    Width = 185
    Height = 105
    Caption = ' Language '
    ItemIndex = 0
    Items.Strings = (
      'qlAuto'
      'qlSQL'
      'qlFilter')
    TabOrder = 10
    OnClick = rgLanguageClick
  end
  object btnDefined: TButton
    Left = 815
    Top = 255
    Width = 242
    Height = 36
    Caption = 'defined Filter'
    TabOrder = 11
    OnClick = btnDefinedClick
  end
  object btnSave: TButton
    Left = 385
    Top = 297
    Width = 75
    Height = 25
    Caption = 'SaveFilter'
    TabOrder = 12
    OnClick = btnSaveClick
  end
  object btnOpenFilter: TButton
    Left = 466
    Top = 297
    Width = 75
    Height = 25
    Caption = 'OpenFilter'
    TabOrder = 13
    OnClick = btnOpenFilterClick
  end
end
