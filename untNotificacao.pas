unit untNotificacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmNotificacao = class(TForm)
    Layout1: TLayout;
    imgFechar: TImage;
    lbNotificacao: TListBox;
    lblTitulo: TLabel;
    procedure imgFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotificacao: TfrmNotificacao;

implementation

{$R *.fmx}

procedure TfrmNotificacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  frmNotificacao := nil;
end;

procedure TfrmNotificacao.imgFecharClick(Sender: TObject);
begin
  Close;
end;

end.
