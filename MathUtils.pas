unit MathUtils;

interface

uses
  SysUtils, Math;

type
  TVector3D = record
    X, Y, Z: Double;
  end;

  TMatrix3D = record
    M: array[0..3, 0..3] of Double;
  end;

procedure Vector3DAdd(var V1: TVector3D; const V2: TVector3D);
procedure Vector3DSubtract(var V1: TVector3D; const V2: TVector3D);
function Vector3DMagnitude(const V: TVector3D): Double;
procedure Vector3DNormalize(var V: TVector3D);

procedure Matrix3DIdentity(var M: TMatrix3D);
procedure Matrix3DTranslate(var M: TMatrix3D; AX, AY, AZ: Double);
procedure Matrix3DRotateX(var M: TMatrix3D; AAngle: Double);
procedure Matrix3DRotateY(var M: TMatrix3D; AAngle: Double);
procedure Matrix3DRotateZ(var M: TMatrix3D; AAngle: Double);

implementation

procedure Vector3DAdd(var V1: TVector3D; const V2: TVector3D);
begin
  V1.X := V1.X + V2.X;
  V1.Y := V1.Y + V2.Y;
  V1.Z := V1.Z + V2.Z;
end;

procedure Vector3DSubtract(var V1: TVector3D; const V2: TVector3D);
begin
  V1.X := V1.X - V2.X;
  V1.Y := V1.Y - V2.Y;
  V1.Z := V1.Z - V2.Z;
end;

function Vector3DMagnitude(const V: TVector3D): Double;
begin
  Result := Sqrt(V.X * V.X + V.Y * V.Y + V.Z * V.Z);
end;

procedure Vector3DNormalize(var V: TVector3D);
var
  LMag: Double;
begin
  LMag := Vector3DMagnitude(V);
  if LMag <> 0 then
  begin
    V.X := V.X / LMag;
    V.Y := V.Y / LMag;
    V.Z := V.Z / LMag;
  end;
end;

procedure Matrix3DIdentity(var M: TMatrix3D);
var
  I, J: Integer;
begin
  for I := 0 to 3 do
    for J := 0 to 3 do
      if I = J then
        M.M[I, J] := 1.0
      else
        M.M[I, J] := 0.0;
end;

procedure Matrix3DTranslate(var M: TMatrix3D; AX, AY, AZ: Double);
begin
  Matrix3DIdentity(M);
  M.M[0, 3] := AX;
  M.M[1, 3] := AY;
  M.M[2, 3] := AZ;
end;

procedure Matrix3DRotateX(var M: TMatrix3D; AAngle: Double);
var
  LCos, LSin: Double;
begin
  Matrix3DIdentity(M);
  LCos := Cos(AAngle);
  LSin := Sin(AAngle);
  
  M.M[1, 1] := LCos;
  M.M[1, 2] := -LSin;
  M.M[2, 1] := LSin;
  M.M[2, 2] := LCos;
end;

procedure Matrix3DRotateY(var M: TMatrix3D; AAngle: Double);
var
  LCos, LSin: Double;
begin
  Matrix3DIdentity(M);
  LCos := Cos(AAngle);
  LSin := Sin(AAngle);
  
  M.M[0, 0] := LCos;
  M.M[0, 2] := LSin;
  M.M[2, 0] := -LSin;
  M.M[2, 2] := LCos;
end;

procedure Matrix3DRotateZ(var M: TMatrix3D; AAngle: Double);
var
  LCos, LSin: Double;
begin
  Matrix3DIdentity(M);
  LCos := Cos(AAngle);
  LSin := Sin(AAngle);
  
  M.M[0, 0] := LCos;
  M.M[0, 1] := -LSin;
  M.M[1, 0] := LSin;
  M.M[1, 1] := LCos;
end;

end.
