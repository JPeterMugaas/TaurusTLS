/// <exclude />
  (* This unit was generated using the script genTaurusTLSHdrs.sh from the source file TaurusTLSHeaders_pemerr.h2pas
     It should not be modified directly. All changes should be made to TaurusTLSHeaders_pemerr.h2pas
     and this file regenerated. TaurusTLSHeaders_pemerr.h2pas is distributed with the full Indy
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
unit TaurusTLSHeaders_pemerr;

interface

// Headers for OpenSSL 1.1.1
// pemerr.h


uses
  IdCTypes,
  IdGlobal
  {$IFDEF OPENSSL_STATIC_LINK_MODEL}
  , TaurusTLSConsts
  {$ENDIF};

const
  // PEM function codes
  PEM_F_B2I_DSS                      = 127;
  PEM_F_B2I_PVK_BIO                  = 128;
  PEM_F_B2I_RSA                      = 129;
  PEM_F_CHECK_BITLEN_DSA             = 130;
  PEM_F_CHECK_BITLEN_RSA             = 131;
  PEM_F_D2I_PKCS8PRIVATEKEY_BIO      = 120;
  PEM_F_D2I_PKCS8PRIVATEKEY_FP       = 121;
  PEM_F_DO_B2I                       = 132;
  PEM_F_DO_B2I_BIO                   = 133;
  PEM_F_DO_BLOB_HEADER               = 134;
  PEM_F_DO_I2B                       = 146;
  PEM_F_DO_PK8PKEY                   = 126;
  PEM_F_DO_PK8PKEY_FP                = 125;
  PEM_F_DO_PVK_BODY                  = 135;
  PEM_F_DO_PVK_HEADER                = 136;
  PEM_F_GET_HEADER_AND_DATA          = 143;
  PEM_F_GET_NAME                     = 144;
  PEM_F_I2B_PVK                      = 137;
  PEM_F_I2B_PVK_BIO                  = 138;
  PEM_F_LOAD_IV                      = 101;
  PEM_F_PEM_ASN1_READ                = 102;
  PEM_F_PEM_ASN1_READ_BIO            = 103;
  PEM_F_PEM_ASN1_WRITE               = 104;
  PEM_F_PEM_ASN1_WRITE_BIO           = 105;
  PEM_F_PEM_DEF_CALLBACK             = 100;
  PEM_F_PEM_DO_HEADER                = 106;
  PEM_F_PEM_GET_EVP_CIPHER_INFO      = 107;
  PEM_F_PEM_READ                     = 108;
  PEM_F_PEM_READ_BIO                 = 109;
  PEM_F_PEM_READ_BIO_DHPARAMS        = 141;
  PEM_F_PEM_READ_BIO_EX              = 145;
  PEM_F_PEM_READ_BIO_PARAMETERS      = 140;
  PEM_F_PEM_READ_BIO_PRIVATEKEY      = 123;
  PEM_F_PEM_READ_DHPARAMS            = 142;
  PEM_F_PEM_READ_PRIVATEKEY          = 124;
  PEM_F_PEM_SIGNFINAL                = 112;
  PEM_F_PEM_WRITE                    = 113;
  PEM_F_PEM_WRITE_BIO                = 114;
  PEM_F_PEM_WRITE_PRIVATEKEY         = 139;
  PEM_F_PEM_X509_INFO_READ           = 115;
  PEM_F_PEM_X509_INFO_READ_BIO       = 116;
  PEM_F_PEM_X509_INFO_WRITE_BIO      = 117;
  // PEM reason codes
  PEM_R_BAD_BASE64_DECODE            = 100;
  PEM_R_BAD_DECRYPT                  = 101;
  PEM_R_BAD_END_LINE                 = 102;
  PEM_R_BAD_IV_CHARS                 = 103;
  PEM_R_BAD_MAGIC_NUMBER             = 116;
  PEM_R_BAD_PASSWORD_READ            = 104;
  PEM_R_BAD_VERSION_NUMBER           = 117;
  PEM_R_BIO_WRITE_FAILURE            = 118;
  PEM_R_CIPHER_IS_NULL               = 127;
  PEM_R_ERROR_CONVERTING_PRIVATE_KEY = 115;
  PEM_R_EXPECTING_PRIVATE_KEY_BLOB   = 119;
  PEM_R_EXPECTING_PUBLIC_KEY_BLOB    = 120;
  PEM_R_HEADER_TOO_LONG              = 128;
  PEM_R_INCONSISTENT_HEADER          = 121;
  PEM_R_KEYBLOB_HEADER_PARSE_ERROR   = 122;
  PEM_R_KEYBLOB_TOO_SHORT            = 123;
  PEM_R_MISSING_DEK_IV               = 129;
  PEM_R_NOT_DEK_INFO                 = 105;
  PEM_R_NOT_ENCRYPTED                = 106;
  PEM_R_NOT_PROC_TYPE                = 107;
  PEM_R_NO_START_LINE                = 108;
  PEM_R_PROBLEMS_GETTING_PASSWORD    = 109;
  PEM_R_PVK_DATA_TOO_SHORT           = 124;
  PEM_R_PVK_TOO_SHORT                = 125;
  PEM_R_READ_KEY                     = 111;
  PEM_R_SHORT_HEADER                 = 112;
  PEM_R_UNEXPECTED_DEK_IV            = 130;
  PEM_R_UNSUPPORTED_CIPHER           = 113;
  PEM_R_UNSUPPORTED_ENCRYPTION       = 114;
  PEM_R_UNSUPPORTED_KEY_COMPONENTS   = 126;

    { The EXTERNALSYM directive is ignored by FPC, however, it is used by Delphi as follows:
		
  	  The EXTERNALSYM directive prevents the specified Delphi symbol from appearing in header 
	  files generated for C++. }
	  
  {$EXTERNALSYM ERR_load_PEM_strings}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
var
  ERR_load_PEM_strings: function : TIdC_INT; cdecl = nil;

{$ELSE}
  function ERR_load_PEM_strings: TIdC_INT cdecl; external CLibCrypto;

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
  ERR_load_PEM_strings_procname = 'ERR_load_PEM_strings';


  {$i TaurusTLSNoRetValOff.inc} 
function  ERR_ERR_load_PEM_strings: TIdC_INT; 
begin
  ETaurusTLSAPIFunctionNotPresent.RaiseException(ERR_load_PEM_strings_procname);
end;



  {$i TaurusTLSNoRetValOn.inc} 
  {$i TaurusTLSUnusedParamOff.inc}
procedure Load(const ADllHandle: TIdLibHandle; LibVersion: TIdC_UINT; const AFailed: TStringList);

var FuncLoadError: boolean;

begin
  ERR_load_PEM_strings := LoadLibFunction(ADllHandle, ERR_load_PEM_strings_procname);
  FuncLoadError := not assigned(ERR_load_PEM_strings);
  if FuncLoadError then
  begin
    {$if not defined(ERR_load_PEM_strings_allownil)}
    ERR_load_PEM_strings := @ERR_ERR_load_PEM_strings;
    {$ifend}
    {$if declared(ERR_load_PEM_strings_introduced)}
    if LibVersion < ERR_load_PEM_strings_introduced then
    begin
      {$if declared(FC_ERR_load_PEM_strings)}
      ERR_load_PEM_strings := @FC_ERR_load_PEM_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if declared(ERR_load_PEM_strings_removed)}
    if ERR_load_PEM_strings_removed <= LibVersion then
    begin
      {$if declared(_ERR_load_PEM_strings)}
      ERR_load_PEM_strings := @_ERR_load_PEM_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if not defined(ERR_load_PEM_strings_allownil)}
    if FuncLoadError then
      AFailed.Add('ERR_load_PEM_strings');
    {$ifend}
  end;
end;
  {$i TaurusTLSUnusedParamOn.inc}
procedure Unload;
begin
  ERR_load_PEM_strings := nil;
end;
{$ENDIF}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
initialization
  Register_SSLLoader(@Load,'LibCrypto');
  Register_SSLUnloader(@Unload);
{$ENDIF}
end.
