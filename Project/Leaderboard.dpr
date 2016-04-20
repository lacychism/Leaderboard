program Leaderboard;

uses
  System.StartUpCopy,
  FMX.Forms,
  main in 'C:\Users\Justin Frasier\Documents\Embarcadero\Studio\Projects\main.pas' {Form2},
  selectpick in 'C:\Users\Justin Frasier\Documents\Embarcadero\Studio\Projects\selectpick.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
