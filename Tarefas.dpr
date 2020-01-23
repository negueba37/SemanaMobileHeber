program Tarefas;

uses
  System.StartUpCopy,
  FMX.Forms,
  untLogin in 'untLogin.pas' {FrmLogin},
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  uCustomCalendar in 'uCustomCalendar.pas',
  untNotificacao in 'untNotificacao.pas' {frmNotificacao},
  UntCompromisso in 'UntCompromisso.pas' {FrmCompromisso};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
