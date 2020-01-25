program Tarefas;

uses
  System.StartUpCopy,
  FMX.Forms,
  untLogin in 'untLogin.pas' {FrmLogin},
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  uCustomCalendar in 'uCustomCalendar.pas',
  untNotificacao in 'untNotificacao.pas' {frmNotificacao},
  UntCompromisso in 'UntCompromisso.pas' {FrmCompromisso},
  UnitNotificacaoDados in 'UnitNotificacaoDados.pas',
  UnitCompromisso in 'UnitCompromisso.pas',
  UnitNotificacaoFrame in 'UnitNotificacaoFrame.pas' {FrameNotificacao: TFrame},
  UnitCompromissoFrame in 'UnitCompromissoFrame.pas' {FrameCompromisso: TFrame},
  UnitCompromissoUsuarioDados in 'UnitCompromissoUsuarioDados.pas',
  UnitCompromissoUsuario in 'UnitCompromissoUsuario.pas' {FrameCompromissoUsuario: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
