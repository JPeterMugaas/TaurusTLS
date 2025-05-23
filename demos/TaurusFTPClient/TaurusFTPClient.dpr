program TaurusFTPClient;

uses
  Vcl.Forms,
  mainform in 'mainform.pas' {frmMainForm},
  dkgFTPConnect in 'dkgFTPConnect.pas' {frmConnect},
  frmAbout in 'frmAbout.pas' {AboutBox},
  settingsdlg in 'settingsdlg.pas' {frmSettings},
  frmBookmarks in 'frmBookmarks.pas' {frmFTPSites},
  CertViewer in 'CertViewer.pas' {frmCertViewer},
  ProgUtils in 'ProgUtils.pas',
  AcceptableCerts in 'AcceptableCerts.pas',
  dlgFTPProxySettings in 'dlgFTPProxySettings.pas' {frmFTPProxySettings},
  dlgNATSettings in 'dlgNATSettings.pas' {frmNATSettings},
  dlgProxySettings in 'dlgProxySettings.pas' {frmProxySettings},
  frmProgress in 'frmProgress.pas' {frmFileProgress},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TfrmMainForm, frmMainForm);
  Application.Run;
end.
