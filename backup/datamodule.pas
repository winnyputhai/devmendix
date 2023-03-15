unit datamodule;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, PQConnection,Dialogs, SQLDB, SQLDBLib,ExtCtrls,DB;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    PQConnection1: TPQConnection;
    PQConnection2: TPQConnection;
    SQLDBLibraryLoader1: TSQLDBLibraryLoader;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    SQLTransaction2: TSQLTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLQuery1AfterPost(DataSet: TDataSet);
    procedure SQLQuery1AfterScroll(DataSet: TDataSet);
    procedure SQLQuery2AfterPost(DataSet: TDataSet);
    procedure SQLQuery2AfterPost(Sender: TObject);

  private

  public
   procedure saveblob();
   procedure savechange();
  end;

var
  DataModule1: TDataModule1;
  image:TImage;
  id:Integer;

implementation
uses personform;

{$R *.lfm}

{ TDataModule1 }

procedure TDataModule1.SQLQuery1AfterPost(DataSet: TDataSet);
begin
  SQLQuery1.ApplyUpdates(0);
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin

end;

procedure TDataModule1.SQLQuery1AfterScroll(DataSet: TDataSet);


begin
  id:=SQLQuery1.FieldByName('no').AsInteger;
  //ShowMessage(inttostr(id));
end;

procedure TDataModule1.SQLQuery2AfterPost(DataSet: TDataSet);
begin

end;

procedure TDataModule1.SQLQuery2AfterPost(Sender: TObject);
begin

end;

procedure TDataModule1.saveblob;
var strm: TmemoryStream;

begin
  strm:=TMemoryStream.Create;
  image:=personform.Form4.Image1;
  Image.Picture.SaveToStream(strm);
  SQLQuery1.Prepare;
  //Use the following for bytea fields FPC 2.6.0 and up.
  SQLQuery1.SQL.Text:='UPDATE person SET pic=:i WHERE name=''thawin''';
  //Use the following for text fields. base64, hex, or escape
  //SQLQuery1.SQL.Text:='UPDATE tbblob SET img=encode(:i) WHERE id=1;';
  SQLQuery1.Params[0].LoadFromStream(strm,ftBlob);
  try
   SQLQuery1.ExecSQL;
   SQLTransaction1.Commit;
  except
   on E : Exception do begin
    SQLTransaction1.Rollback;
    ShowMessage('Save image error:'+E.Message);
   end;
  end;
  strm.Free;

end;

procedure TDataModule1.savechange;
begin
   try
    if SQLTransaction2.Active then
    // Only if we are within a started transaction
    // otherwise you get "Operation cannot be performed on an inactive dataset"
    begin

      SQLQuery2.ApplyUpdates; //Pass user-generated changes back to database...
      SQLTransaction2.Commit; //... and commit them using the transaction.
      //SQLTransaction1.Active now is false
    end;
  except
  on E: EDatabaseError do
    begin
      SQLTransaction2.Rollback;
      MessageDlg('Error', 'A database error has occurred. Technical error message: ' +
        E.Message, mtError, [mbOK], 0);
   //   Edit1.Text := '';
    end;
  end;
end;

end.

