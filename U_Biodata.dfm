object F_Biodata: TF_Biodata
  Left = 0
  Top = 0
  Caption = 'Biodata'
  ClientHeight = 326
  ClientWidth = 560
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
    560
    326)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 24
    Height = 13
    Caption = 'Kode'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 17
    Top = 75
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label4: TLabel
    Left = 16
    Top = 104
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Edit1: TEdit
    Left = 96
    Top = 13
    Width = 121
    Height = 21
    MaxLength = 25
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 45
    Width = 121
    Height = 21
    MaxLength = 50
    TabOrder = 1
  end
  object cmb_jk: TComboBox
    Left = 96
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'cmb_jk'
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object dtp1: TDateTimePicker
    Left = 96
    Top = 99
    Width = 121
    Height = 21
    Date = 44881.000000000000000000
    Time = 0.581503287037776300
    TabOrder = 3
  end
  object btn_simpan: TButton
    Left = 17
    Top = 136
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Simpan'
    TabOrder = 4
    OnClick = btn_simpanClick
  end
  object btn_ubah: TButton
    Left = 98
    Top = 136
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Ubah'
    TabOrder = 5
    OnClick = btn_ubahClick
  end
  object btn_hapus: TButton
    Left = 179
    Top = 136
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Hapus'
    TabOrder = 6
    OnClick = btn_hapusClick
  end
  object btn_reset: TButton
    Left = 260
    Top = 136
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Reset'
    TabOrder = 7
    OnClick = btn_resetClick
  end
  object btn_kembali: TButton
    Left = 341
    Top = 136
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Kembali'
    TabOrder = 8
    OnClick = btn_kembaliClick
  end
  object dbg1: TDBGrid
    Left = 17
    Top = 175
    Width = 528
    Height = 138
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = ds
    TabOrder = 9
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
  object qw: TFDQuery
    Connection = mnUtama.cn
    Left = 328
    Top = 64
  end
  object ds: TDataSource
    AutoEdit = False
    DataSet = qw
    Left = 376
    Top = 16
  end
end
