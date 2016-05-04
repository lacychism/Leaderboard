unit net;

interface

uses
   Xml.XMLDoc,IdHTTP,System.SysUtils, FMX.Dialogs, System.Classes;

function HttpGet(const url: string): string;
function getServerIP():string;
procedure upLoadFile(const data: TXMLDocument; const url: string);

implementation


function HttpGet(const url: string): string;
var

  HTTP: TIdHTTP;
begin
  try
      try
        HTTP := TIdHTTP.Create(nil);
        HTTP.Request.ContentType := 'text/xml; charset=utf-8';
        HTTP.Request.ContentEncoding := 'utf-8';
        HTTP.HTTPOptions := [hoForceEncodeParams];
        HTTP.Request.CharSet := 'utf-8';
        result:= HTTP.Get(url);

      except
        on E: Exception do
             ShowMessage('Exception net.HttpGet');
      end;
    finally
      try
        HTTP.Disconnect;
      except
      end;
    end;
end;

function getServerIP():string;
var
  textFile: TStringList;
  filename: string;

begin

  try
    textFile:= TStringList.Create;
    filename:= Format('%s/address.txt',[GetHomePath]);

    if FileExists(filename) then
    begin
      textFile.LoadFromFile(filename);
    end;


  except
       on E: Exception do
       showmessage('not loaded');
  end;

  Result:= textFile.CommaText;
end;

  procedure upLoadFile(const data: TXMLDocument; const url: string);
  var

   HTTP: TIdHTTP;
   sResponse: string;

  begin

    try
    
      data.SaveToFile(url);
      
    except
       on E: Exception do
       showmessage('Did not upload');

    end;



  end;



end.
