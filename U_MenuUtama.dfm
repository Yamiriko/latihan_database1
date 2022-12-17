object mnUtama: TmnUtama
  Left = 0
  Top = 0
  Caption = 'Aplikasi Biodata'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cn: TFDConnection
    Params.Strings = (
      'Database=coba'
      'User_Name=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 376
    Top = 136
  end
  object MainMenu1: TMainMenu
    Left = 272
    Top = 136
    object mnFile: TMenuItem
      Caption = 'File'
      object mn_login: TMenuItem
        Caption = 'Login'
        OnClick = mn_loginClick
      end
      object mnKeluar: TMenuItem
        Caption = 'Keluar'
        OnClick = mnKeluarClick
      end
    end
    object mnMaster: TMenuItem
      Caption = 'Master'
      object mn_bio_data: TMenuItem
        Caption = 'Bio Data'
        OnClick = mn_bio_dataClick
      end
      object mn_pengalaman_kerja: TMenuItem
        Caption = 'Pengalaman Kerja'
      end
      object mn_pendidikan: TMenuItem
        Caption = 'Pendidikan'
      end
    end
    object mnPengguna: TMenuItem
      Caption = 'Pengguna'
      object mn_data_pengguna: TMenuItem
        Caption = 'Data'
        OnClick = mn_data_penggunaClick
      end
      object mn_histori_pengguna: TMenuItem
        Caption = 'Histori'
        OnClick = mn_histori_penggunaClick
      end
      object mn_suspend_pengguna: TMenuItem
        Caption = 'Suspend'
        OnClick = mn_suspend_penggunaClick
      end
    end
    object mnBantuan: TMenuItem
      Caption = 'Bantuan'
      object mnTentang: TMenuItem
        Caption = 'Tentang'
        OnClick = mnTentangClick
      end
    end
  end
  object crud_histori: TFDQuery
    Connection = cn
    Left = 376
    Top = 88
  end
end
