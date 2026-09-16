program FurnaceConstructor;

uses
  Forms,
  MainForm in 'MainForm.pas' {FormMain},
  FurnaceEngine in 'FurnaceEngine.pas',
  FurnaceComponents in 'FurnaceComponents.pas',
  Rendering3D in 'Rendering3D.pas',
  MathUtils in 'MathUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
