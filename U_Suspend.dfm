object F_Suspend_Pengguna: TF_Suspend_Pengguna
  Left = 0
  Top = 0
  Caption = 'Suspend Pengguna Sistem'
  ClientHeight = 305
  ClientWidth = 548
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
    548
    305)
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 19
    Top = 90
    Width = 45
    Height = 13
    Caption = 'Cari Data'
  end
  object Label3: TLabel
    Left = 20
    Top = 11
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object edt_cari: TEdit
    Left = 70
    Top = 87
    Width = 147
    Height = 27
    AutoSize = False
    TabOrder = 4
    OnKeyPress = edt_cariKeyPress
  end
  object btn_cari: TButton
    Left = 223
    Top = 87
    Width = 75
    Height = 27
    Caption = 'Cari'
    TabOrder = 5
    OnClick = btn_cariClick
  end
  object btn_simpan: TButton
    Left = 20
    Top = 35
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Simpan'
    TabOrder = 1
    OnClick = btn_simpanClick
  end
  object btn_reset: TButton
    Left = 101
    Top = 35
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Reset'
    TabOrder = 2
    OnClick = btn_resetClick
  end
  object btn_kembali: TButton
    Left = 182
    Top = 35
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Kembali'
    TabOrder = 3
    OnClick = btn_kembaliClick
  end
  object cmb_status_akun: TComboBox
    Left = 57
    Top = 8
    Width = 200
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Aktif'
      'Suspend')
  end
  object dbg1: TDBGrid
    Left = 17
    Top = 120
    Width = 512
    Height = 169
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = ds
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbg1CellClick
  end
  object crud: TFDQuery
    Connection = mnUtama.cn
    Left = 328
    Top = 16
  end
  object ds: TDataSource
    AutoEdit = False
    DataSet = qw
    Left = 376
    Top = 16
  end
  object qw: TFDQuery
    Connection = mnUtama.cn
    Left = 328
    Top = 64
  end
end
