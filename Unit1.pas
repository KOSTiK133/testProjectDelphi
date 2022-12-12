unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXMySQL, Data.SqlExpr, Data.DB,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, SimpleDS,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Menus, Data.FMTBcd;

type
  TForm1 = class(TForm)
    SQLConnection1: TSQLConnection;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    SimpleDataSet1: TSimpleDataSet;
    select: TDataSource;
    SQLQuery1: TSQLQuery;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    pdf1: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure pdf1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses unit3,unit4,unit5, Unit6;


{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
DBGrid1.Columns[1].Width:=200;
 DBGrid1.Columns[2].Width:=200;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
SimpleDataSet1.Filter:='';
SimpleDataSet1.Filtered:=false;
end;

procedure TForm1.N2Click(Sender: TObject);
var f:word;
begin
f:=Form5.ShowModal();

end;

procedure TForm1.N4Click(Sender: TObject);
var f:word;
begin
Form3.Caption:='Добавить';
Form3.Button1.Hide;
Form3.add.Show;
f:=Form3.ShowModal();
end;

procedure TForm1.N5Click(Sender: TObject);
var f:word;
data:TbookmarkList;
begin
Unit3.id:= DBGrid1.DataSource.DataSet.FieldByName('id').AsInteger;
Form3.key.Text:=DBGrid1.DataSource.DataSet.FieldByName('keyOrganization').AsString;
Form3.DateStart.Date:= DBGrid1.DataSource.DataSet.FieldByName('DateStart').AsDateTime;
Form3.DateEnd.Date:= DBGrid1.DataSource.DataSet.FieldByName('DateEnd').AsDateTime;
Form3.Organisation.ItemIndex:=Form3.Organisation.Items.IndexOf(DBGrid1.DataSource.DataSet.FieldByName('name').AsString);
if  DBGrid1.DataSource.DataSet.FieldByName('isBlocked').AsInteger=1 then
 Form3.CheckBox1.Checked:=true
 else    Form3.CheckBox1.Checked:=false;
Form3.Caption:='Изменить';
Form3.add.Hide();
Form3.Button1.Show;
f:=Form3.ShowModal();


end;

procedure TForm1.N6Click(Sender: TObject);
var id:integer;
begin
  id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsInteger;
  if SQLConnection1.Connected then
begin
SQLQuery1.SQL.Clear();
    Form1.SQLQuery1.SQL.Add('DELETE FROM `keys` WHERE id='+IntTostr(id));
    Form1.SQLQuery1.ExecSQL(true);
    Form1.SimpleDataSet1.ApplyUpdates(-1);
    Form1.SimpleDataSet1.Refresh();
    end;

end;

procedure TForm1.N7Click(Sender: TObject);
begin
Form4.ShowModal();
end;

procedure TForm1.N8Click(Sender: TObject);
var s:string;
begin
s:=InputBox('поиск по ключу','Введите ключ','');
SimpleDataSet1.Locate('keyOrganization',s,[]);

end;

procedure TForm1.N9Click(Sender: TObject);
begin
Form6.Show;
Form6.frxReport1.ShowReport(True);
end;

procedure TForm1.pdf1Click(Sender: TObject);
begin
Form6.frxReport1.ShowReport(True);
Form6.frxReport1.Export(Form6.frxPDFExport1);
end;

end.
