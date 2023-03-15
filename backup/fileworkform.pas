unit fileworkform;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, DB, SQLDB, Controls, Graphics, Dialogs, StdCtrls,
  DBGrids, DBCtrls, datamodule;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SQLQuery1: TSQLQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DataSource1UpdateData(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure DBNavigator1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SQLQuery1AfterPost(DataSet: TDataSet);
    procedure SQLQuery1AfterPost(Sender: TObject);
  private

  public

  end;

var
  Form6: TForm6;

implementation

{$R *.lfm}

{ TForm6 }

procedure TForm6.Button1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin

       SQLQuery1.Close;
       SQLQuery1.SQL.Text:= 'insert into filework (FileName,Contentfile,detailfilename) values (:FileName, :Contentfile,:detailfilename)';
       SQLQuery1.ParamByName('FileName').AsString:= ExtractFileName(OpenDialog1.FileName);
       SQLQuery1.ParamByName('detailfilename').Text:=DBMemo1.Text;
       SQLQuery1.ExecSQL;
       datamodule.DataModule1.SQLTransaction2.Commit;
  end;
end;

procedure TForm6.Button2Click(Sender: TObject);
var
  BlobStream : TStream;
  M: TFileStream;
begin
  SaveDialog1.FileName:= datamodule.DataModule1.SQLQuery2.FieldByName('FileName').AsString;
  if SaveDialog1.Execute then
  begin
    BlobStream := datamodule.DataModule1.SQLQuery2.CreateBlobStream(datamodule.DataModule1.SQLQuery2.FieldByName('Contentfile'),bmread);
    M:= TFileStream.Create(SaveDialog1.FileName, fmCreate);
    BlobStream.Position:= 0;
    M.CopyFrom(BlobStream, BlobStream.Size);
    M.Free;
    BlobStream.Free;
  end;

end;

procedure TForm6.Button3Click(Sender: TObject);
begin
//  datamodule.DataModule1.SQLTransaction2.Commit;
 datamodule.DataModule1.SQLQuery2.Edit;
 datamodule.DataModule1.SQLQuery2.FieldByName('detailfilename').Text:=DBMemo1.Text;
 datamodule.DataModule1.SQLQuery2.Post;
 datamodule.DataModule1.SQLQuery2.ApplyUpdates; //Post & Apply Updates
  datamodule.DataModule1.SQLTransaction2.Commit;
 datamodule.DataModule1.SQLQuery2.Close;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin

 DataModule1.savechange();
end;

procedure TForm6.DataSource1DataChange(Sender: TObject; Field: TField);
begin

end;

procedure TForm6.DataSource1UpdateData(Sender: TObject);
begin

end;

procedure TForm6.DBMemo1Change(Sender: TObject);
begin

end;

procedure TForm6.DBMemo1Exit(Sender: TObject);
begin

end;

procedure TForm6.DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
begin

end;

procedure TForm6.DBNavigator1Exit(Sender: TObject);
begin
  //  datamodule.DataModule1.savechange();
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
    //ShowMessage(DateTimeToStr(LocalTimeToUniversal(Now)));
end;

procedure TForm6.SQLQuery1AfterPost(DataSet: TDataSet);
begin
      SQLQuery1.ApplyUpdates(0);
end;

procedure TForm6.SQLQuery1AfterPost(Sender: TObject);
begin

end;

end.

