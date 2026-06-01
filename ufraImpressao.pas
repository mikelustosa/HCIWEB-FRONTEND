unit ufraImpressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniURLFrame;

type
  TfraImpressao = class(TUniFrame)
    UniURLFrame1: TUniURLFrame;
    procedure UniFrameReady(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uConstantes;



procedure TfraImpressao.UniFrameReady(Sender: TObject);
begin
  UniURLFrame1.URL := wUrlRelatorioTmpPdf;
end;

end.
