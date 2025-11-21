object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  Theme = 'crisp'
  DocumentKeyOptions = [dkDisableBackSpace, dkDisableESC, dkDisableF5]
  NavigateKeys.Enabled = False
  NavigateKeys.HandleTabs = False
  NavigateKeys.SelectText = True
  MonitoredKeys.Keys = <>
  EnableSynchronousOperations = True
  OnSessionTimeout = UniGUIMainModuleSessionTimeout
  OnBeforeLogin = UniGUIMainModuleBeforeLogin
  Height = 150
  Width = 215
end
