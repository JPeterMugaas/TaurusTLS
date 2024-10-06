{******************************************************************************}
{*  TaurusTLS                                                                 *}
{*           https://github.com/JPeterMugaas/TaurusTLS                        *}
{*                                                                            *}
{*  Copyright (c) 2024 TaurusTLS Developers, All Rights Reserved              *}
{*                                                                            *}
{* Portions of this software are Copyright (c) 1993 � 2018,                   *}
{* Chad Z. Hower (Kudzu) and the Indy Pit Crew � http://www.IndyProject.org/  *}
{******************************************************************************}
unit TaurusTLS_Dsn_Register;


interface

{$i TaurusTLSCompilerDefines.inc}

uses
  Classes,
  {$IFDEF DOTNET}
  Borland.Vcl.Design.DesignIntF,
  Borland.Vcl.Design.DesignEditors
  {$ELSE}
    {$IFDEF FPC}
  PropEdits,
  ComponentEditors
    {$ELSE}
      {$IFDEF VCL_6_OR_ABOVE}
  DesignIntf,
  DesignEditors
      {$ELSE}
  Dsgnintf
      {$ENDIF}
    {$ENDIF}
  {$ENDIF}
  ;

{$IFDEF HAS_TSelectionEditor}
type
  TTaurusTLSSelectionEditor = class(TSelectionEditor)
  public
    procedure RequiresUnits(Proc: TGetStrProc); override;
  end;
{$ENDIF}

procedure Register;

implementation

uses
  IdDsnCoreResourceStrings, // for RSRegIndyIOHandlers in dclIndyCore package
  {$IFDEF FPC}
  IdDsnResourceStrings,     // for RSProt in dclIndyProtocols package
  LResources,
  {$ENDIF}
  TaurusTLS;

{$IFNDEF FPC}
//  {$R IdRegisterTaurusTLS.dcr}
{$ENDIF}

{$IFDEF HAS_TSelectionEditor}

{TTaurusTLSSelectionEditor}

procedure TTaurusTLSSelectionEditor.RequiresUnits(Proc: TGetStrProc);
begin
  inherited RequiresUnits(Proc);
  //for new callback event
  Proc('IdCTypes'); {Do not localize}
  Proc('TaurusTLSHeaders_ossl_typ'); {Do not localize}
  Proc('TaurusTLS_X509');
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(RSRegIndyIOHandlers{$IFDEF FPC}+RSProt{$ENDIF}, [
    TIdServerIOHandlerSSLTaurusTLS,
    TIdSSLIOHandlerSocketTaurusTLS
  ]);

  {$IFDEF HAS_TSelectionEditor}
  RegisterSelectionEditor(TIdServerIOHandlerSSLTaurusTLS, TTaurusTLSSelectionEditor);
  RegisterSelectionEditor(TIdSSLIOHandlerSocketTaurusTLS, TTaurusTLSSelectionEditor);
  {$ENDIF}
end;

{$IFDEF FPC}
initialization
{$i IdRegisterTaurusTLS.lrs}
{$ENDIF}

end.
