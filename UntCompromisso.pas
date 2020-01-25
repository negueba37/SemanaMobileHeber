unit UntCompromisso;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls, FMX.DateTimeCtrls, FMX.Edit, FMX.Objects,
  FMX.Controls.Presentation, System.Actions, FMX.ActnList, FMX.TabControl,
  UnitCompromissoFrame, UnitCompromissoUsuarioDados,UnitCompromissoUsuario;

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
    lbBuscaItens: TListBox;
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
    procedure ListarBusca();
    procedure CriaFrame(c:TCompromissoUsuario);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCompromisso: TFrmCompromisso;

implementation

{$R *.fmx}


procedure TFrmCompromisso.CriaFrame(c: TCompromissoUsuario);
var
  item : TListBoxItem;
  f:  TFrameCompromissoUsuario;
begin
  item := TListBoxItem.Create(nil);
  with item do begin
    Text := '';
    Height := 120;
    Align := TAlignLayout.Client;
    Tag := c.seqCompromisso;
  end;

  f := TFrameCompromissoUsuario.Create(item);
  with f do begin
    Parent := item;
    Align := TAlignLayout.Client;

    CircleIcone.Fill.Bitmap.Bitmap := c.icone;
    lblNomeUsuario.Text := c.codusuario;

    lbBuscaItens.AddObject(item);
  end;

end;

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

procedure TFrmCompromisso.ListarBusca;
var
  C:TCompromissoUsuario;
  x:Integer;
begin
  FrmCompromisso.lbBuscaItens.Items.Clear;
  for x := 1 to 5 do begin
    c.seqCompromisso := x;
    c.icone := imgFechar.Bitmap;
    c.codusuario := 'Giovane';

    CriaFrame(c);


  end;
end;

end.
