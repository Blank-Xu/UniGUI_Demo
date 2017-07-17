object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 468
  ClientWidth = 713
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniMemo1: TUniMemo
    Left = 264
    Top = 0
    Width = 449
    Height = 468
    Hint = ''
    ParentFont = False
    Font.Style = [fsBold]
    Align = alRight
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    TabOrder = 0
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 264
    Height = 468
    Hint = ''
    BorderStyle = ubsFrameLowered
    Caption = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    DesignSize = (
      264
      468)
    object UniPanel2: TUniPanel
      Left = 8
      Top = 7
      Width = 247
      Height = 58
      Hint = ''
      Caption = ''
      TabOrder = 0
      object UniButton1: TUniButton
        Left = 8
        Top = 16
        Width = 120
        Height = 25
        Hint = ''
        Caption = 'Get All Cookies!'
        ParentFont = False
        TabOrder = 0
        OnClick = UniButton1Click
      end
    end
    object UniPanel3: TUniPanel
      Left = 8
      Top = 71
      Width = 247
      Height = 90
      Hint = ''
      Caption = ''
      TabOrder = 1
      object UniLabel3: TUniLabel
        Left = 8
        Top = 40
        Width = 62
        Height = 13
        Hint = ''
        Caption = 'Cookie Name'
        ParentFont = False
        TabOrder = 3
      end
      object UniButton3: TUniButton
        Left = 8
        Top = 9
        Width = 120
        Height = 25
        Hint = ''
        Caption = 'Get This  Cookie'
        ParentFont = False
        TabOrder = 0
        OnClick = UniButton3Click
      end
      object UniEdit3: TUniEdit
        Left = 8
        Top = 59
        Width = 121
        Height = 21
        Hint = ''
        Text = ''
        ParentFont = False
        TabOrder = 1
      end
    end
    object UniPanel4: TUniPanel
      Left = 8
      Top = 167
      Width = 247
      Height = 291
      Hint = ''
      Caption = ''
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 2
      object UniLabel1: TUniLabel
        Left = 8
        Top = 47
        Width = 62
        Height = 13
        Hint = ''
        Caption = 'Cookie Name'
        ParentFont = False
        TabOrder = 5
      end
      object UniLabel2: TUniLabel
        Left = 8
        Top = 93
        Width = 61
        Height = 13
        Hint = ''
        Caption = 'Cookie Value'
        ParentFont = False
        TabOrder = 6
      end
      object UniLabel4: TUniLabel
        Left = 8
        Top = 139
        Width = 48
        Height = 13
        Hint = ''
        Caption = 'Expires at'
        ParentFont = False
        TabOrder = 7
      end
      object UniEdit1: TUniEdit
        Left = 8
        Top = 66
        Width = 121
        Height = 21
        Hint = ''
        Text = ''
        ParentFont = False
        TabOrder = 0
      end
      object UniEdit2: TUniEdit
        Left = 8
        Top = 112
        Width = 232
        Height = 21
        Hint = ''
        Text = ''
        ParentFont = False
        TabOrder = 1
      end
      object UniButton2: TUniButton
        Left = 8
        Top = 16
        Width = 120
        Height = 25
        Hint = ''
        Caption = 'Set Cookie'
        ParentFont = False
        TabOrder = 2
        OnClick = UniButton2Click
      end
      object UniDateTimePicker1: TUniDateTimePicker
        Left = 8
        Top = 158
        Width = 232
        Height = 21
        Hint = ''
        DateTime = 40616.487941435180000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Kind = tUniDateTime
        FirstDayOfWeek = dowLocaleDefault
        TabOrder = 3
        Color = clWhite
      end
    end
  end
end
