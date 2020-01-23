unit untPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls, FMX.Objects, FMX.Controls.Presentation,
  uCustomCalendar;

type
  TfrmPrincipal = class(TForm)
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Label4: TLabel;
    imgNoticacao: TImage;
    cNotificacao: TCircle;
    btnSair: TSpeedButton;
    Layout2: TLayout;
    imgAnterior: TImage;
    imgProximo: TImage;
    lblMes: TLabel;
    lytCalendario: TLayout;
    lytSemCompromisso: TLayout;
    Image3: TImage;
    lblSemCompromisso: TLabel;
    imgDica: TImage;
    lytComCompromisso: TLayout;
    lbCompromisso: TListBox;
    Layout3: TLayout;
    lblDia: TLabel;
    imgCadCompromisso: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgProximoClick(Sender: TObject);
    procedure imgAnteriorClick(Sender: TObject);
    procedure imgNoticacaoClick(Sender: TObject);
    procedure imgCadCompromissoClick(Sender: TObject);
    procedure imgDicaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    cal : TCustomCalendar;
    procedure DayClick(Sender:TObject);
    procedure ListarCompromisso();
     { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  System.DateUtils, UntCompromisso, untNotificacao, untLogin;

{$R *.fmx}

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  if not Assigned(FrmLogin) then
    Application.CreateForm(TFrmLogin,FrmLogin);

  Application.MainForm := FrmLogin;
  FrmLogin.Show;
  frmPrincipal.Close;

end;

procedure TfrmPrincipal.DayClick(Sender: TObject);
begin
  // Carregar as atividades do dia
  ListarCompromisso;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cal.DisposeOf;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  cal := TCustomCalendar.Create(lytCalendario);
  cal.OnClick := DayClick;
  cal.DayFontSize      := 14;
  cal.DayFontColor     := $FF737375;
  cal.SelectedDayColor :=$FF4B7AF0;
  cal.BackgroundColor  := $FFFFFFFF;

  // MONTA CALENDARIO NA TELA
  CAL.ShowCalendar();
  // Justar lbl de data
  ListarCompromisso;
end;

procedure TfrmPrincipal.imgAnteriorClick(Sender: TObject);
begin
  cal.PriorMonth;
  ListarCompromisso;
end;

procedure TfrmPrincipal.imgCadCompromissoClick(Sender: TObject);
begin
  if not Assigned(FrmCompromisso) then
    Application.CreateForm(tFrmCompromisso,FrmCompromisso);

  FrmCompromisso.Show;

end;

procedure TfrmPrincipal.imgDicaClick(Sender: TObject);
begin
  if not Assigned(FrmCompromisso) then
    Application.CreateForm(tFrmCompromisso,FrmCompromisso);

  FrmCompromisso.Show;

end;

procedure TfrmPrincipal.imgNoticacaoClick(Sender: TObject);
begin
  if not Assigned(frmNotificacao) then
    Application.CreateForm(TfrmNotificacao,frmNotificacao);

  frmNotificacao.Show;
end;

procedure TfrmPrincipal.imgProximoClick(Sender: TObject);
begin
  cal.NextMonth;
  ListarCompromisso;

end;

procedure TfrmPrincipal.ListarCompromisso;
begin
  lblMes.Text := cal.MonthName;
  lblDia.Text := 'Atividades do dia '+FormatDateTime('DD/MM',cal.SelectedDate);

  //Buscar compromisso no servidor
  cal.AddMarker(6);
  cal.AddMarker(15);
  cal.AddMarker(25,$FFFFFFFF,$FF4B7AF0);

  if ((DayOf(cal.SelectedDate) = 6) or
      (DayOf(cal.SelectedDate) = 15) or
      (DayOf(cal.SelectedDate) = 25)  ) then begin
        lytComCompromisso.Visible := True;
        lytSemCompromisso.Visible := False;
      end else begin
        lytComCompromisso.Visible := False;
        lytSemCompromisso.Visible := True;
        lblSemCompromisso.Text := 'Sem compromisso em '+FormatDateTime('DD/MM',cal.SelectedDate);
      end;




end;

end.
