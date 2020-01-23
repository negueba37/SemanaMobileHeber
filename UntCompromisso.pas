unit UntCompromisso;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls, FMX.DateTimeCtrls, FMX.Edit, FMX.Objects,
  FMX.Controls.Presentation, System.Actions, FMX.ActnList, FMX.TabControl;

type
  TFrmCompromisso = class(TForm)
    Layout1: TLayout;
    imgFechar: TImage;
    lblTitulo: TLabel;
    Layout2: TLayout;
    edtUsuarioLogin: TEdit;
    Layout3: TLayout;
    DateEdit1: TDateEdit;
    TimeEdit1: TTimeEdit;
    Label4: TLabel;
    btnSair: TSpeedButton;
    Label1: TLabel;
    imgCadPartici: TImage;
    lbNotificacao: TListBox;
    TabControl: TTabControl;
    TabCompromisso: TTabItem;
    TabBusca: TTabItem;
    ActionList1: TActionList;
    actCompromisso: TChangeTabAction;
    ActBusca: TChangeTabAction;
    Layout4: TLayout;
    Label2: TLabel;
    imgVoltar: TImage;
    edBusca: TEdit;
    Layout5: TLayout;
    SpeedButton1: TSpeedButton;
    procedure imgFecharClick(Sender: TObject);
    procedure imgCadParticiClick(Sender: TObject);
    procedure imgVoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCompromisso: TFrmCompromisso;

implementation

{$R *.fmx}

procedure TFrmCompromisso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  FrmCompromisso := nil;

end;

procedure TFrmCompromisso.FormCreate(Sender: TObject);
begin
  TabControl.TabPosition := TTabPosition.None;
  TabControl.ActiveTab   := TabCompromisso;
end;

procedure TFrmCompromisso.imgCadParticiClick(Sender: TObject);
begin
  ActBusca.Execute;
end;

procedure TFrmCompromisso.imgFecharClick(Sender: TObject);
begin
  Close;

end;

procedure TFrmCompromisso.imgVoltarClick(Sender: TObject);
begin
  actCompromisso.Execute;
end;

end.
