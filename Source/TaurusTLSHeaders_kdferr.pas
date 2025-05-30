/// <exclude />
  (* This unit was generated using the script genTaurusTLSHdrs.sh from the source file TaurusTLSHeaders_kdferr.h2pas
     It should not be modified directly. All changes should be made to TaurusTLSHeaders_kdferr.h2pas
     and this file regenerated. TaurusTLSHeaders_kdferr.h2pas is distributed with the full Indy
     Distribution.
   *)
   
{$i TaurusTLSCompilerDefines.inc} 
{$i TaurusTLSLinkDefines.inc} 
{$IFNDEF USE_OPENSSL}
  { error Should not compile if USE_OPENSSL is not defined!!!}
{$ENDIF}
{******************************************************************************}
{*  TaurusTLS                                                                 *}
{*           https://github.com/JPeterMugaas/TaurusTLS                        *}
{*                                                                            *}
{*  Copyright (c) 2024 TaurusTLS Developers, All Rights Reserved              *}
{*                                                                            *}
{* Portions of this software are Copyright (c) 1993 � 2018,                   *}
{* Chad Z. Hower (Kudzu) and the Indy Pit Crew � http://www.IndyProject.org/  *}
{******************************************************************************}
unit TaurusTLSHeaders_kdferr;

interface

// Headers for OpenSSL 1.1.1
// kdferr.h


uses
  IdCTypes,
  IdGlobal
  {$IFDEF OPENSSL_STATIC_LINK_MODEL}
  , TaurusTLSConsts
  {$ENDIF};

const
  (*
   * KDF function codes.
   *)
  KDF_F_PKEY_HKDF_CTRL_STR = 103;
  KDF_F_PKEY_HKDF_DERIVE = 102;
  KDF_F_PKEY_HKDF_INIT = 108;
  KDF_F_PKEY_SCRYPT_CTRL_STR = 104;
  KDF_F_PKEY_SCRYPT_CTRL_UINT64 = 105;
  KDF_F_PKEY_SCRYPT_DERIVE = 109;
  KDF_F_PKEY_SCRYPT_INIT = 106;
  KDF_F_PKEY_SCRYPT_SET_MEMBUF = 107;
  KDF_F_PKEY_TLS1_PRF_CTRL_STR = 100;
  KDF_F_PKEY_TLS1_PRF_DERIVE = 101;
  KDF_F_PKEY_TLS1_PRF_INIT = 110;
  KDF_F_TLS1_PRF_ALG = 111;

  (*
   * KDF reason codes.
   *)
  KDF_R_INVALID_DIGEST = 100;
  KDF_R_MISSING_ITERATION_COUNT = 109;
  KDF_R_MISSING_KEY = 104;
  KDF_R_MISSING_MESSAGE_DIGEST = 105;
  KDF_R_MISSING_PARAMETER = 101;
  KDF_R_MISSING_PASS = 110;
  KDF_R_MISSING_SALT = 111;
  KDF_R_MISSING_SECRET = 107;
  KDF_R_MISSING_SEED = 106;
  KDF_R_UNKNOWN_PARAMETER_TYPE = 103;
  KDF_R_VALUE_ERROR = 108;
  KDF_R_VALUE_MISSING = 102;

    { The EXTERNALSYM directive is ignored by FPC, however, it is used by Delphi as follows:
		
  	  The EXTERNALSYM directive prevents the specified Delphi symbol from appearing in header 
	  files generated for C++. }
	  
  {$EXTERNALSYM ERR_load_KDF_strings}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
var
  ERR_load_KDF_strings: function : TIdC_INT; cdecl = nil;

{$ELSE}
  function ERR_load_KDF_strings: TIdC_INT cdecl; external CLibCrypto;

{$ENDIF}

implementation

  uses
    classes, 
    TaurusTLSExceptionHandlers
  {$IFNDEF OPENSSL_STATIC_LINK_MODEL}
    ,TaurusTLSLoader
  {$ENDIF};
  

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
const
  ERR_load_KDF_strings_procname = 'ERR_load_KDF_strings';


  {$i TaurusTLSNoRetValOff.inc} 
function  ERR_ERR_load_KDF_strings: TIdC_INT; 
begin
  ETaurusTLSAPIFunctionNotPresent.RaiseException(ERR_load_KDF_strings_procname);
end;



  {$i TaurusTLSNoRetValOn.inc} 
  {$i TaurusTLSUnusedParamOff.inc}
procedure Load(const ADllHandle: TIdLibHandle; LibVersion: TIdC_UINT; const AFailed: TStringList);

var FuncLoadError: boolean;

begin
  ERR_load_KDF_strings := LoadLibFunction(ADllHandle, ERR_load_KDF_strings_procname);
  FuncLoadError := not assigned(ERR_load_KDF_strings);
  if FuncLoadError then
  begin
    {$if not defined(ERR_load_KDF_strings_allownil)}
    ERR_load_KDF_strings := @ERR_ERR_load_KDF_strings;
    {$ifend}
    {$if declared(ERR_load_KDF_strings_introduced)}
    if LibVersion < ERR_load_KDF_strings_introduced then
    begin
      {$if declared(FC_ERR_load_KDF_strings)}
      ERR_load_KDF_strings := @FC_ERR_load_KDF_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if declared(ERR_load_KDF_strings_removed)}
    if ERR_load_KDF_strings_removed <= LibVersion then
    begin
      {$if declared(_ERR_load_KDF_strings)}
      ERR_load_KDF_strings := @_ERR_load_KDF_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if not defined(ERR_load_KDF_strings_allownil)}
    if FuncLoadError then
      AFailed.Add('ERR_load_KDF_strings');
    {$ifend}
  end;


end;
  {$i TaurusTLSUnusedParamOn.inc}

procedure Unload;
begin
  ERR_load_KDF_strings := nil;
end;
{$ENDIF}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
initialization
  Register_SSLLoader(@Load,'LibCrypto');
  Register_SSLUnloader(@Unload);
{$ENDIF}
end.
