unit ObtainDatabase;

interface



uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls,IdHTTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, FMX.ScrollBox,net,
  FMX.Memo, xmlLoadSaveAndroid;

type

  TForm1 = class(TForm)

    Button1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
{$R *.Windows.fmx MSWINDOWS}

procedure TForm1.Button1Click(Sender: TObject);

var
  TeamCodeXML: TXMLDocument;

begin

  TeamCodeXML:= TXMLDocument.Create(nil);
  TeamCodeXML.LoadFromXML(HttpGet(getServerIP+'team.xml'));
  SaveXMLFile(TeamCodeXML, 'team.xml');
  upLoadFile(LoadXMLFile('team.xml'),getServerIP+'team.xml');

end;

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
        Memo1.Lines.Add(getServerIP);

        TeamCodeXML.LoadFromXML(HttpGet(server+'team.xml'));
        Memo1.Lines.Add('Loaded Team');
        ScheduleXML.LoadFromXML(HttpGet(server+'schedule.xml'));
        Memo1.Lines.Add('Loaded Schedule');
        UsersXML.LoadFromXML(HttpGet(server+'users.xml'));
        Memo1.Lines.Add('Loaded Users');
        LoginXML.LoadFromXML(HttpGet(server+'login.xml'));
        Memo1.Lines.Add('Loaded Login');

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
