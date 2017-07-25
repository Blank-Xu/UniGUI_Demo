unit ServerModule;

interface

uses
  Classes,
  SysUtils,
  uniGUIServer,
  uniGUIMainModule,
  uniGUIApplication,
  uIdCustomHTTPServer,
  uniGUITypes;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleHTTPCommand(ARequestInfo: TIdHTTPRequestInfo;
      AResponseInfo: TIdHTTPResponseInfo; var Handled: Boolean);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars;

function UniServerModule: TUniServerModule;
begin
  Result := TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleHTTPCommand(
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo;
  var Handled: Boolean);
begin
  if SameText(ARequestInfo.URI, '/server') then
  begin
    Handled := True;
    AResponseInfo.Redirect('/');
  end;
  if SameText(ARequestInfo.URI, '/baidu') then
  begin
    Handled := True;
    AResponseInfo.Redirect('http://www.baidu.com');
  end;
end;

initialization
  RegisterServerModuleClass(TUniServerModule);

end.

