unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, SynEdit, gtk2proc;

type

  { TForm1 }

  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SynEdit1: TSynEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form1: TForm1; 

implementation

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
     SetWindowFullScreen (self, true);
     SynEdit1.Lines.Clear;
 //   self.BorderStyle := bsNone;
   // SetBounds( 0,0, Screen.Width, Screen.Height );
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
      SynEdit1.SetFocus;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  SynEdit1.Lines.Clear;
  SynEdit1.SetFocus;
end;

initialization
  {$I main.lrs}

end.

