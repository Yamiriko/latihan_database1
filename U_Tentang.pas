{
Developt By Jean Riko Kurniawan Putra, S.Kom, M.Kom
Grup Diskusi Delphi Pekanbaru : https://t.me/delphipekanbaru
}

unit U_Tentang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TF_Tentang = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Tentang: TF_Tentang;

implementation

uses
U_MenuUtama;

{$R *.dfm}

end.
