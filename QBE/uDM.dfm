object dmBiolife: TdmBiolife
  Height = 480
  Width = 640
  object qryBiolife: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = fdConFishFacts
    SQL.Strings = (
      'select * from biolife')
    Left = 128
    Top = 200
  end
  object dsrcBiolife: TDataSource
    DataSet = qryBiolife
    Left = 296
    Top = 136
  end
  object dsrcSecondGrid: TDataSource
    Left = 448
    Top = 248
  end
  object fdConFishFacts: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Public\Documents\Embarcadero\Studio\23.0\Sampl' +
        'es\Data\dbdemos.gdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=iB')
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 88
    Top = 72
  end
  object qbeBiolife: TFDQBE
    DataSource = dsrcBiolife
    Left = 304
    Top = 224
  end
end
