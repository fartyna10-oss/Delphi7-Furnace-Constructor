unit FurnaceEngine;

interface

uses
  SysUtils, Classes, Contnrs,
  FurnaceComponents;

type
  TFurnaceEngine = class(TObject)
  private
    FComponents: TObjectList;
    FAmbientTemperature: Double;
    FHeatTransferRate: Double;
  public
    constructor Create;
    destructor Destroy; override;
    
    procedure AddComponent(AComponent: TFurnaceComponent);
    procedure RemoveComponent(AIndex: Integer);
    procedure ClearComponents;
    procedure SimulateHeatTransfer;
    procedure SaveToFile(const AFileName: String);
    procedure LoadFromFile(const AFileName: String);
    
    property Components: TObjectList read FComponents;
    property AmbientTemperature: Double read FAmbientTemperature write FAmbientTemperature;
    property HeatTransferRate: Double read FHeatTransferRate write FHeatTransferRate;
  end;

implementation

constructor TFurnaceEngine.Create;
begin
  inherited Create;
  FComponents := TObjectList.Create;
  FAmbientTemperature := 20;
  FHeatTransferRate := 0.1;
end;

destructor TFurnaceEngine.Destroy;
begin
  ClearComponents;
  FComponents.Free;
  inherited Destroy;
end;

procedure TFurnaceEngine.AddComponent(AComponent: TFurnaceComponent);
begin
  FComponents.Add(AComponent);
end;

procedure TFurnaceEngine.RemoveComponent(AIndex: Integer);
begin
  if (AIndex >= 0) and (AIndex < FComponents.Count) then
  begin
    FComponents.Delete(AIndex);
  end;
end;

procedure TFurnaceEngine.ClearComponents;
begin
  FComponents.Clear;
end;

procedure TFurnaceEngine.SimulateHeatTransfer;
var
  I: Integer;
  LComponent: TFurnaceComponent;
  LTemperatureDiff: Double;
begin
  for I := 0 to FComponents.Count - 1 do
  begin
    LComponent := TFurnaceComponent(FComponents[I]);
    LTemperatureDiff := LComponent.Temperature - FAmbientTemperature;
    
    if LTemperatureDiff > 0 then
      LComponent.Temperature := LComponent.Temperature - (LTemperatureDiff * FHeatTransferRate)
    else if LTemperatureDiff < 0 then
      LComponent.Temperature := LComponent.Temperature + (Abs(LTemperatureDiff) * FHeatTransferRate);
  end;
end;

procedure TFurnaceEngine.SaveToFile(const AFileName: String);
var
  LFile: TextFile;
  I: Integer;
  LComponent: TFurnaceComponent;
begin
  AssignFile(LFile, AFileName);
  Rewrite(LFile);
  try
    WriteLn(LFile, 'FURNACE_PROJECT_V1');
    WriteLn(LFile, 'AMBIENT_TEMP=' + FloatToStr(FAmbientTemperature));
    WriteLn(LFile, 'HEAT_RATE=' + FloatToStr(FHeatTransferRate));
    WriteLn(LFile, 'COMPONENTS=' + IntToStr(FComponents.Count));
    
    for I := 0 to FComponents.Count - 1 do
    begin
      LComponent := TFurnaceComponent(FComponents[I]);
      WriteLn(LFile, '[COMPONENT_' + IntToStr(I) + ']');
      WriteLn(LFile, 'TYPE=' + IntToStr(Integer(LComponent.ComponentType)));
      WriteLn(LFile, 'WIDTH=' + FloatToStr(LComponent.Width));
      WriteLn(LFile, 'HEIGHT=' + FloatToStr(LComponent.Height));
      WriteLn(LFile, 'DEPTH=' + FloatToStr(LComponent.Depth));
      WriteLn(LFile, 'POS_X=' + FloatToStr(LComponent.PosX));
      WriteLn(LFile, 'POS_Y=' + FloatToStr(LComponent.PosY));
      WriteLn(LFile, 'POS_Z=' + FloatToStr(LComponent.PosZ));
      WriteLn(LFile, 'ROT_X=' + FloatToStr(LComponent.RotX));
      WriteLn(LFile, 'ROT_Y=' + FloatToStr(LComponent.RotY));
      WriteLn(LFile, 'ROT_Z=' + FloatToStr(LComponent.RotZ));
      WriteLn(LFile, 'TEMPERATURE=' + FloatToStr(LComponent.Temperature));
      WriteLn(LFile, 'MATERIAL=' + LComponent.Material);
    end;
  finally
    CloseFile(LFile);
  end;
end;

procedure TFurnaceEngine.LoadFromFile(const AFileName: String);
begin
  // TODO: Implement file loading logic
end;

end.
