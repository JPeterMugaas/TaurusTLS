unit frmProgress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, IdComponent,
  Vcl.ComCtrls, IdThreadSafe, ProgUtils;

type
  TfrmFileProgress = class(TThemedForm)
    Panel2: TPanel;
    CancelBtn: TButton;
    lblAction: TLabel;
    prgbrDownloadUpload: TProgressBar;
    lblProgress: TLabel;
    procedure CancelBtnClick(Sender: TObject);
  strict protected
    FCancelPressed : TIdThreadSafeBoolean;
    function GetCancelPressed: Boolean;
    procedure SetCancelPressed(const Value: Boolean);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure UpdateProgressIndicator(const AFileName : String;
      const AWorkMode : TWorkMode; const AWorkCount, AWorkCountMax : Int64);
    property CancelPressed : Boolean read GetCancelPressed write SetCancelPressed;
  end;

var
  frmFileProgress: TfrmFileProgress;

implementation

{$R *.dfm}

{ TfrmFileProgress }

procedure TfrmFileProgress.CancelBtnClick(Sender: TObject);
begin
   FCancelPressed.Value := True;
   CancelBtn.Enabled := False;
end;

constructor TfrmFileProgress.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Self.FCancelPressed := TIdThreadSafeBoolean.Create;
  FCancelPressed.Value := False;
end;

destructor TfrmFileProgress.Destroy;
begin
  FreeAndNil(FCancelPressed);
  inherited Destroy;
end;

function TfrmFileProgress.GetCancelPressed: Boolean;
begin
  Result := FCancelPressed.Value;
end;

procedure TfrmFileProgress.SetCancelPressed(const Value: Boolean);
begin
  FCancelPressed.Value := Value;
end;

procedure TfrmFileProgress.UpdateProgressIndicator(const AFileName: String;
  const AWorkMode: TWorkMode; const AWorkCount, AWorkCountMax: Int64);
var LStr : String;
  LPerc : Integer;
begin
  if AWorkMode = wmRead then
  begin
    LStr := 'Downloading '+AFileName+'...';
  end
  else
  begin
    LStr := 'Uploading '+AFileName+'...';
  end;
  lblAction.Caption := LStr;
  if AWorkCountMax >= 0 then
  begin
    LPerc := Round((AWorkcount / AWorkCountMax) * 100);
    Self.prgbrDownloadUpload.Position  := LPerc;
    Self.lblProgress.Caption := IntToStr(AWorkCount)+ ' of '+IntToStr(AWorkCountMax) + ' ('+IntToStr(LPerc)+'%)';
  end
  else
  begin
    prgbrDownloadUpload.Style := pbstMarquee;
    Self.lblProgress.Caption := IntToStr(AWorkCount);
  end;
end;

end.
