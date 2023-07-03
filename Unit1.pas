unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids;

type
  TForm1 = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    lbl8: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure posisiawal;
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  id : string;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;
  edt6.Enabled := True;

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if edt1.Text =''then
begin
  ShowMessage('NIK TIDAK BOLEH KOSONG');
  end else
if edt2.Text =''then
begin
  ShowMessage('NAMA TIDAK BOLEH KOSONG');
  end else
if edt3.Text =''then
begin
  ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG');
  end else
if edt4.Text =''then
begin
  ShowMessage('PENDIDIKAN TIDAK BOLEH KOSONG');
  end else
if edt5.Text =''then
begin
  ShowMessage('NO TELPON LAHIR TIDAK BOLEH KOSONG');
  end else
if edt6.Text =''then
begin
  ShowMessage('PEKERJAAN KELAMIN TIDAK BOLEH KOSONG');
  end else
begin
  //simpan
end;
 zqry1.SQL.Clear;
zqry1.SQL.Add('insert into data_ortu values(null,"'+edt1.text+'","'+edt2.text+'","'+edt3.text+'","'+edt4.text+'","'+edt5.text+'","'+edt6.text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from data_walikelas');
zqry1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  begin
  if (edt1.Text= '')or(edt2.Text= '')or(edt3.Text= '')or(edt4.Text= '')or(edt5.Text= '')or(edt6.Text= '') then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else


begin
  ShowMessage('Data Berhasil Di Update');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update data_ortu set nik="'+edt1.Text+'",nama="'+edt2.Text+'",jenis_kelamin="'+edt3.Text+'",pendidikan="'+edt4.Text+'",no_telepon="'+edt5.Text+'",pekerjaan="'+edt6.Text+'" where id ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from data_ortu');
  zqry1.Open;
  posisiawal;
end;

end;
end;


procedure TForm1.btn4Click(Sender: TObject);
begin
   if MessageDlg('Apakah Anda Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from data_ortu where id ="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from data_ortu');
  zqry1.Open;
  ShowMessage('Data Berhasil Dihapus');
  posisiawal;
end else
begin
  ShowMessage('Data Batal Dihapus');
  posisiawal;

end;

end;

end.
