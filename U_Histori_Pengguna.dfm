object f_histori_pengguna: Tf_histori_pengguna
  Left = 0
  Top = 0
  Caption = 'Data Histori Pengguna'
  ClientHeight = 284
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    539
    284)
  PixelsPerInch = 96
  TextHeight = 13
  object dbg1: TDBGrid
    Left = 8
    Top = 8
    Width = 523
    Height = 268
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = ds
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object qw: TFDQuery
    Connection = mnUtama.cn
    Left = 397
    Top = 48
  end
  object ds: TDataSource
    AutoEdit = False
    DataSet = qw
    Left = 437
    Top = 48
  end
end
