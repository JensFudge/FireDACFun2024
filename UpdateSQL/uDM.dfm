object dmCustomer: TdmCustomer
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object FDConDBDemos: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Public\Documents\Embarcadero\Studio\23.0\Sampl' +
        'es\Data\dbdemos.gdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=IB'
      'MonitorBy=Remote')
    ConnectedStoredUsage = []
    Connected = True
    LoginPrompt = False
    Left = 304
    Top = 224
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 232
    Top = 112
  end
  object FDQryCustomer: TFDQuery
    Connection = FDConDBDemos
    UpdateObject = updCustomer
    SQL.Strings = (
      'select * from customer'
      'WHERE '
      'DELETED IS NULL'
      'OR'
      'DELETED = FALSE'
      '')
    Left = 424
    Top = 144
  end
  object updCustomer: TFDUpdateSQL
    Connection = FDConDBDemos
    InsertSQL.Strings = (
      'INSERT INTO CUSTOMER'
      '(CUSTNO, COMPANY, ADDR1, ADDR2, CITY, '
      '  STATE, ZIP, COUNTRY, PHONE, FAX, '
      '  TAXRATE, CONTACT, LASTINVOICEDATE, DELETED, '
      '  CHANGEDBY)'
      
        'VALUES (:NEW_CUSTNO, :NEW_COMPANY, :NEW_ADDR1, :NEW_ADDR2, :NEW_' +
        'CITY, '
      '  :NEW_STATE, :NEW_ZIP, :NEW_COUNTRY, :NEW_PHONE, :NEW_FAX, '
      
        '  :NEW_TAXRATE, :NEW_CONTACT, :NEW_LASTINVOICEDATE, :NEW_DELETED' +
        ', '
      '  :NEW_CHANGEDBY)')
    ModifySQL.Strings = (
      'UPDATE CUSTOMER'
      
        'SET CUSTNO = :NEW_CUSTNO, COMPANY = :NEW_COMPANY, ADDR1 = :NEW_A' +
        'DDR1, '
      '  ADDR2 = :NEW_ADDR2, CITY = :NEW_CITY, STATE = :NEW_STATE, '
      '  ZIP = :NEW_ZIP, COUNTRY = :NEW_COUNTRY, PHONE = :NEW_PHONE, '
      
        '  FAX = :NEW_FAX, TAXRATE = :NEW_TAXRATE, CONTACT = :NEW_CONTACT' +
        ', '
      
        '  LASTINVOICEDATE = :NEW_LASTINVOICEDATE, DELETED = :NEW_DELETED' +
        ', '
      '  CHANGEDBY = '#39'JENS'#39
      'WHERE CUSTNO = :OLD_CUSTNO')
    DeleteSQL.Strings = (
      'UPDATE CUSTOMER'
      'SET DELETED = TRUE, '
      '  CHANGEDBY = '#39'JENS'#39
      'WHERE CUSTNO = :OLD_CUSTNO')
    FetchRowSQL.Strings = (
      
        'SELECT CUSTNO, COMPANY, ADDR1, ADDR2, CITY, STATE, ZIP, COUNTRY,' +
        ' PHONE, '
      '  FAX, TAXRATE, CONTACT, LASTINVOICEDATE, DELETED, CHANGEDBY'
      'FROM CUSTOMER'
      'WHERE CUSTNO = :OLD_CUSTNO')
    Left = 424
    Top = 240
  end
end
