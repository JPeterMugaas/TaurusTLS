/// <exclude />
  (* This unit was generated using the script genTaurusTLSHdrs.sh from the source file TaurusTLSHeaders_dherr.h2pas
     It should not be modified directly. All changes should be made to TaurusTLSHeaders_dherr.h2pas
     and this file regenerated. TaurusTLSHeaders_dherr.h2pas is distributed with the full Indy
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

unit TaurusTLSHeaders_dherr;

interface

// Headers for OpenSSL 1.1.1
// dherr.h


uses
  IdCTypes,
  IdGlobal
  {$IFDEF OPENSSL_STATIC_LINK_MODEL}
  , TaurusTLSConsts
  {$ENDIF};

const
  // DH function codes
  DH_F_COMPUTE_KEY               = 102;
  DH_F_DHPARAMS_PRINT_FP         = 101;
  DH_F_DH_BUILTIN_GENPARAMS      = 106;
  DH_F_DH_CHECK_EX               = 121;
  DH_F_DH_CHECK_PARAMS_EX        = 122;
  DH_F_DH_CHECK_PUB_KEY_EX       = 123;
  DH_F_DH_CMS_DECRYPT            = 114;
  DH_F_DH_CMS_SET_PEERKEY        = 115;
  DH_F_DH_CMS_SET_SHARED_INFO    = 116;
  DH_F_DH_METH_DUP               = 117;
  DH_F_DH_METH_NEW               = 118;
  DH_F_DH_METH_SET1_NAME         = 119;
  DH_F_DH_NEW_BY_NID             = 104;
  DH_F_DH_NEW_METHOD             = 105;
  DH_F_DH_PARAM_DECODE           = 107;
  DH_F_DH_PKEY_PUBLIC_CHECK      = 124;
  DH_F_DH_PRIV_DECODE            = 110;
  DH_F_DH_PRIV_ENCODE            = 111;
  DH_F_DH_PUB_DECODE             = 108;
  DH_F_DH_PUB_ENCODE             = 109;
  DH_F_DO_DH_PRINT               = 100;
  DH_F_GENERATE_KEY              = 103;
  DH_F_PKEY_DH_CTRL_STR          = 120;
  DH_F_PKEY_DH_DERIVE            = 112;
  DH_F_PKEY_DH_INIT              = 125;
  DH_F_PKEY_DH_KEYGEN            = 113;

  // DH reason codes
  DH_R_BAD_GENERATOR             = 101;
  DH_R_BN_DECODE_ERROR           = 109;
  DH_R_BN_ERROR                  = 106;
  DH_R_CHECK_INVALID_J_VALUE     = 115;
  DH_R_CHECK_INVALID_Q_VALUE     = 116;
  DH_R_CHECK_PUBKEY_INVALID      = 122;
  DH_R_CHECK_PUBKEY_TOO_LARGE    = 123;
  DH_R_CHECK_PUBKEY_TOO_SMALL    = 124;
  DH_R_CHECK_P_NOT_PRIME         = 117;
  DH_R_CHECK_P_NOT_SAFE_PRIME    = 118;
  DH_R_CHECK_Q_NOT_PRIME         = 119;
  DH_R_DECODE_ERROR              = 104;
  DH_R_INVALID_PARAMETER_NAME    = 110;
  DH_R_INVALID_PARAMETER_NID     = 114;
  DH_R_INVALID_PUBKEY            = 102;
  DH_R_KDF_PARAMETER_ERROR       = 112;
  DH_R_KEYS_NOT_SET              = 108;
  DH_R_MISSING_PUBKEY            = 125;
  DH_R_MODULUS_TOO_LARGE         = 103;
  DH_R_NOT_SUITABLE_GENERATOR    = 120;
  DH_R_NO_PARAMETERS_SET         = 107;
  DH_R_NO_PRIVATE_VALUE          = 100;
  DH_R_PARAMETER_ENCODING_ERROR  = 105;
  DH_R_PEER_KEY_ERROR            = 111;
  DH_R_SHARED_INFO_ERROR         = 113;
  DH_R_UNABLE_TO_CHECK_GENERATOR = 121;

    { The EXTERNALSYM directive is ignored by FPC, however, it is used by Delphi as follows:
		
  	  The EXTERNALSYM directive prevents the specified Delphi symbol from appearing in header 
	  files generated for C++. }
	  
  {$EXTERNALSYM ERR_load_DH_strings}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
var
  ERR_load_DH_strings: function : TIdC_INT; cdecl = nil;

{$ELSE}
  function ERR_load_DH_strings: TIdC_INT cdecl; external CLibCrypto;

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
  ERR_load_DH_strings_procname = 'ERR_load_DH_strings';


  {$i TaurusTLSNoRetValOff.inc} 
function  ERR_ERR_load_DH_strings: TIdC_INT; 
begin
  ETaurusTLSAPIFunctionNotPresent.RaiseException(ERR_load_DH_strings_procname);
end;



  {$i TaurusTLSNoRetValOn.inc} 
  {$i TaurusTLSUnusedParamOff.inc}
procedure Load(const ADllHandle: TIdLibHandle; LibVersion: TIdC_UINT; const AFailed: TStringList);

var FuncLoadError: boolean;

begin
  ERR_load_DH_strings := LoadLibFunction(ADllHandle, ERR_load_DH_strings_procname);
  FuncLoadError := not assigned(ERR_load_DH_strings);
  if FuncLoadError then
  begin
    {$if not defined(ERR_load_DH_strings_allownil)}
    ERR_load_DH_strings := @ERR_ERR_load_DH_strings;
    {$ifend}
    {$if declared(ERR_load_DH_strings_introduced)}
    if LibVersion < ERR_load_DH_strings_introduced then
    begin
      {$if declared(FC_ERR_load_DH_strings)}
      ERR_load_DH_strings := @FC_ERR_load_DH_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if declared(ERR_load_DH_strings_removed)}
    if ERR_load_DH_strings_removed <= LibVersion then
    begin
      {$if declared(_ERR_load_DH_strings)}
      ERR_load_DH_strings := @_ERR_load_DH_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if not defined(ERR_load_DH_strings_allownil)}
    if FuncLoadError then
      AFailed.Add('ERR_load_DH_strings');
    {$ifend}
  end;


end;
  {$i TaurusTLSUnusedParamOn.inc}
procedure Unload;
begin
  ERR_load_DH_strings := nil;
end;
{$ELSE}
{$ENDIF}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
initialization
  Register_SSLLoader(@Load,'LibCrypto');
  Register_SSLUnloader(@Unload);
{$ENDIF}
end.
