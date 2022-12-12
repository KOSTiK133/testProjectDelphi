unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses unit1;
{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var a:integer;
begin
a:=integer(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
Form1.SimpleDataSet1.Filter:='name='''+ComboBox1.Text+'''';
Form1.SimpleDataSet1.Filtered:=true;
close;
end;

procedure TForm4.FormCreate(Sender: TObject);
var i:integer;
begin
i:=0;
    Form1.SQLQuery1.SQL.Clear();
    Form1.SQLQuery1.SQL.Add('SELECT * FROM `organization`');
     Form1.SQLQuery1.Open();
while not Form1.SQLQuery1.eof do
begin
ComboBox1.Items.AddObject(Form1.SQLQuery1.FieldValues['name'],Pointer(StrToInt(Form1.SQLQuery1.FieldValues['id'])));
     Form1.SQLQuery1.next;
     Inc(i);
end;
   Form1.SQLQuery1.SQL.Clear;
   Form1.SQLQuery1.Close;
end;

end.
