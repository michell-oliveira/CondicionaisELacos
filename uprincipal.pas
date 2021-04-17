unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    CkAtivarCredito: TCheckBox;
    EDCodigo: TLabeledEdit;
    EdCredito: TLabeledEdit;
    EdNome: TLabeledEdit;
    EDPis: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    PnCliente: TPanel;
    PnFornecedor: TPanel;
    PnFuncionario: TPanel;
    PnGeral: TPanel;
    RgTipoPessoa: TRadioGroup;
    BtnPreencherClasse: TToggleBox;
    procedure BtnPreencherClasseChange(Sender: TObject);
    procedure RgTipoPessoaClick(Sender: TObject);
  private
  public

  end;

var
  Form1: TForm1;

implementation

uses uClasse.Pessoa;

{$R *.lfm}

{ TForm1 }

procedure TForm1.RgTipoPessoaClick(Sender: TObject);
begin
  // Primeira opção menos performática
  //if RgTipoPessoa.ItemIndex = 0 then
  //begin
  //  PnCliente.visible := true;
  //  PnFuncionario.visible := false;
  //  PnFornecedor.visible := false;
  //end
  //else
  //if RgTipoPessoa.ItemIndex = 1 then
  //begin
  //  PnFuncionario.visible := true;
  //  PnCliente.visible := false;
  //  PnFornecedor.visible := false;
  //end
  //else
  //if RgTipoPessoa.ItemIndex = 2 then
  //begin
  //  pnFornecedor.visible := true;
  //  PnCliente.visible := false;
  //  PnFuncionario.visible := false;
  //end;

  // segunda opção mais performática
  //case RgTipoPessoa.itemindex of
  //  0 : begin
  //        PnCliente.visible := true;
  //        PnFuncionario.visible := false;
  //        PnFornecedor.visible := false;
  //      end;
  //
  //  1 : begin
  //        PnFuncionario.visible := true;
  //        PnCliente.visible := false;
  //        PnFornecedor.visible := false;
  //      end;
  //
  //  2 : begin
  //        pnFornecedor.visible := true;
  //        PnCliente.visible := false;
  //        PnFuncionario.visible := false;
  //      end;
  //end;

  // terceira opção cenário ideal
  PnCliente.visible := RgTipoPessoa.ItemIndex = 0;
  PnFuncionario.visible := RgTipoPessoa.ItemIndex = 1;
  PnFornecedor.visible := RgTipoPessoa.Itemindex = 2;


end;

procedure TForm1.BtnPreencherClasseChange(Sender: TObject);
Var
  lPessoa : TPessoa;
begin
  lPessoa := TPessoa.create;

  try

  finally
    lPessoa.freeAndNil;
  end;

end;

end.

