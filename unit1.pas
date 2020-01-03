unit unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    btnCalcular: TButton;
    btnLimpar: TButton;
    btnlimpamemo: TButton;
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
    memo1: TMemo;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnlimpamemoClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure somaIcms (valorProduto: real; quantiaproduto:real; alicota:real;frete:real);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }
             //limpa campos
procedure TForm4.btnLimparClick(Sender: TObject);
begin

  edtValordoproduto.Caption:= '0';
  edtquantiadoproduto.Caption:= '1';
  edtalicota.Caption:= '0,18';
  edtFrete.Caption:= '0';
  edtbaseicms.Caption:= '0';
  edtvaloricms.Caption:='0';

end;
     //calculo de ICMS no botao CALCULAR
procedure TForm4.btnCalcularClick(Sender: TObject);
begin

   somaIcms(Strtofloat(edtValordoproduto.Text),StrToFloat(edtquantiadoproduto.Text),StrToFloat(edtalicota.Text),StrToFloat(edtFrete.Text));

end;

procedure TForm4.btnlimpamemoClick(Sender: TObject);
begin
  memo1.Clear;
end;



  //calcula ICMS e grava nos campos Base e Valor ICMS
procedure TForm4.somaIcms (valorProduto: real; quantiaproduto:real; alicota:real;frete:real);
var
  baseicms: Real;
  valoricms: real;
begin

   //base icms
   baseicms := (valorProduto*quantiaproduto)+frete;
   edtbaseicms.text := FloatToStr(baseicms);
   memo1.Lines.Add(FloatToStr(valorProduto)+'*'+FloatToStr(quantiaproduto)+'+'+FloatToStr(frete)+'= '+FloatToStr(baseicms));

   //valor icms
   valoricms:= (((valorProduto*quantiaproduto)+frete)*alicota);
   edtvaloricms.Text := FloatToStr(valoricms);
   memo1.Lines.Add(FloatToStr(valorProduto)+'*'+FloatToStr(quantiaproduto)+'+'+FloatToStr(frete)+'*'+FloatToStr(alicota)+'= '+FloatToStr(valoricms));




end;












end.

