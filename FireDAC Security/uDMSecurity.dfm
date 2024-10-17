object dmSecurity: TdmSecurity
  Height = 480
  Width = 640
  object FDConSecurity: TFDConnection
    Params.Strings = (
      'Database=C:\Data\FireDACFun2024\FireDAC Security\dbdemos.gdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=IB')
    ConnectedStoredUsage = []
    Left = 208
    Top = 136
  end
  object fdqryBiolife: TFDQuery
    Connection = FDConSecurity
    SecurityOptions.AllowSQLChange = False
    SQL.Strings = (
      'select * from biolife')
    Left = 120
    Top = 200
  end
  object fdqryCustom: TFDQuery
    Connection = FDConSecurity
    SecurityOptions.AllowedCommandKinds = [skUnknown, skSelect, skSelectForLock, skSelectForUnLock, skInsert, skMerge, skUpdate, skCreate, skAlter, skDrop, skStoredProc, skStoredProcWithCrs, skStoredProcNoCrs, skExecute, skStartTransaction, skCommit, skRollback, skSet, skSetSchema, skOther, skNotResolved]
    Left = 384
    Top = 256
  end
end
