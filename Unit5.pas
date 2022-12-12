unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.DBXMySQL, Data.SqlExpr,
  Datasnap.DBClient, SimpleDS, Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    SimpleDataSet1: TSimpleDataSet;
    DataSource1: TDataSource;
    SQLConnection1: TSQLConnection;
    SQLQuery1: TSQLQuery;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
     uses unit1;
{$R *.dfm}

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Form1.SimpleDataSet1.ApplyUpdates(-1);
   Form1.SimpleDataSet1.Refresh();
end;

procedure TForm5.N3Click(Sender: TObject);
var name:string;
begin
name:=InputBox('���������� �����������','������� �������� �����������','');
if SQLConnection1.Connected then
begin
SQLQuery1.SQL.Clear();
    SQLQuery1.SQL.Add('INSERT INTO `organization`(name) VALUES ('''+name+''')');
    SQLQuery1.ExecSQL(true);
    SimpleDataSet1.ApplyUpdates(-1);
    SimpleDataSet1.Refresh();
    end;
end;

procedure TForm5.N4Click(Sender: TObject);
var id:integer;
begin
  if SQLConnection1.Connected then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsInteger;;
SQLQuery1.SQL.Clear();
    SQLQuery1.SQL.Add('DELETE FROM `organization` WHERE id='+IntToStr(id));
    SQLQuery1.ExecSQL(true);
    SimpleDataSet1.ApplyUpdates(-1);
    SimpleDataSet1.Refresh();
    end;
end;


procedure TForm5.N5Click(Sender: TObject);
var id:integer;
name,lastName:string;
begin
       if SQLConnection1.Connected then
begin
lastName:=DBGrid1.DataSource.DataSet.FieldByName('name').AsString;
name:=InputBox('��������','������� ����� ��� �����������',lastName);
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsInteger;;
SQLQuery1.SQL.Clear();
    SQLQuery1.SQL.Add('UPDATE `organization` SET `name`='''+name+''' WHERE `id`='+IntToStr(id));
    SQLQuery1.ExecSQL(true);
    SimpleDataSet1.ApplyUpdates(-1);
    SimpleDataSet1.Refresh();
    end;
end;

procedure TForm5.N7Click(Sender: TObject);
begin
close;
end;

end.
