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
    Label4: TLabel;
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
    Label6: TLabel;
    Edit1: TEdit;
    Rectangle2: TRectangle;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    Layout9: TLayout;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Circle1: TCircle;
    Layout10: TLayout;
    Label8: TLabel;
    Layout11: TLayout;
    Image10: TImage;
    procedure FormCreate(Sender: TObject);
    procedure lblCriarContaClick(Sender: TObject);
    procedure Label8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.fmx}

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  TabControl.TabPosition := TTabPosition.None;
  TabControl.ActiveTab   := TabLogin;
end;

procedure TFrmLogin.Label8Click(Sender: TObject);
begin
  ActLogin.Execute;

end;

procedure TFrmLogin.lblCriarContaClick(Sender: TObject);
begin
  ActConta.Execute;
end;

end.
