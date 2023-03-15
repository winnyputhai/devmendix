unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    procedure StaticText5Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation
uses Unit1;

{$R *.lfm}

{ TForm3 }

procedure TForm3.StaticText5Click(Sender: TObject);
begin

end;

end.

