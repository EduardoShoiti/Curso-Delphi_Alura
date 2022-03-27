unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DOLAR: TEdit;
    Button1: TButton;
    REAL: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    COMPRA: TButton;
    MSG: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure COMPRAClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  VARREAL : REAL;
  VARNOME : STRING;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

if DOLAR.Text = '' then
  BEGIN
    SHOWMESSAGE('DIGITE VALOR EM DOLAR');
  END

ELSE
  BEGIN
    COMPRA.Enabled := TRUE;
    VARREAL := STRTOFLOAT(DOLAR.Text) * 3.9;
    REAL.Text := FLOATTOSTR(VARREAL);
  END;

end;



procedure TForm1.COMPRAClick(Sender: TObject);
begin
  VARNOME := INPUTBOX('NOME', 'DIGITE SEU NOME', '');

  if (VARNOME <> '') AND (DOLAR.Text <> '0') then
    MSG.Caption := 'PARABENS ' + VARNOME + ', VOCE COMPROU ' + DOLAR.Text + ' DOLAR(ES)'
  else
    SHOWMESSAGE('FALTA NOME OU DOLAR TEM QUE SER > 0');

end;

end.
