unit xmlLoadSaveAndroid;

interface

uses
     Xml.XMLDoc, System.SysUtils, FMX.Dialogs, System.Classes;

  procedure SaveXMLFile (const data: TXMLDocument; const filename: string);
  function LoadXMLFile(const filename: string): TXMLDocument;




implementation


  procedure SaveXMLFile (const data: TXMLDocument; const filename: string);
  var
    filenameFormat: string;

  begin

    try

        filenameFormat:= Format('%s/'+filename,[GetHomePath]);
        data.SaveToFile(filenameFormat);

    except
        on E: Exception do
             ShowMessage('Exception SaveXMLFile '+ filename);
    end;

  end;

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
