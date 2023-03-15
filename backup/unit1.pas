unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, lclintf, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, ExtDlgs;

type

  { TForm1 }

  TForm1 = class(TForm)
    CalendarDialog1: TCalendarDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    MainMenu2: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem49: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem53: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem56: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem58: TMenuItem;
    MenuItem59: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem42Click(Sender: TObject);
    procedure MenuItem43Click(Sender: TObject);
    procedure MenuItem45Click(Sender: TObject);
    procedure MenuItem46Click(Sender: TObject);
    procedure MenuItem47Click(Sender: TObject);
    procedure MenuItem48Click(Sender: TObject);
    procedure MenuItem49Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem50Click(Sender: TObject);
    procedure MenuItem51Click(Sender: TObject);
    procedure MenuItem52Click(Sender: TObject);
    procedure MenuItem53Click(Sender: TObject);
    procedure MenuItem54Click(Sender: TObject);
    procedure MenuItem55Click(Sender: TObject);
    procedure MenuItem57Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
uses personform,fileworkform,Formpromblem;

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  OpenURL('https://call1662.pwa.co.th/webuser/cmpform.html');
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
    OpenURL('http://infoma.pwa.co.th/');
end;

procedure TForm1.MenuItem42Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem43Click(Sender: TObject);
begin
  personform.Form4.Show;
end;

procedure TForm1.MenuItem45Click(Sender: TObject);
begin
  OpenURL('https://eservice.pwa.co.th/');
end;

procedure TForm1.MenuItem46Click(Sender: TObject);
begin
     OpenURL('https://form.pwa.co.th/tracking');
end;

procedure TForm1.MenuItem47Click(Sender: TObject);
begin
    OpenURL('https://info.pwa.co.th/form/matracking');
end;

procedure TForm1.MenuItem48Click(Sender: TObject);
begin
 Formpromblem.Form5.Show;
end;

procedure TForm1.MenuItem49Click(Sender: TObject);
begin
  fileworkform.Form6.show;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  OpenURL('http://192.168.242.114/');
 //  OpenURL('http://192.168.242.190/');

end;

procedure TForm1.MenuItem50Click(Sender: TObject);
begin
  personform.Form4.Show;
end;

procedure TForm1.MenuItem51Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem52Click(Sender: TObject);
begin
    MainMenu1.Unmerge(MainMenu2);
end;

procedure TForm1.MenuItem53Click(Sender: TObject);
begin
  MainMenu1.Merge(MainMenu2);
end;

procedure TForm1.MenuItem54Click(Sender: TObject);
begin
    fileworkform.Form6.show;
end;

procedure TForm1.MenuItem55Click(Sender: TObject);
begin
  MainMenu1.Merge(MainMenu2);
end;

procedure TForm1.MenuItem57Click(Sender: TObject);
begin
  MainMenu1.merge(MainMenu2)
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  OpenURL('http://rm-ic.pwa.co.th/rm/Account/Login.aspx?ReturnUrl=%2frm');
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
 OpenURL('http://rm-ic.pwa.co.th/rm/Account/Login.aspx?ReturnUrl=%2frm');
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
    MainMenu1.Merge(MainMenu2);
end;

procedure TForm1.MenuItem27Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
    OpenURL('https://smart1662.pwa.co.th/');
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
    OpenURL('https://ebill-ng.pwa.co.th/');
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  OpenURL('http://rm-ic.pwa.co.th/csa/LogIn.aspx?ReturnUrl=%2fcsa');
end;

end.

