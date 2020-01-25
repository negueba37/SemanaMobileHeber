unit UnitCompromissoFrame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts;

type
  TFrameCompromisso = class(TFrame)
    Rectangle1: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    lblTexto: TLabel;
    lblData: TLabel;
    Layout4: TLayout;
    lblNome: TLabel;
    lblHora: TLabel;
    imgTipoCompromisso: TImage;
    imgConcluido: TImage;
    lblQtConfirmados: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
