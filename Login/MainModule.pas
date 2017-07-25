unit MainModule;

interface

uses
  uniGUIMainModule,
  SysUtils,
  Classes;

type
  TUniMainModule = class(TUniGUIMainModule)
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    function LoginCheck(const User, Pass: string): Boolean;
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars,
  ServerModule,
  uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

function TUniMainModule.LoginCheck(const User, Pass: string): Boolean;
begin
  if SameText(User, 'admin') and SameText(Pass, 'admin') then
    Result := True
  else
    Result := False;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  User, Pass: string;
begin
  User := Trim(uniGUIApplication.UniApplication.Parameters.Values['user']);
  Pass := Trim(uniGUIApplication.UniApplication.Parameters.Values['pass']);
  if (Length(User) = 0) or (Length(Pass) = 0) then
  begin
    UniSession.AResponse.Redirect(LoginFile);
    UniSession.Terminate;
  end
  else
  begin
    if not LoginCheck(User, Pass) then
    begin
      UniSession.AResponse.Redirect(LoginFile);
      UniSession.Terminate;
    end;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);

end.

