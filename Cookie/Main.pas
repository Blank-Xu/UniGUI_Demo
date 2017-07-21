unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniMemo,
  UniButton, UniLabel, UniEdit, ExtCtrls, UniDateTimePicker, UniPanel,
  uniGUIRegClasses,  uniguiclasses, uniGUIBaseClasses;

type
  TMainForm = class(TUniForm)
    UniMemo1: TUniMemo;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniButton1: TUniButton;
    UniPanel3: TUniPanel;
    UniButton3: TUniButton;
    UniEdit3: TUniEdit;
    UniLabel3: TUniLabel;
    UniPanel4: TUniPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniButton2: TUniButton;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel4: TUniLabel;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniEdit4: TUniEdit;
    UniLabel5: TUniLabel;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, EncdDecd;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
var
  I : Integer;
begin
  if UniApplication.Cookies.Count>0 then
    for I := 0 to UniApplication.Cookies.Count - 1 do
      UniMemo1.Lines.Add('>'+UniApplication.Cookies[I])
  else
    UniMemo1.Lines.Add('>No Cookies found!');
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniApplication.Cookies.SetCookie(UniEdit1.Text, EncodeString(UniEdit2.Text), UniDateTimePicker1.DateTime);
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  UniMemo1.Lines.Add('>'+DecodeString(UniApplication.Cookies.Values[UniEdit3.Text]));
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  UniSession.AddJS('MainForm.UniEdit4.setValue(Ext.util.Cookies.get(MainForm.UniEdit3.getValue()));');
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
begin
  UniSession.AddJS('Ext.util.Cookies.set(MainForm.UniEdit1.getValue(),MainForm.UniEdit2.getValue());');
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniDateTimePicker1.DateTime:=Now+(30.0/1440.0);  // now +30 mins
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
