object F_Login: TF_Login
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 180
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 72
    Height = 18
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 32
    Top = 75
    Width = 70
    Height = 18
    Caption = 'Password'
  end
  object edt_user: TEdit
    Left = 128
    Top = 21
    Width = 289
    Height = 26
    MaxLength = 50
    TabOrder = 0
  end
  object edt_psw: TEdit
    Left = 128
    Top = 72
    Width = 289
    Height = 26
    MaxLength = 50
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = edt_pswKeyPress
  end
  object btn_login: TButton
    Left = 32
    Top = 128
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Login'
    TabOrder = 2
    OnClick = btn_loginClick
  end
  object btn_batal: TButton
    Left = 342
    Top = 128
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Batal'
    TabOrder = 3
    OnClick = btn_batalClick
  end
  object crud: TFDQuery
    Connection = mnUtama.cn
    Left = 184
    Top = 120
  end
  object kue_login: TFDQuery
    Connection = mnUtama.cn
    Left = 248
    Top = 120
  end
end
