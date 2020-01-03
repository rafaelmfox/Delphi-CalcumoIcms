unit icms;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    btnCalcular: TButton;
    btnLimpar: TButton;
    edtalicota: TEdit;
    edtFrete: TEdit;
    edtbaseicms: TEdit;
    edtvaloricms: TEdit;
    edtValordoproduto: TEdit;
    edtquantiadoproduto: TEdit;
    lblalicota: TLabel;
    lblvaloricms: TLabel;
    lblFrete: TLabel;
    lblbaseicms: TLabel;
    lblValorProduto: TLabel;
    lblquantiadoproduto: TLabel;
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

end.

