{
Developt By Jean Riko Kurniawan Putra, S.Kom, M.Kom
Grup Diskusi Delphi Pekanbaru : https://t.me/delphipekanbaru
}

unit U_MenuUtama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  Vcl.Menus, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TmnUtama = class(TForm)
    cn: TFDConnection;
    MainMenu1: TMainMenu;
    mnFile: TMenuItem;
    mnKeluar: TMenuItem;
    mnMaster: TMenuItem;
    mn_bio_data: TMenuItem;
    mnPengguna: TMenuItem;
    mn_login: TMenuItem;
    mn_pengalaman_kerja: TMenuItem;
    mn_pendidikan: TMenuItem;
    mnBantuan: TMenuItem;
    mnTentang: TMenuItem;
    mn_data_pengguna: TMenuItem;
    mn_histori_pengguna: TMenuItem;
    mn_suspend_pengguna: TMenuItem;
    crud_histori: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mn_bio_dataClick(Sender: TObject);
    procedure mnKeluarClick(Sender: TObject);
    procedure mn_loginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mn_data_penggunaClick(Sender: TObject);
    procedure mn_histori_penggunaClick(Sender: TObject);
    procedure mn_suspend_penggunaClick(Sender: TObject);
    procedure mnTentangClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure level_operator;
    procedure level_admin;
    procedure kunci_menu;
    procedure update_histori_pengguna(const keterangan : string);
  end;

var
  mnUtama: TmnUtama;
  list_menu : TStringList;
  status_login : Boolean = False;
  pengguna_login : string = '';

implementation

uses
U_Biodata,ULogin,U_Pengguna,
U_Histori_Pengguna,U_Suspend,
U_Tentang;

{$R *.dfm}

procedure TmnUtama.update_histori_pengguna(const keterangan: string);
begin
  if ((Length(keterangan) <> 0)
  and (Length(pengguna_login) <> 0)) then
  begin
    with crud_histori do begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO tb_pengguna_histori');
      SQL.Add('(nm_pengguna,keterangan,tgl_wkt) ');
      SQL.Add('VALUES('+QuotedStr(pengguna_login)+',');
      SQL.Add(QuotedStr(keterangan)+',');
      SQL.Add('NOW())');
      ExecSQL;
      Close;
    end;
  end;
end;

procedure TmnUtama.level_operator;
begin
  {Untuk mengaktifkan menu berdasarkan level Operator
  Secara Otomatis}

  list_menu:=TStringList.Create;
  with list_menu do begin
    Add('mn_bio_data');
    Add('mn_pengalaman_kerja');
    Add('mn_pendidikan');
  end;
end;

procedure TmnUtama.level_admin;
var
  c,j : Integer;
begin
  {Untuk mengaktifkan menu berdasarkan level Admin
  Secara Otomatis}

  list_menu:=TStringList.Create;
  with list_menu do begin
    Add('mn_bio_data');
    Add('mn_pengalaman_kerja');
    Add('mn_pendidikan');
    Add('mn_data_pengguna');
    Add('mn_histori_pengguna');
    Add('mn_suspend_pengguna');
  end;

  with mnUtama do begin
    for c := 0 to ComponentCount - 1 do begin
      if Components[c] is TMenuItem then begin
        for j := 0 to list_menu.Count - 1 do begin
          if TMenuItem(Components[c]).Name = list_menu[j] then
          begin
            TMenuItem(Components[c]).Enabled:=True;
          end;
        end;
      end;
    end;
  end;
end;

procedure TmnUtama.kunci_menu;
var
  i : Integer;
begin
  {Prosedur untuk mengunci menu secara otomatis}

  with mnUtama do begin
    for i := 0 to ComponentCount - 1 do begin
      if Components[i] is TMenuItem then begin
        if ((TMenuItem(Components[i]).Name <> 'mnFile')
        and (TMenuItem(Components[i]).Name <> 'mn_login')
        and (TMenuItem(Components[i]).Name <> 'mnMaster')
        and (TMenuItem(Components[i]).Name <> 'mnPengguna')
        and (TMenuItem(Components[i]).Name <> 'mnBantuan')
        and (TMenuItem(Components[i]).Name <> 'mnKeluar')
        and (TMenuItem(Components[i]).Name <> 'mnTentang')) then
        begin
          TMenuItem(Self.Components[i]).Enabled:=False;
        end;
      end;
    end;
  end;
end;

procedure TmnUtama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cn.Connected:=False;
end;

procedure TmnUtama.FormCreate(Sender: TObject);
begin
  cn.Connected:=True;
end;

procedure TmnUtama.FormShow(Sender: TObject);
begin
  kunci_menu;
end;

procedure TmnUtama.mn_bio_dataClick(Sender: TObject);
begin
  F_Biodata.ShowModal;
end;

procedure TmnUtama.mn_data_penggunaClick(Sender: TObject);
begin
  F_Pengguna.ShowModal;
end;

procedure TmnUtama.mn_histori_penggunaClick(Sender: TObject);
begin
  f_histori_pengguna.ShowModal;
end;

procedure TmnUtama.mnKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TmnUtama.mnTentangClick(Sender: TObject);
begin
  F_Tentang.ShowModal;
end;

procedure TmnUtama.mn_loginClick(Sender: TObject);
begin
  if status_login=False then F_Login.ShowModal
  else if status_login=True then
  begin
    //Logout
    kunci_menu;
    mn_login.Caption:='Login';
    status_login:=False;
    pengguna_login:='';
  end;
end;

procedure TmnUtama.mn_suspend_penggunaClick(Sender: TObject);
begin
  F_Suspend_Pengguna.ShowModal;
end;

end.
