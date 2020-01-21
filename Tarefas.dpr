program Tarefas;

uses
  System.StartUpCopy,
  FMX.Forms,
  untLogin in 'untLogin.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
