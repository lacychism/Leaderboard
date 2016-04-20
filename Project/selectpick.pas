unit selectpick;

interface
      function setSelectedWeek(week:Integer):Integer;
      function getWeekNumber(num:Integer):Integer;
      function getGameDate():TDateTime;
      function getGameTime():TDateTime;
      procedure main();


implementation

  uses
    System.SysUtils, FMX.Dialogs;

  var

    selectedWeek: Integer;
    weekNumber: Integer;
    localDate: TDateTime;
    localTime: TDateTime;
    gameDate: TDateTime;
    gameTime: TDateTime;

    function getSelectedWeek(week:Integer):Integer;
    begin
       setSelectedWeek:=week;
    end;

    function getWeekNumber():Integer;
    begin
        getWeekNumber:= num;
        {Need to get Week number from Database}
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
      {Need GameTime from database}

      getGameDate:= StrToTime(gameTime);
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
              break;
            end;

          end
          else
          begin
             ShowMessage('Game has played.');
             break;
          end;

        end
        else
        begin
          ShowMessage('Go to current week');
          break;
        end;



     end;


end.
