unit untPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls, FMX.Objects, FMX.Controls.Presentation;

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
    ltyComCompromisso: TLayout;
    lbCompromisso: TListBox;
    Layout3: TLayout;
    lblDia: TLabel;
    imgCadCompromisso: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

end.
