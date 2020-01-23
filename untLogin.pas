unit untLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, FMX.TabControl,
  System.Actions, FMX.ActnList;

type
  TFrmLogin = class(TForm)
    Layout2: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Layout1: TLayout;
    edtUsuarioLogin: TEdit;
    Rectangle1: TRectangle;
    Layout3: TLayout;
    Image1: TImage;
    btnLogin: TSpeedButton;
    Layout4: TLayout;
    Image2: TImage;
    Layout5: TLayout;
    lblCriarConta: TLabel;
    TabControl: TTabControl;
    TabLogin: TTabItem;
    TabNovaConta: TTabItem;
    ActionList1: TActionList;
    ActLogin: TChangeTabAction;
    ActConta: TChangeTabAction;
    Layout6: TLayout;
    Image3: TImage;
    Layout7: TLayout;
    Label3: TLabel;
    Label5: TLabel;
    Layout8: TLayout;
    Edit1: TEdit;
    Rectangle2: TRectangle;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    Layout9: TLayout;
    imgIcone1: TImage;
    imgIcone2: TImage;
    imgIcone3: TImage;
    imgIcone4: TImage;
    imgIcone5: TImage;
    imgIcone6: TImage;
    cSelecao: TCircle;
    Layout10: TLayout;
    Label8: TLabel;
    Layout11: TLayout;
    Image10: TImage;
    procedure FormCreate(Sender: TObject);
    procedure lblCriarContaClick(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure imgIcone1Click(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);

  private
    procedure SelecioneIcone(Sender:TObject);
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.fmx}

uses untPrincipal;

procedure TFrmLogin.btnLoginClick(Sender: TObject);
begin
  if not Assigned(frmPrincipal) then
    Application.CreateForm(TfrmPrincipal,frmPrincipal);

  Application.MainForm := frmPrincipal;
  frmPrincipal.Show;
  FrmLogin.Close;

end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  TabControl.TabPosition := TTabPosition.None;
  TabControl.ActiveTab   := TabLogin;
end;

procedure TFrmLogin.imgIcone1Click(Sender: TObject);
begin
SelecioneIcone(Sender);
end;

procedure TFrmLogin.Label8Click(Sender: TObject);
begin
  ActLogin.Execute;

end;

procedure TFrmLogin.lblCriarContaClick(Sender: TObject);
begin
  ActConta.Execute;
end;

procedure TFrmLogin.SelecioneIcone(Sender: TObject);
begin
  with FrmLogin do begin
    imgIcone1.Tag := 0;
    imgIcone2.Tag := 0;
    imgIcone3.Tag := 0;
    imgIcone4.Tag := 0;
    imgIcone5.Tag := 0;
    imgIcone6.Tag := 0;
    TImage(Sender).Tag := 1;

    cSelecao.AnimateFloat('Position.X',TImage(Sender).Position.X +20-4,0.2);

  end;

end;

end.
