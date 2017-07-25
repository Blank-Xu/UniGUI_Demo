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

const
  LoginFile = 'login.html';

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

procedure TUniServerModule.UniGUIServerModuleHTTPCommand(ARequestInfo:
  TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo; var Handled: Boolean);
begin
  if (SameText(ARequestInfo.URI, '/')) and (SameText(ARequestInfo.Command, 'GET')) then
  begin
    Handled := True;
    AResponseInfo.Redirect(LoginFile);
    Exit;
  end;
end;

initialization
  RegisterServerModuleClass(TUniServerModule);

end.

