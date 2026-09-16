object FormMain: TFormMain
  Left = 192
  Top = 125
  Width = 1024
  Height = 768
  Caption = '3D Furnace Constructor - Delphi 7'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3D: TPanel
    Left = 256
    Top = 41
    Width = 753
    Height = 689
    Align = alClient
    BevelOuter = bvNone
    Color = clBlack
    TabOrder = 0
    OnPaint = Panel3DPaint
  end
  object ControlPanel: TPanel
    Left = 0
    Top = 41
    Width = 256
    Height = 689
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Components:'
    end
    object ComponentListBox: TListBox
      Left = 8
      Top = 24
      Width = 240
      Height = 113
      ItemHeight = 13
      TabOrder = 0
      OnClick = ComponentListBoxClick
    end
    object AddComponentButton: TButton
      Left = 8
      Top = 144
      Width = 113
      Height = 25
      Caption = 'Add Component'
      TabOrder = 1
      OnClick = AddComponentButtonClick
    end
    object RemoveComponentButton: TButton
      Left = 127
      Top = 144
      Width = 113
      Height = 25
      Caption = 'Remove'
      TabOrder = 2
      OnClick = RemoveComponentButtonClick
    end
    object PropertiesPanel: TPanel
      Left = 8
      Top = 176
      Width = 240
      Height = 501
      BevelOuter = bvLowered
      TabOrder = 3
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 54
        Height = 13
        Caption = 'Properties'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 32
        Width = 35
        Height = 13
        Caption = 'Width:'
      end
      object Label4: TLabel
        Left = 8
        Top = 56
        Width = 38
        Height = 13
        Caption = 'Height:'
      end
      object Label5: TLabel
        Left = 8
        Top = 80
        Width = 31
        Height = 13
        Caption = 'Depth:'
      end
      object Label6: TLabel
        Left = 8
        Top = 112
        Width = 54
        Height = 13
        Caption = 'Rotation X:'
      end
      object Label7: TLabel
        Left = 8
        Top = 136
        Width = 54
        Height = 13
        Caption = 'Rotation Y:'
      end
      object Label8: TLabel
        Left = 8
        Top = 160
        Width = 54
        Height = 13
        Caption = 'Rotation Z:'
      end
      object Label9: TLabel
        Left = 8
        Top = 192
        Width = 65
        Height = 13
        Caption = 'Temperature:'
      end
      object WidthSpinEdit: TSpinEdit
        Left = 112
        Top = 32
        Width = 121
        Height = 22
        MaxValue = 9999
        MinValue = 1
        TabOrder = 0
        Value = 100
      end
      object HeightSpinEdit: TSpinEdit
        Left = 112
        Top = 56
        Width = 121
        Height = 22
        MaxValue = 9999
        MinValue = 1
        TabOrder = 1
        Value = 100
      end
      object DepthSpinEdit: TSpinEdit
        Left = 112
        Top = 80
        Width = 121
        Height = 22
        MaxValue = 9999
        MinValue = 1
        TabOrder = 2
        Value = 100
      end
      object RotationXSpinEdit: TSpinEdit
        Left = 112
        Top = 112
        Width = 121
        Height = 22
        MaxValue = 360
        MinValue = 0
        TabOrder = 3
        Value = 0
      end
      object RotationYSpinEdit: TSpinEdit
        Left = 112
        Top = 136
        Width = 121
        Height = 22
        MaxValue = 360
        MinValue = 0
        TabOrder = 4
        Value = 0
      end
      object RotationZSpinEdit: TSpinEdit
        Left = 112
        Top = 160
        Width = 121
        Height = 22
        MaxValue = 360
        MinValue = 0
        TabOrder = 5
        Value = 0
      end
      object TemperatureSpinEdit: TSpinEdit
        Left = 112
        Top = 192
        Width = 121
        Height = 22
        MaxValue = 2000
        MinValue = -273
        TabOrder = 6
        Value = 20
      end
      object ApplyButton: TButton
        Left = 8
        Top = 224
        Width = 224
        Height = 25
        Caption = 'Apply'
        TabOrder = 7
        OnClick = ApplyButtonClick
      end
      object ResetButton: TButton
        Left = 8
        Top = 256
        Width = 224
        Height = 25
        Caption = 'Reset'
        TabOrder = 8
        OnClick = ResetButtonClick
      end
      object SimulateButton: TButton
        Left = 8
        Top = 288
        Width = 224
        Height = 25
        Caption = 'Simulate'
        TabOrder = 9
        OnClick = SimulateButtonClick
      end
      object SaveButton: TButton
        Left = 8
        Top = 320
        Width = 109
        Height = 25
        Caption = 'Save'
        TabOrder = 10
        OnClick = SaveButtonClick
      end
      object LoadButton: TButton
        Left = 123
        Top = 320
        Width = 109
        Height = 25
        Caption = 'Load'
        TabOrder = 11
        OnClick = LoadButtonClick
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 730
    Width = 1016
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    object FileMenu: TMenuItem
      Caption = 'File'
      object ExitItem: TMenuItem
        Caption = 'Exit'
        OnClick = ExitItemClick
      end
    end
    object HelpMenu: TMenuItem
      Caption = 'Help'
      object AboutItem: TMenuItem
        Caption = 'About'
        OnClick = AboutItemClick
      end
    end
  end
end
