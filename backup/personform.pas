unit personform;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls,SQLDB, DB, Graphics, Dialogs, DBCtrls, DBGrids,
  StdCtrls, ExtCtrls, ExtDlgs,datamodule;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBImage1: TDBImage;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DataSource1UpdateData(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure Edit2KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
  private

  public
     procedure  saveblob();
  end;

var
  Form4: TForm4;


implementation



{$R *.lfm}

{ TForm4 }

procedure TForm4.FormCreate(Sender: TObject);
begin

end;

procedure TForm4.saveblob;
var strm: TmemoryStream;

begin
  strm:=TMemoryStream.Create;
  Image1.Picture.SaveToStream(strm);
     //datamodule.DataModule1.SQLQuery1.Close;
     //datamodule.DataModule1.SQLQuery1.Prepare;
     //datamodule.DataModule1.SQLQuery1.SQL.Text:='select no from person';
     //datamodule.DataModule1.SQLQuery1.Open;
    datamodule.DataModule1.SQLQuery1.Open;
    datamodule.DataModule1.SQLQuery1.Close;
    datamodule.DataModule1.SQLQuery1.Prepare;
    //datamodule.DataModule1.SQLQuery1.FieldByName('no').AsInteger;
    //ShowMessage(inttostr(datamodule.DataModule1.SQLQuery1.FieldByName('no').AsInteger));
   // datamodule.DataModule1.SQLQuery1.SQL.Text:='UPDATE person SET pic=:i WHERE name=''thawin''';
    datamodule.DataModule1.SQLQuery1.SQL.Text:='UPDATE person SET pic=:i WHERE no=:id';
    datamodule.DataModule1.SQLQuery1.Params[0].LoadFromStream(strm,ftBlob);
    datamodule.DataModule1.SQLQuery1.Params[1].AsInteger:=id;
  try
   datamodule.DataModule1.SQLQuery1.ExecSQL;
   datamodule.DataModule1.SQLTransaction1.Commit;
  except
   on E : Exception do begin
    datamodule.DataModule1.SQLTransaction1.Rollback;
    ShowMessage('Save image error:'+E.Message);
   end;
  end;
  strm.Free;

end;

procedure TForm4.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  if Key=#13  then Edit2.SetFocus;
end;

procedure TForm4.DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
begin

end;

procedure TForm4.DataSource1UpdateData(Sender: TObject);
begin

end;

procedure TForm4.Button1Click(Sender: TObject);
begin
 saveblob();
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
      if OpenPictureDialog1.Execute then
      Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TForm4.Edit2KeyPress(Sender: TObject; var Key: char);
begin
  If key=#13 then Edit3.SetFocus;
end;

end.

