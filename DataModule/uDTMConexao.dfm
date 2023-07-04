object dtmConexao: TdtmConexao
  OldCreateOrder = False
  Height = 248
  Width = 480
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    SQLHourGlass = True
    HostName = '.\CURSOSERVER'
    Port = 0
    Database = 'VENDAS'
    User = 'sa'
    Password = 'Socram@22'
    Protocol = 'mssql'
    LibraryLocation = 'G:\Meu Drive\T.I\Sist_Delphi\ntwdblib.dll'
    Left = 56
    Top = 48
  end
end
