program LatihanDatabase1;

uses
  Vcl.Forms,
  U_MenuUtama in 'U_MenuUtama.pas' {mnUtama},
  U_Biodata in 'U_Biodata.pas' {F_Biodata},
  ULogin in 'ULogin.pas' {F_Login},
  U_Pengguna in 'U_Pengguna.pas' {F_Pengguna},
  U_Histori_Pengguna in 'U_Histori_Pengguna.pas' {f_histori_pengguna},
  U_Suspend in 'U_Suspend.pas' {F_Suspend_Pengguna};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmnUtama, mnUtama);
  Application.CreateForm(TF_Biodata, F_Biodata);
  Application.CreateForm(TF_Login, F_Login);
  Application.CreateForm(TF_Pengguna, F_Pengguna);
  Application.CreateForm(Tf_histori_pengguna, f_histori_pengguna);
  Application.CreateForm(TF_Suspend_Pengguna, F_Suspend_Pengguna);
  Application.Run;
end.
