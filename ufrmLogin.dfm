object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  ClientHeight = 623
  ClientWidth = 867
  Caption = 'frmLogin'
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ClientEvents.ExtEvents.Strings = (
    
      'window.afterrender=function window.afterrender(sender, eOpts)'#13#10'{' +
      #13#10'   //Ext.get(sender.id).el.setStyle("padding", 0);'#13#10'   //Ext.g' +
      'et(sender.id).el.setStyle("border-width", 0);'#13#10'   //Ext.get(send' +
      'er.id).el.setStyle("margin", 0);'#13#10'}')
  OnCreate = UniLoginFormCreate
  OnScreenResize = UniLoginFormScreenResize
  PixelsPerInch = 96
  TextHeight = 13
  object htmlLogin: TUniURLFrame
    Left = 0
    Top = 0
    Width = 867
    Height = 623
    Hint = ''
    Visible = False
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   sender.cls' +
        '="animation-form-fade-in body_grdnt_rounded";'#13#10'}')
    Align = alClient
    TabOrder = 0
    ParentColor = False
    Color = clBtnFace
    OnAjaxEvent = UniURLFrame1AjaxEvent
  end
  object UniTimer1: TUniTimer
    Interval = 3000
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniTimer1Timer
    Left = 296
    Top = 200
  end
  object alerta: TUniSFSweetAlert
    Timer = 0
    IsHtmlJS = False
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    ConfirmButtonColor = '#3085d6'
    CancelButtonColor = '#d33'
    ShowConfirmButton = True
    ShowCancelButton = False
    Animation = True
    AlertType = atNone
    Position = top
    ImageWidth = 0
    ImageHeight = 0
    AllowOutsideClick = False
    AllowEscapeKey = False
    ScreenMask.Theme = ht_sk_rect
    Language = alPortuguese
    Left = 264
    Top = 336
  end
  object exibeLogin: TUniTimer
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = exibeLoginTimer
    Left = 104
    Top = 136
  end
end
