unit selectpick;

interface
      procedure setSelectedWeek(week:Integer);
      function getWeekNumber():Integer;
      function getGameDate():TDateTime;
      function getGameTime():TDateTime;
      procedure main();


implementation

  uses
    System.SysUtils, FMX.Dialogs, Xml.XMLDoc,
    xmlLoad ;

  var

    selectedWeek: Integer;
    weekNumber: Integer;
    localDate: TDateTime;
    localTime: TDateTime;
    gameDate: TDateTime;
    gameTime: TDateTime;

    procedure setSelectedWeek(week:Integer);
    begin
       selectedWeek:=week;
    end;

    function getWeekNumber():Integer;
    var
    num: Integer;
    xml: TXMLDocument;
    begin
        xml:=LoadXMLFile('schedule');
        //Find out how to inter act with the XML file
        num:= 0;
        getWeekNumber:= num;

    end;

    function getGameDate():TDateTime;
    var
      gameDate: String;
    begin
      {Need to get Game Date from database}

       getGameDate:= StrToDate(gameDate);
    end;

    function getGameTime():TDateTime;
    var
      gameTime: String;
    begin
       gameTime:='9:00am' ;

      Result:= StrToTime(gameTime);
    end;

     procedure main();
     begin
        weekNumber:= getWeekNumber;

        if selectedWeek > weekNumber then
        begin
          localDate:= Date;
          localTime:= Time;
          gameDate:= getGameDate;
          gameTime:= getGameTime;
          if localDate >= gamedate then
          begin
            if localTime < gameTime then
            begin
              {save game pick}
            end
            else
            begin
              showMessage('Game has started.');
            end;

          end
          else
          begin
             ShowMessage('Game has played.');
          end;

        end
        else
        begin
          ShowMessage('Go to current week');
        end;



     end;


end.
