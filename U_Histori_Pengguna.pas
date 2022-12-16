{
Developt By Jean Riko Kurniawan Putra, S.Kom, M.Kom
Grup Diskusi Delphi Pekanbaru : https://t.me/delphipekanbaru
}

unit U_Histori_Pengguna;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tf_histori_pengguna = class(TForm)
    qw: TFDQuery;
    ds: TDataSource;
    dbg1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure tampil_data;
  public
    { Public declarations }
  end;

var
  f_histori_pengguna: Tf_histori_pengguna;

implementation

uses
U_MenuUtama;

{$R *.dfm}

procedure Tf_histori_pengguna.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qw.Active:=False;
end;

procedure Tf_histori_pengguna.FormShow(Sender: TObject);
begin
  tampil_data;
end;

procedure Tf_histori_pengguna.tampil_data;
begin
  with qw do begin
    Active:=False;
    SQL.Clear;
    SQL.Add('SELECT * ');
    SQL.Add('FROM tb_pengguna_histori ');
    SQL.Add('ORDER BY kd_histori DESC');
    Active:=True;
  end;
end;

end.
