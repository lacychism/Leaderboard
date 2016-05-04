unit joinLeagueUnit;

interface
 uses
  Xml.XMLDoc, System.SysUtils;


procedure joinLeague(userName: String);


implementation

procedure joinLeague(userName: String);
var
  userXML: TXMLDocument;
  filename: string;
   league : string;
   index: Integer;

begin
    //userXML:= TXMLDocument.Create;

    filename:= Format('%s/users.xml',[GetHomePath]);

    if FileExists(filename) then
    begin
      userXML.LoadFromFile(filename);
    end;

    if userXML.IsEmptyDoc then
    begin
      //The XML is empty
    end
    else
    begin
       index:=userXML.XML.IndexOf(username);
       //league:= userXML
    end;

end;



end.
