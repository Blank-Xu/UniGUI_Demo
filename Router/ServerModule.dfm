object UniServerModule: TUniServerModule
  OldCreateOrder = False
  FilesFolder = 'files\'
  TempFolder = 'temp\'
  Title = 'New Application'
  BGColor = 8404992
  CharSet = 'utf-8'
  FaviconOptions = [foVisible, foLocalCache]
  DefaultImageFormat = cfJpeg
  SuppressErrors = []
  UnavailableErrMsg = 'Communication Error'
  LoadingMessage = 'Loading...'
  Bindings = <>
  ServerMessages.ExceptionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    
      '<p style="text-align:center;color:#A05050">An Exception has occu' +
      'red in application:</p>'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Restart application</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Restart application</a></p>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Restart application</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 'Invalid session or session Timeout.'
  ServerMessages.TerminateMessage = 'Web session terminated.'
  ExtLocale = '[Auto]'
  Compression.MinTextSize = 512
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  OnHTTPCommand = UniGUIServerModuleHTTPCommand
  Height = 150
  Width = 215
end
