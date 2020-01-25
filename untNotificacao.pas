unit untNotificacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls,
  UnitNotificacaoDados;

type
  TfrmNotificacao = class(TForm)
    Layout1: TLayout;
    imgFechar: TImage;
    lbNotificacao: TListBox;
    lblTitulo: TLabel;
    procedure imgFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    Procedure ListarNotificacao();
    Procedure CriaFrame(N:TNotificacao);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotificacao: TfrmNotificacao;

implementation

{$R *.fmx}

uses UnitNotificacaoFrame;

procedure TfrmNotificacao.CriaFrame(N: TNotificacao);
var
  f : TFrameNotificacao;
  item:TListBoxItem;
begin
  item := TListBoxItem.Create(nil);
  with item do begin
    Text := '';
    Height := 120;
    Align := TAlignLayout.Client;
    Tag := n.id;
  end;
  f := TFrameNotificacao.Create(item);
  with f do begin
    Parent := item;
    Align := TAlignLayout.Client;

    CircleFoto.Fill.Bitmap.Bitmap := n.icone;
    lblNome.Text := N.codUsuario;
    lblData.Text := N.data;
    lblTexto.Text := N.texto;

    if n.tipo = 'C' then
      f.btnAceitar.Visible := True
    else
      f.btnAceitar.Visible := False;

    frmNotificacao.lbNotificacao.AddObject(item);
  end;


end;

procedure TfrmNotificacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  frmNotificacao := nil;
end;

procedure TfrmNotificacao.FormShow(Sender: TObject);
begin
  ListarNotificacao;
end;

procedure TfrmNotificacao.imgFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNotificacao.ListarNotificacao;
var
  n:TNotificacao;
  x:Integer;
  I: Integer;
begin
  for I := 1 to 5 do begin
    n.id :=x;
    n.icone:= frmNotificacao.imgFechar.Bitmap;
    n.codUsuario  := 'Pedro';
    n.data :=  '21/12';
    n.texto := 'O usuario sempre tm razao';
    n.tipo := 'C';

    CriaFrame(n);


  end;


end;

end.
