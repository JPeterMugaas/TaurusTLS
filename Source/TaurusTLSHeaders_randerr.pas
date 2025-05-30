/// <exclude />
  (* This unit was generated using the script genTaurusTLSHdrs.sh from the source file TaurusTLSHeaders_randerr.h2pas
     It should not be modified directly. All changes should be made to TaurusTLSHeaders_randerr.h2pas
     and this file regenerated. TaurusTLSHeaders_randerr.h2pas is distributed with the full Indy
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
unit TaurusTLSHeaders_randerr;

interface

// Headers for OpenSSL 1.1.1
// randerr.h


uses
  IdCTypes,
  IdGlobal
  {$IFDEF OPENSSL_STATIC_LINK_MODEL}
  , TaurusTLSConsts
  {$ENDIF};

const
  (*
   * RAND function codes.
   *)
  RAND_F_DRBG_BYTES = 101;
  RAND_F_DRBG_GET_ENTROPY = 105;
  RAND_F_DRBG_SETUP = 117;
  RAND_F_GET_ENTROPY = 106;
  RAND_F_RAND_BYTES = 100;
  RAND_F_RAND_DRBG_ENABLE_LOCKING = 119;
  RAND_F_RAND_DRBG_GENERATE = 107;
  RAND_F_RAND_DRBG_GET_ENTROPY = 120;
  RAND_F_RAND_DRBG_GET_NONCE = 123;
  RAND_F_RAND_DRBG_INSTANTIATE = 108;
  RAND_F_RAND_DRBG_NEW = 109;
  RAND_F_RAND_DRBG_RESEED = 110;
  RAND_F_RAND_DRBG_RESTART = 102;
  RAND_F_RAND_DRBG_SET = 104;
  RAND_F_RAND_DRBG_SET_DEFAULTS = 121;
  RAND_F_RAND_DRBG_UNINSTANTIATE = 118;
  RAND_F_RAND_LOAD_FILE = 111;
  RAND_F_RAND_POOL_ACQUIRE_ENTROPY = 122;
  RAND_F_RAND_POOL_ADD = 103;
  RAND_F_RAND_POOL_ADD_BEGIN = 113;
  RAND_F_RAND_POOL_ADD_END = 114;
  RAND_F_RAND_POOL_ATTACH = 124;
  RAND_F_RAND_POOL_BYTES_NEEDED = 115;
  RAND_F_RAND_POOL_GROW = 125;
  RAND_F_RAND_POOL_NEW = 116;
  RAND_F_RAND_WRITE_FILE = 112;

  (*
   * RAND reason codes.
   *)
  RAND_R_ADDITIONAL_INPUT_TOO_LONG = 102;
  RAND_R_ALREADY_INSTANTIATED = 103;
  RAND_R_ARGUMENT_OUT_OF_RANGE = 105;
  RAND_R_CANNOT_OPEN_FILE = 121;
  RAND_R_DRBG_ALREADY_INITIALIZED = 129;
  RAND_R_DRBG_NOT_INITIALISED = 104;
  RAND_R_ENTROPY_INPUT_TOO_LONG = 106;
  RAND_R_ENTROPY_OUT_OF_RANGE = 124;
  RAND_R_ERROR_ENTROPY_POOL_WAS_IGNORED = 127;
  RAND_R_ERROR_INITIALISING_DRBG = 107;
  RAND_R_ERROR_INSTANTIATING_DRBG = 108;
  RAND_R_ERROR_RETRIEVING_ADDITIONAL_INPUT = 109;
  RAND_R_ERROR_RETRIEVING_ENTROPY = 110;
  RAND_R_ERROR_RETRIEVING_NONCE = 111;
  RAND_R_FAILED_TO_CREATE_LOCK = 126;
  RAND_R_FUNC_NOT_IMPLEMENTED = 101;
  RAND_R_FWRITE_ERROR = 123;
  RAND_R_GENERATE_ERROR = 112;
  RAND_R_INTERNAL_ERROR = 113;
  RAND_R_IN_ERROR_STATE = 114;
  RAND_R_NOT_A_REGULAR_FILE = 122;
  RAND_R_NOT_INSTANTIATED = 115;
  RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED = 128;
  RAND_R_PARENT_LOCKING_NOT_ENABLED = 130;
  RAND_R_PARENT_STRENGTH_TOO_WEAK = 131;
  RAND_R_PERSONALISATION_STRING_TOO_LONG = 116;
  RAND_R_PREDICTION_RESISTANCE_NOT_SUPPORTED = 133;
  RAND_R_PRNG_NOT_SEEDED = 100;
  RAND_R_RANDOM_POOL_OVERFLOW = 125;
  RAND_R_RANDOM_POOL_UNDERFLOW = 134;
  RAND_R_REQUEST_TOO_LARGE_FOR_DRBG = 117;
  RAND_R_RESEED_ERROR = 118;
  RAND_R_SELFTEST_FAILURE = 119;
  RAND_R_TOO_LITTLE_NONCE_REQUESTED = 135;
  RAND_R_TOO_MUCH_NONCE_REQUESTED = 136;
  RAND_R_UNSUPPORTED_DRBG_FLAGS = 132;
  RAND_R_UNSUPPORTED_DRBG_TYPE = 120;

    { The EXTERNALSYM directive is ignored by FPC, however, it is used by Delphi as follows:
		
  	  The EXTERNALSYM directive prevents the specified Delphi symbol from appearing in header 
	  files generated for C++. }
	  
  {$EXTERNALSYM ERR_load_RAND_strings}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
var
  ERR_load_RAND_strings: function : TIdC_INT; cdecl = nil;

{$ELSE}
  function ERR_load_RAND_strings: TIdC_INT cdecl; external CLibCrypto;

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
  ERR_load_RAND_strings_procname = 'ERR_load_RAND_strings';


  {$i TaurusTLSNoRetValOff.inc} 
function  ERR_ERR_load_RAND_strings: TIdC_INT; 
begin
  ETaurusTLSAPIFunctionNotPresent.RaiseException(ERR_load_RAND_strings_procname);
end;



  {$i TaurusTLSNoRetValOn.inc} 
  {$i TaurusTLSUnusedParamOff.inc}
procedure Load(const ADllHandle: TIdLibHandle; LibVersion: TIdC_UINT; const AFailed: TStringList);

var FuncLoadError: boolean;

begin
  ERR_load_RAND_strings := LoadLibFunction(ADllHandle, ERR_load_RAND_strings_procname);
  FuncLoadError := not assigned(ERR_load_RAND_strings);
  if FuncLoadError then
  begin
    {$if not defined(ERR_load_RAND_strings_allownil)}
    ERR_load_RAND_strings := @ERR_ERR_load_RAND_strings;
    {$ifend}
    {$if declared(ERR_load_RAND_strings_introduced)}
    if LibVersion < ERR_load_RAND_strings_introduced then
    begin
      {$if declared(FC_ERR_load_RAND_strings)}
      ERR_load_RAND_strings := @FC_ERR_load_RAND_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if declared(ERR_load_RAND_strings_removed)}
    if ERR_load_RAND_strings_removed <= LibVersion then
    begin
      {$if declared(_ERR_load_RAND_strings)}
      ERR_load_RAND_strings := @_ERR_load_RAND_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if not defined(ERR_load_RAND_strings_allownil)}
    if FuncLoadError then
      AFailed.Add('ERR_load_RAND_strings');
    {$ifend}
  end;
end;
 {$i TaurusTLSUnusedParamOn.inc}
procedure Unload;
begin
  ERR_load_RAND_strings := nil;
end;
{$ENDIF}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
initialization
  Register_SSLLoader(@Load,'LibCrypto');
  Register_SSLUnloader(@Unload);
{$ENDIF}
end.
