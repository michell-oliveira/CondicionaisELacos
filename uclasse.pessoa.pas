unit uClasse.Pessoa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

implementation

type

  { TPessoa }

  TPessoa = class
  private
    FId : integer;
    procedure setGravarId(AValue: integer);
  public
    property id : integer read FId write setGravarId;
  end;

{ TPessoa }

procedure TPessoa.setGravarId(AValue: integer);
begin
  if FId = AValue then Exit;

  if AValue <= 0 then
  begin
    Exception.Create('o Id Precisa ser maior do que 0.');
    exit;
  end;

  FId:=AValue;
end;

end.

