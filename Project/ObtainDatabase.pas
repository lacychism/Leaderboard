unit ObtainDatabase;

interface



uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls,IdHTTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, FMX.ScrollBox,net,
  FMX.Memo;

type

  TForm1 = class(TForm)
    ScheduleXML: TXMLDocument;
    TeamCodeXML: TXMLDocument;
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
  http: TIdCustomHTTP;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

procedure TForm1.Button1Click(Sender: TObject);
var
  server: string;
  users: string;
  login: string;
  code: Integer;
  userXML: TXMLDocument;


begin
  server:= 'http://173.217.40.147:8080/Test/';
  users:= 'user.xml';
  login:= 'login.xml';
  try
     try
      http:=TIdCustomHTTP.Create();
      http.Request.ContentType:= 'text/xml; charset=utf-8';
      http.Request.ContentEncoding:= 'utf-8';
      http.Get(server+users);
      Memo1.Lines.Add('Loaded users');
     except
       on E: Exception do
       begin
             Memo1.Lines.Add('Did Not Load users');
            try
              userXML:=TXMLDocument.Create(nil);
              http.Post(server+users,userXML.XML);
              Memo1.Lines.Add('Posted users');
            except
               on E: Exception do
                  Memo1.Lines.Add('Did Not Post users');
            end;
       end;

     end;

  finally
     http.Disconnect();
     http.Destroy();
  end;




  ShowMessage('Done');

end;

procedure TForm1.FormCreate(Sender: TObject);
 var
  buffer: String;
  team: string;
  schedule: string;
  server: string;
  test: string;


begin
  server:= 'http://173.217.40.147:8080/Test/';
  team:=  'team.xml';
  schedule:=  'schedule.xml';
  TeamCodeXML:= TXMLDocument.Create(nil);
  ScheduleXML:= TXMLDocument.Create(nil);

  TeamCodeXML.LoadFromXML(HttpGet(server+team));
  Memo1.Lines.Add('Loaded Team');
  ScheduleXML.LoadFromXML(HttpGet(server+team));
  Memo1.Lines.Add('Loaded Schedule');


end;



end.
