/// <exclude />
  (* This unit was generated using the script genTaurusTLSHdrs.sh from the source file TaurusTLSHeaders_storeerr.h2pas
     It should not be modified directly. All changes should be made to TaurusTLSHeaders_storeerr.h2pas
     and this file regenerated. TaurusTLSHeaders_storeerr.h2pas is distributed with the full Indy
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
unit TaurusTLSHeaders_storeerr;

interface

// Headers for OpenSSL 1.1.1
// storeerr.h


uses
  IdCTypes,
  IdGlobal
  {$IFDEF OPENSSL_STATIC_LINK_MODEL}
  , TaurusTLSConsts
  {$ENDIF}  ;

const
  (*
   * OSSL_STORE function codes.
   *)
  OSSL_STORE_F_FILE_CTRL = 129;
  OSSL_STORE_F_FILE_FIND = 138;
  OSSL_STORE_F_FILE_GET_PASS = 118;
  OSSL_STORE_F_FILE_LOAD = 119;
  OSSL_STORE_F_FILE_LOAD_TRY_DECODE = 124;
  OSSL_STORE_F_FILE_NAME_TO_URI = 126;
  OSSL_STORE_F_FILE_OPEN = 120;
  OSSL_STORE_F_OSSL_STORE_ATTACH_PEM_BIO = 127;
  OSSL_STORE_F_OSSL_STORE_EXPECT = 130;
  OSSL_STORE_F_OSSL_STORE_FILE_ATTACH_PEM_BIO_INT = 128;
  OSSL_STORE_F_OSSL_STORE_FIND = 131;
  OSSL_STORE_F_OSSL_STORE_GET0_LOADER_INT = 100;
  OSSL_STORE_F_OSSL_STORE_INFO_GET1_CERT = 101;
  OSSL_STORE_F_OSSL_STORE_INFO_GET1_CRL = 102;
  OSSL_STORE_F_OSSL_STORE_INFO_GET1_NAME = 103;
  OSSL_STORE_F_OSSL_STORE_INFO_GET1_NAME_DESCRIPTION = 135;
  OSSL_STORE_F_OSSL_STORE_INFO_GET1_PARAMS = 104;
  OSSL_STORE_F_OSSL_STORE_INFO_GET1_PKEY = 105;
  OSSL_STORE_F_OSSL_STORE_INFO_NEW_CERT = 106;
  OSSL_STORE_F_OSSL_STORE_INFO_NEW_CRL = 107;
  OSSL_STORE_F_OSSL_STORE_INFO_NEW_EMBEDDED = 123;
  OSSL_STORE_F_OSSL_STORE_INFO_NEW_NAME = 109;
  OSSL_STORE_F_OSSL_STORE_INFO_NEW_PARAMS = 110;
  OSSL_STORE_F_OSSL_STORE_INFO_NEW_PKEY = 111;
  OSSL_STORE_F_OSSL_STORE_INFO_SET0_NAME_DESCRIPTION = 134;
  OSSL_STORE_F_OSSL_STORE_INIT_ONCE = 112;
  OSSL_STORE_F_OSSL_STORE_LOADER_NEW = 113;
  OSSL_STORE_F_OSSL_STORE_OPEN = 114;
  OSSL_STORE_F_OSSL_STORE_OPEN_INT = 115;
  OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT = 117;
  OSSL_STORE_F_OSSL_STORE_SEARCH_BY_ALIAS = 132;
  OSSL_STORE_F_OSSL_STORE_SEARCH_BY_ISSUER_SERIAL = 133;
  OSSL_STORE_F_OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT = 136;
  OSSL_STORE_F_OSSL_STORE_SEARCH_BY_NAME = 137;
  OSSL_STORE_F_OSSL_STORE_UNREGISTER_LOADER_INT = 116;
  OSSL_STORE_F_TRY_DECODE_PARAMS = 121;
  OSSL_STORE_F_TRY_DECODE_PKCS12 = 122;
  OSSL_STORE_F_TRY_DECODE_PKCS8ENCRYPTED = 125;


  (*
   * OSSL_STORE reason codes.
   *)
  OSSL_STORE_R_AMBIGUOUS_CONTENT_TYPE = 107;
  OSSL_STORE_R_BAD_PASSWORD_READ = 115;
  OSSL_STORE_R_ERROR_VERIFYING_PKCS12_MAC = 113;
  OSSL_STORE_R_FINGERPRINT_SIZE_DOES_NOT_MATCH_DIGEST = 121;
  OSSL_STORE_R_INVALID_SCHEME = 106;
  OSSL_STORE_R_IS_NOT_A = 112;
  OSSL_STORE_R_LOADER_INCOMPLETE = 116;
  OSSL_STORE_R_LOADING_STARTED = 117;
  OSSL_STORE_R_NOT_A_CERTIFICATE = 100;
  OSSL_STORE_R_NOT_A_CRL = 101;
  OSSL_STORE_R_NOT_A_KEY = 102;
  OSSL_STORE_R_NOT_A_NAME = 103;
  OSSL_STORE_R_NOT_PARAMETERS = 104;
  OSSL_STORE_R_PASSPHRASE_CALLBACK_ERROR = 114;
  OSSL_STORE_R_PATH_MUST_BE_ABSOLUTE = 108;
  OSSL_STORE_R_SEARCH_ONLY_SUPPORTED_FOR_DIRECTORIES = 119;
  OSSL_STORE_R_UI_PROCESS_INTERRUPTED_OR_CANCELLED = 109;
  OSSL_STORE_R_UNREGISTERED_SCHEME = 105;
  OSSL_STORE_R_UNSUPPORTED_CONTENT_TYPE = 110;
  OSSL_STORE_R_UNSUPPORTED_OPERATION = 118;
  OSSL_STORE_R_UNSUPPORTED_SEARCH_TYPE = 120;
  OSSL_STORE_R_URI_AUTHORITY_UNSUPPORTED = 111;

    { The EXTERNALSYM directive is ignored by FPC, however, it is used by Delphi as follows:
		
  	  The EXTERNALSYM directive prevents the specified Delphi symbol from appearing in header 
	  files generated for C++. }
	  
  {$EXTERNALSYM ERR_load_OSSL_STORE_strings}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
var
  ERR_load_OSSL_STORE_strings: function : TIdC_INT; cdecl = nil;

{$ELSE}
  function ERR_load_OSSL_STORE_strings: TIdC_INT cdecl; external CLibCrypto;

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
  ERR_load_OSSL_STORE_strings_procname = 'ERR_load_OSSL_STORE_strings';


{$i TaurusTLSNoRetValOff.inc}
function  ERR_ERR_load_OSSL_STORE_strings: TIdC_INT; 
begin
  ETaurusTLSAPIFunctionNotPresent.RaiseException(ERR_load_OSSL_STORE_strings_procname);
end;



{$i TaurusTLSNoRetValOn.inc}
{$i TaurusTLSUnusedParamOff.inc}
procedure Load(const ADllHandle: TIdLibHandle; LibVersion: TIdC_UINT; const AFailed: TStringList);

var FuncLoadError: boolean;

begin
  ERR_load_OSSL_STORE_strings := LoadLibFunction(ADllHandle, ERR_load_OSSL_STORE_strings_procname);
  FuncLoadError := not assigned(ERR_load_OSSL_STORE_strings);
  if FuncLoadError then
  begin
    {$if not defined(ERR_load_OSSL_STORE_strings_allownil)}
    ERR_load_OSSL_STORE_strings := @ERR_ERR_load_OSSL_STORE_strings;
    {$ifend}
    {$if declared(ERR_load_OSSL_STORE_strings_introduced)}
    if LibVersion < ERR_load_OSSL_STORE_strings_introduced then
    begin
      {$if declared(FC_ERR_load_OSSL_STORE_strings)}
      ERR_load_OSSL_STORE_strings := @FC_ERR_load_OSSL_STORE_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if declared(ERR_load_OSSL_STORE_strings_removed)}
    if ERR_load_OSSL_STORE_strings_removed <= LibVersion then
    begin
      {$if declared(_ERR_load_OSSL_STORE_strings)}
      ERR_load_OSSL_STORE_strings := @_ERR_load_OSSL_STORE_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if not defined(ERR_load_OSSL_STORE_strings_allownil)}
    if FuncLoadError then
      AFailed.Add('ERR_load_OSSL_STORE_strings');
    {$ifend}
  end;


end;

{$i TaurusTLSUnusedParamOff.inc}

procedure Unload;
begin
  ERR_load_OSSL_STORE_strings := nil;
end;

{$ENDIF}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
initialization
  Register_SSLLoader(@Load,'LibCrypto');
  Register_SSLUnloader(@Unload);
{$ENDIF}
end.
