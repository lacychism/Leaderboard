unit xmlLoad;

interface

uses
     Xml.XMLDoc, System.SysUtils, FMX.Dialogs, System.Classes;

  
  function LoadXMLFile(const filename: string): TXMLDocument;




implementation


  

  function LoadXMLFile(const filename: string): TXMLDocument;
  var
     output: TXMLDocument;
     filenameFormat: string;

  begin

    try
      output:= TXMLDocument.Create(nil);
      filenameFormat:= Format('%s/'+filename,[GetHomePath]);
      if FileExists(filenameFormat) then
      begin
        output.LoadFromFile(filenameFormat);
        Result:= output;
      end
      else
      begin
        ShowMessage('ReStart the app');

      end;

    except
        on E: Exception do
             ShowMessage('Exception LoadXMLFile '+ filename);

    end;



  end;


end.
