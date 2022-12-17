{
Developt By Jean Riko Kurniawan Putra, S.Kom, M.Kom
Grup Diskusi Delphi Pekanbaru : https://t.me/delphipekanbaru
}

unit U_Suspend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_Suspend_Pengguna = class(TForm)
    crud: TFDQuery;
    ds: TDataSource;
    qw: TFDQuery;
    Label5: TLabel;
    edt_cari: TEdit;
    btn_cari: TButton;
    btn_simpan: TButton;
    btn_reset: TButton;
    btn_kembali: TButton;
    Label3: TLabel;
    cmb_status_akun: TComboBox;
    dbg1: TDBGrid;
    procedure btn_cariClick(Sender: TObject);
    procedure edt_cariKeyPress(Sender: TObject; var Key: Char);
    procedure btn_resetClick(Sender: TObject);
    procedure dbg1CellClick(Column: TColumn);
    procedure btn_kembaliClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_simpanClick(Sender: TObject);
  private
    { Private declarations }
    procedure tampil_data;
    procedure resetForm;
  public
    { Public declarations }
  end;

var
  F_Suspend_Pengguna: TF_Suspend_Pengguna;
  temp_nm_pengguna: string;

implementation

uses
U_MenuUtama;

{$R *.dfm}

procedure TF_Suspend_Pengguna.tampil_data;
begin
  with qw do begin
    Active:=False;
    SQL.Clear;
    SQL.Add('SELECT * ');
    SQL.Add('FROM tb_pengguna ');
    SQL.Add('ORDER BY nm_pengguna ASC;');
    Active:=True;
  end;
end;

procedure TF_Suspend_Pengguna.resetForm;
begin
  edt_cari.Clear;
  cmb_status_akun.Text:='';
end;

procedure TF_Suspend_Pengguna.btn_cariClick(Sender: TObject);
begin
  if Length(edt_cari.Text) <> 0 then
  begin
    with qw do begin
      Active:=False;
      SQL.Clear;
      SQL.Add('SELECT nm_pengguna,level_user,');
      SQL.Add('status_akun,terakhir_login ');
      SQL.Add('FROM tb_pengguna ');
      SQL.Add('WHERE nm_pengguna LIKE ' +
      QuotedStr('%' + edt_cari.Text + '%') + ' ');
      SQL.Add('OR level_user LIKE ' +
      QuotedStr('%' + edt_cari.Text + '%'));
      Active:=True;
    end;
  end
  else begin
    Beep;
    edt_cari.SetFocus;
  end;
end;

procedure TF_Suspend_Pengguna.btn_kembaliClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TF_Suspend_Pengguna.btn_resetClick(Sender: TObject);
begin
  resetForm;
  cmb_status_akun.SetFocus;
end;

procedure TF_Suspend_Pengguna.btn_simpanClick(Sender: TObject);
begin
  if cmb_status_akun.Text <> '' then
  begin
    with crud do begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE tb_pengguna SET ');
      SQL.Add('status_akun = ' +
      QuotedStr(cmb_status_akun.Text)+ ' ');
      SQL.Add('WHERE nm_pengguna = ' +
      QuotedStr(temp_nm_pengguna) + ';');
      ExecSQL;
      Close;
    end;
    mnUtama.update_histori_pengguna('Barusan mengubah status : ' +
    QuotedStr(cmb_status_akun.Text) + ', ' +
    'data pengguna dengan nama : ' +
    QuotedStr(temp_nm_pengguna) + '.');
    tampil_data;
    cmb_status_akun.SetFocus;
  end;
end;

procedure TF_Suspend_Pengguna.dbg1CellClick(Column: TColumn);
begin
  with qw do begin
    temp_nm_pengguna:=FieldByName('nm_pengguna').AsString;
    cmb_status_akun.Text:=FieldByName('status_akun').AsString;
  end;
end;

procedure TF_Suspend_Pengguna.edt_cariKeyPress(Sender: TObject; var Key: Char);
begin
  if Length(edt_cari.Text) <= 1 then tampil_data;
end;

procedure TF_Suspend_Pengguna.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qw.Active:=False;
  crud.Close;
end;

procedure TF_Suspend_Pengguna.FormShow(Sender: TObject);
begin
  tampil_data;
  cmb_status_akun.SetFocus;
end;

end.
