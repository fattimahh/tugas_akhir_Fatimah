object Form1: TForm1
  Left = 274
  Top = 365
  Width = 1305
  Height = 676
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 76
    Top = 39
    Width = 737
    Height = 393
    Caption = 'grp1'
    TabOrder = 0
    object lbl1: TLabel
      Left = 64
      Top = 96
      Width = 17
      Height = 13
      Caption = 'NIK'
    end
    object lbl2: TLabel
      Left = 64
      Top = 128
      Width = 29
      Height = 13
      Caption = 'NAMA'
    end
    object lbl3: TLabel
      Left = 64
      Top = 160
      Width = 74
      Height = 13
      Caption = 'JENIS KELAMIN'
    end
    object lbl4: TLabel
      Left = 64
      Top = 192
      Width = 64
      Height = 13
      Caption = 'PENDIDIKAN '
    end
    object lbl5: TLabel
      Left = 336
      Top = 96
      Width = 88
      Height = 13
      Caption = 'MATA PELAJARAN'
    end
    object lbl6: TLabel
      Left = 336
      Top = 128
      Width = 79
      Height = 13
      Caption = 'TINGKAT KELAS '
    end
    object lbl7: TLabel
      Left = 336
      Top = 160
      Width = 45
      Height = 13
      Caption = 'JABATAN'
    end
    object lbl8: TLabel
      Left = 304
      Top = 40
      Width = 89
      Height = 13
      Caption = 'DATA WALI KELAS'
    end
    object edt1: TEdit
      Left = 176
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'edt1'
    end
    object edt2: TEdit
      Left = 176
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'edt2'
    end
    object edt3: TEdit
      Left = 176
      Top = 152
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'edt3'
    end
    object edt4: TEdit
      Left = 176
      Top = 184
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'edt4'
    end
    object edt5: TEdit
      Left = 432
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'edt5'
    end
    object edt6: TEdit
      Left = 432
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'edt6'
    end
    object edt7: TEdit
      Left = 432
      Top = 152
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'edt7'
    end
    object btn1: TButton
      Left = 104
      Top = 280
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 7
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 216
      Top = 280
      Width = 75
      Height = 25
      Caption = 'SIMPAN '
      TabOrder = 8
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 320
      Top = 280
      Width = 75
      Height = 25
      Caption = 'EDIT'
      TabOrder = 9
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 424
      Top = 280
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 10
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 536
      Top = 280
      Width = 75
      Height = 25
      Caption = 'BATAL'
      TabOrder = 11
    end
  end
  object dbgrd1: TDBGrid
    Left = 80
    Top = 456
    Width = 737
    Height = 153
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ds1: TDataSource
    Left = 824
    Top = 344
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Port = 0
    Database = 'D:\Kuliah\Semester 4\Visual\uas\fatimmah\libmysql.dll'
    Left = 848
    Top = 192
  end
  object zqry1: TZQuery
    Params = <>
    Left = 856
    Top = 264
  end
end
