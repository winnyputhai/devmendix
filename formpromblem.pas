unit Formpromblem;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtDlgs, StdCtrls,
  DateTimePicker;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    CalculatorDialog1: TCalculatorDialog;
    CalendarDialog1: TCalendarDialog;
    DateTimePicker1: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}

{ TForm5 }

procedure TForm5.Button1Click(Sender: TObject);
begin
  CalendarDialog1.Execute;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  CalculatorDialog1.Execute;
end;

end.

