unit ObtainDatabase;

interface



uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls,IdHTTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, FMX.ScrollBox,net,
  FMX.Memo, xmlLoad;

type

  TForm1 = class(TForm)
    AniIndicator1: TAniIndicator;
    procedure FormCreate(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  net: TIdHTTP;
implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}


procedure TForm1.FormCreate(Sender: TObject);
 var
  UsersXML: TXMLDocument;
  TeamCodeXML: TXMLDocument;
  ScheduleXML: TXMLDocument;
  LoginXML: TXMLDocument;
  server: string;


begin
  try
    try
        TeamCodeXML:= TXMLDocument.Create(nil);
        ScheduleXML:= TXMLDocument.Create(nil);
        UsersXML:= TXMLDocument.Create(nil);
        LoginXML:= TXMLDocument.Create(nil);
        server:= getServerIP;

        TeamCodeXML.LoadFromXML(HttpGet(server+'team.xml'));

        ScheduleXML.LoadFromXML(HttpGet(server+'schedule.xml'));

        UsersXML.LoadFromXML(HttpGet(server+'users.xml'));

        LoginXML.LoadFromXML(HttpGet(server+'login.xml'));


    except
       on E: Exception do
       begin
        ShowMessage('something fucked up');
       end;

    end;

  finally

  end;



end;



end.
