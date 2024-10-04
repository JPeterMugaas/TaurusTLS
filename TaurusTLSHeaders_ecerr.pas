  (* This unit was generated using the script genTaurusTLSHdrs.sh from the source file TaurusTLSHeaders_ecerr.h2pas
     It should not be modified directly. All changes should be made to TaurusTLSHeaders_ecerr.h2pas
     and this file regenerated. TaurusTLSHeaders_ecerr.h2pas is distributed with the full Indy
     Distribution.
   *)
   
{$i IdCompilerDefines.inc} 
{$i IdSSLTaurusTLSDefines.inc} 
{$IFNDEF USE_OPENSSL}
  { error Should not compile if USE_OPENSSL is not defined!!!}
{$ENDIF}
{******************************************************************************}
{                                                                              }
{            Indy (Internet Direct) - Internet Protocols Simplified            }
{                                                                              }
{            https://www.indyproject.org/                                      }
{            https://gitter.im/IndySockets/Indy                                }
{                                                                              }
{******************************************************************************}
{                                                                              }
{  This file is part of the Indy (Internet Direct) project, and is offered     }
{  under the dual-licensing agreement described on the Indy website.           }
{  (https://www.indyproject.org/license/)                                      }
{                                                                              }
{  Copyright:                                                                  }
{   (c) 1993-2020, Chad Z. Hower and the Indy Pit Crew. All rights reserved.   }
{                                                                              }
{******************************************************************************}
{                                                                              }
{                                                                              }
{******************************************************************************}

unit TaurusTLSHeaders_ecerr;

interface

// Headers for OpenSSL 1.1.1
// ecerr.h


uses
  IdCTypes,
  IdGlobal,
  IdSSLTaurusTLSConsts;

const
  (*
   * EC function codes.
   *)
  EC_F_BN_TO_FELEM = 224;
  EC_F_D2I_ECPARAMETERS = 144;
  EC_F_D2I_ECPKPARAMETERS = 145;
  EC_F_D2I_ECPRIVATEKEY = 146;
  EC_F_DO_EC_KEY_PRINT = 221;
  EC_F_ECDH_CMS_DECRYPT = 238;
  EC_F_ECDH_CMS_SET_SHARED_INFO = 239;
  EC_F_ECDH_COMPUTE_KEY = 246;
  EC_F_ECDH_SIMPLE_COMPUTE_KEY = 257;
  EC_F_ECDSA_DO_SIGN_EX = 251;
  EC_F_ECDSA_DO_VERIFY = 252;
  EC_F_ECDSA_SIGN_EX = 254;
  EC_F_ECDSA_SIGN_SETUP = 248;
  EC_F_ECDSA_SIG_NEW = 265;
  EC_F_ECDSA_VERIFY = 253;
  EC_F_ECD_ITEM_VERIFY = 270;
  EC_F_ECKEY_PARAM2TYPE = 223;
  EC_F_ECKEY_PARAM_DECODE = 212;
  EC_F_ECKEY_PRIV_DECODE = 213;
  EC_F_ECKEY_PRIV_ENCODE = 214;
  EC_F_ECKEY_PUB_DECODE = 215;
  EC_F_ECKEY_PUB_ENCODE = 216;
  EC_F_ECKEY_TYPE2PARAM = 220;
  EC_F_ECPARAMETERS_PRINT = 147;
  EC_F_ECPARAMETERS_PRINT_FP = 148;
  EC_F_ECPKPARAMETERS_PRINT = 149;
  EC_F_ECPKPARAMETERS_PRINT_FP = 150;
  EC_F_ECP_NISTZ256_GET_AFFINE = 240;
  EC_F_ECP_NISTZ256_INV_MOD_ORD = 275;
  EC_F_ECP_NISTZ256_MULT_PRECOMPUTE = 243;
  EC_F_ECP_NISTZ256_POINTS_MUL = 241;
  EC_F_ECP_NISTZ256_PRE_COMP_NEW = 244;
  EC_F_ECP_NISTZ256_WINDOWED_MUL = 242;
  EC_F_ECX_KEY_OP = 266;
  EC_F_ECX_PRIV_ENCODE = 267;
  EC_F_ECX_PUB_ENCODE = 268;
  EC_F_EC_ASN1_GROUP2CURVE = 153;
  EC_F_EC_ASN1_GROUP2FIELDID = 154;
  EC_F_EC_GF2M_MONTGOMERY_POINT_MULTIPLY = 208;
  EC_F_EC_GF2M_SIMPLE_FIELD_INV = 296;
  EC_F_EC_GF2M_SIMPLE_GROUP_CHECK_DISCRIMINANT = 159;
  EC_F_EC_GF2M_SIMPLE_GROUP_SET_CURVE = 195;
  EC_F_EC_GF2M_SIMPLE_LADDER_POST = 285;
  EC_F_EC_GF2M_SIMPLE_LADDER_PRE = 288;
  EC_F_EC_GF2M_SIMPLE_OCT2POINT = 160;
  EC_F_EC_GF2M_SIMPLE_POINT2OCT = 161;
  EC_F_EC_GF2M_SIMPLE_POINTS_MUL = 289;
  EC_F_EC_GF2M_SIMPLE_POINT_GET_AFFINE_COORDINATES = 162;
  EC_F_EC_GF2M_SIMPLE_POINT_SET_AFFINE_COORDINATES = 163;
  EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES = 164;
  EC_F_EC_GFP_MONT_FIELD_DECODE = 133;
  EC_F_EC_GFP_MONT_FIELD_ENCODE = 134;
  EC_F_EC_GFP_MONT_FIELD_INV = 297;
  EC_F_EC_GFP_MONT_FIELD_MUL = 131;
  EC_F_EC_GFP_MONT_FIELD_SET_TO_ONE = 209;
  EC_F_EC_GFP_MONT_FIELD_SQR = 132;
  EC_F_EC_GFP_MONT_GROUP_SET_CURVE = 189;
  EC_F_EC_GFP_NISTP224_GROUP_SET_CURVE = 225;
  EC_F_EC_GFP_NISTP224_POINTS_MUL = 228;
  EC_F_EC_GFP_NISTP224_POINT_GET_AFFINE_COORDINATES = 226;
  EC_F_EC_GFP_NISTP256_GROUP_SET_CURVE = 230;
  EC_F_EC_GFP_NISTP256_POINTS_MUL = 231;
  EC_F_EC_GFP_NISTP256_POINT_GET_AFFINE_COORDINATES = 232;
  EC_F_EC_GFP_NISTP521_GROUP_SET_CURVE = 233;
  EC_F_EC_GFP_NISTP521_POINTS_MUL = 234;
  EC_F_EC_GFP_NISTP521_POINT_GET_AFFINE_COORDINATES = 235;
  EC_F_EC_GFP_NIST_FIELD_MUL = 200;
  EC_F_EC_GFP_NIST_FIELD_SQR = 201;
  EC_F_EC_GFP_NIST_GROUP_SET_CURVE = 202;
  EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES = 287;
  EC_F_EC_GFP_SIMPLE_FIELD_INV = 298;
  EC_F_EC_GFP_SIMPLE_GROUP_CHECK_DISCRIMINANT = 165;
  EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE = 166;
  EC_F_EC_GFP_SIMPLE_MAKE_AFFINE = 102;
  EC_F_EC_GFP_SIMPLE_OCT2POINT = 103;
  EC_F_EC_GFP_SIMPLE_POINT2OCT = 104;
  EC_F_EC_GFP_SIMPLE_POINTS_MAKE_AFFINE = 137;
  EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES = 167;
  EC_F_EC_GFP_SIMPLE_POINT_SET_AFFINE_COORDINATES = 168;
  EC_F_EC_GFP_SIMPLE_SET_COMPRESSED_COORDINATES = 169;
  EC_F_EC_GROUP_CHECK = 170;
  EC_F_EC_GROUP_CHECK_DISCRIMINANT = 171;
  EC_F_EC_GROUP_COPY = 106;
  EC_F_EC_GROUP_GET_CURVE = 291;
  EC_F_EC_GROUP_GET_CURVE_GF2M = 172;
  EC_F_EC_GROUP_GET_CURVE_GFP = 130;
  EC_F_EC_GROUP_GET_DEGREE = 173;
  EC_F_EC_GROUP_GET_ECPARAMETERS = 261;
  EC_F_EC_GROUP_GET_ECPKPARAMETERS = 262;
  EC_F_EC_GROUP_GET_PENTANOMIAL_BASIS = 193;
  EC_F_EC_GROUP_GET_TRINOMIAL_BASIS = 194;
  EC_F_EC_GROUP_NEW = 108;
  EC_F_EC_GROUP_NEW_BY_CURVE_NAME = 174;
  EC_F_EC_GROUP_NEW_FROM_DATA = 175;
  EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS = 263;
  EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS = 264;
  EC_F_EC_GROUP_SET_CURVE = 292;
  EC_F_EC_GROUP_SET_CURVE_GF2M = 176;
  EC_F_EC_GROUP_SET_CURVE_GFP = 109;
  EC_F_EC_GROUP_SET_GENERATOR = 111;
  EC_F_EC_GROUP_SET_SEED = 286;
  EC_F_EC_KEY_CHECK_KEY = 177;
  EC_F_EC_KEY_COPY = 178;
  EC_F_EC_KEY_GENERATE_KEY = 179;
  EC_F_EC_KEY_NEW = 182;
  EC_F_EC_KEY_NEW_METHOD = 245;
  EC_F_EC_KEY_OCT2PRIV = 255;
  EC_F_EC_KEY_PRINT = 180;
  EC_F_EC_KEY_PRINT_FP = 181;
  EC_F_EC_KEY_PRIV2BUF = 279;
  EC_F_EC_KEY_PRIV2OCT = 256;
  EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES = 229;
  EC_F_EC_KEY_SIMPLE_CHECK_KEY = 258;
  EC_F_EC_KEY_SIMPLE_OCT2PRIV = 259;
  EC_F_EC_KEY_SIMPLE_PRIV2OCT = 260;
  EC_F_EC_PKEY_CHECK = 273;
  EC_F_EC_PKEY_PARAM_CHECK = 274;
  EC_F_EC_POINTS_MAKE_AFFINE = 136;
  EC_F_EC_POINTS_MUL = 290;
  EC_F_EC_POINT_ADD = 112;
  EC_F_EC_POINT_BN2POINT = 280;
  EC_F_EC_POINT_CMP = 113;
  EC_F_EC_POINT_COPY = 114;
  EC_F_EC_POINT_DBL = 115;
  EC_F_EC_POINT_GET_AFFINE_COORDINATES = 293;
  EC_F_EC_POINT_GET_AFFINE_COORDINATES_GF2M = 183;
  EC_F_EC_POINT_GET_AFFINE_COORDINATES_GFP = 116;
  EC_F_EC_POINT_GET_JPROJECTIVE_COORDINATES_GFP = 117;
  EC_F_EC_POINT_INVERT = 210;
  EC_F_EC_POINT_IS_AT_INFINITY = 118;
  EC_F_EC_POINT_IS_ON_CURVE = 119;
  EC_F_EC_POINT_MAKE_AFFINE = 120;
  EC_F_EC_POINT_NEW = 121;
  EC_F_EC_POINT_OCT2POINT = 122;
  EC_F_EC_POINT_POINT2BUF = 281;
  EC_F_EC_POINT_POINT2OCT = 123;
  EC_F_EC_POINT_SET_AFFINE_COORDINATES = 294;
  EC_F_EC_POINT_SET_AFFINE_COORDINATES_GF2M = 185;
  EC_F_EC_POINT_SET_AFFINE_COORDINATES_GFP = 124;
  EC_F_EC_POINT_SET_COMPRESSED_COORDINATES = 295;
  EC_F_EC_POINT_SET_COMPRESSED_COORDINATES_GF2M = 186;
  EC_F_EC_POINT_SET_COMPRESSED_COORDINATES_GFP = 125;
  EC_F_EC_POINT_SET_JPROJECTIVE_COORDINATES_GFP = 126;
  EC_F_EC_POINT_SET_TO_INFINITY = 127;
  EC_F_EC_PRE_COMP_NEW = 196;
  EC_F_EC_SCALAR_MUL_LADDER = 284;
  EC_F_EC_WNAF_MUL = 187;
  EC_F_EC_WNAF_PRECOMPUTE_MULT = 188;
  EC_F_I2D_ECPARAMETERS = 190;
  EC_F_I2D_ECPKPARAMETERS = 191;
  EC_F_I2D_ECPRIVATEKEY = 192;
  EC_F_I2O_ECPUBLICKEY = 151;
  EC_F_NISTP224_PRE_COMP_NEW = 227;
  EC_F_NISTP256_PRE_COMP_NEW = 236;
  EC_F_NISTP521_PRE_COMP_NEW = 237;
  EC_F_O2I_ECPUBLICKEY = 152;
  EC_F_OLD_EC_PRIV_DECODE = 222;
  EC_F_OSSL_ECDH_COMPUTE_KEY = 247;
  EC_F_OSSL_ECDSA_SIGN_SIG = 249;
  EC_F_OSSL_ECDSA_VERIFY_SIG = 250;
  EC_F_PKEY_ECD_CTRL = 271;
  EC_F_PKEY_ECD_DIGESTSIGN = 272;
  EC_F_PKEY_ECD_DIGESTSIGN25519 = 276;
  EC_F_PKEY_ECD_DIGESTSIGN448 = 277;
  EC_F_PKEY_ECX_DERIVE = 269;
  EC_F_PKEY_EC_CTRL = 197;
  EC_F_PKEY_EC_CTRL_STR = 198;
  EC_F_PKEY_EC_DERIVE = 217;
  EC_F_PKEY_EC_INIT = 282;
  EC_F_PKEY_EC_KDF_DERIVE = 283;
  EC_F_PKEY_EC_KEYGEN = 199;
  EC_F_PKEY_EC_PARAMGEN = 219;
  EC_F_PKEY_EC_SIGN = 218;
  EC_F_VALIDATE_ECX_DERIVE = 278;

  (*
   * EC reason codes.
   *)
  EC_R_ASN1_ERROR =   115;
  EC_R_BAD_SIGNATURE =   156;
  EC_R_BIGNUM_OUT_OF_RANGE =  144;
  EC_R_BUFFER_TOO_SMALL =  100;
  EC_R_CANNOT_INVERT =   165;
  EC_R_COORDINATES_OUT_OF_RANGE =  146;
  EC_R_CURVE_DOES_NOT_SUPPORT_ECDH =  160;
  EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING = 159;
  EC_R_D2I_ECPKPARAMETERS_FAILURE =  117;
  EC_R_DECODE_ERROR =   142;
  EC_R_DISCRIMINANT_IS_ZERO =  118;
  EC_R_EC_GROUP_NEW_BY_NAME_FAILURE =  119;
  EC_R_FIELD_TOO_LARGE =  143;
  EC_R_GF2M_NOT_SUPPORTED =  147;
  EC_R_GROUP2PKPARAMETERS_FAILURE =  120;
  EC_R_I2D_ECPKPARAMETERS_FAILURE =  121;
  EC_R_INCOMPATIBLE_OBJECTS =  101;
  EC_R_INVALID_ARGUMENT =  112;
  EC_R_INVALID_COMPRESSED_POINT =  110;
  EC_R_INVALID_COMPRESSION_BIT =  109;
  EC_R_INVALID_CURVE =   141;
  EC_R_INVALID_DIGEST =  151;
  EC_R_INVALID_DIGEST_TYPE =  138;
  EC_R_INVALID_ENCODING =  102;
  EC_R_INVALID_FIELD =   103;
  EC_R_INVALID_FORM =   104;
  EC_R_INVALID_GROUP_ORDER =  122;
  EC_R_INVALID_KEY =   116;
  EC_R_INVALID_OUTPUT_LENGTH =  161;
  EC_R_INVALID_PEER_KEY =  133;
  EC_R_INVALID_PENTANOMIAL_BASIS =  132;
  EC_R_INVALID_PRIVATE_KEY =  123;
  EC_R_INVALID_TRINOMIAL_BASIS =  137;
  EC_R_KDF_PARAMETER_ERROR =  148;
  EC_R_KEYS_NOT_SET =   140;
  EC_R_LADDER_POST_FAILURE =  136;
  EC_R_LADDER_PRE_FAILURE =  153;
  EC_R_LADDER_STEP_FAILURE =  162;
  EC_R_MISSING_PARAMETERS =  124;
  EC_R_MISSING_PRIVATE_KEY =  125;
  EC_R_NEED_NEW_SETUP_VALUES =  157;
  EC_R_NOT_A_NIST_PRIME =  135;
  EC_R_NOT_IMPLEMENTED =  126;
  EC_R_NOT_INITIALIZED =  111;
  EC_R_NO_PARAMETERS_SET =  139;
  EC_R_NO_PRIVATE_VALUE =  154;
  EC_R_OPERATION_NOT_SUPPORTED =  152;
  EC_R_PASSED_NULL_PARAMETER =  134;
  EC_R_PEER_KEY_ERROR =  149;
  EC_R_PKPARAMETERS2GROUP_FAILURE =  127;
  EC_R_POINT_ARITHMETIC_FAILURE =  155;
  EC_R_POINT_AT_INFINITY =  106;
  EC_R_POINT_COORDINATES_BLIND_FAILURE = 163;
  EC_R_POINT_IS_NOT_ON_CURVE =  107;
  EC_R_RANDOM_NUMBER_GENERATION_FAILED = 158;
  EC_R_SHARED_INFO_ERROR =  150;
  EC_R_SLOT_FULL =   108;
  EC_R_UNDEFINED_GENERATOR =  113;
  EC_R_UNDEFINED_ORDER =  128;
  EC_R_UNKNOWN_COFACTOR =  164;
  EC_R_UNKNOWN_GROUP =   129;
  EC_R_UNKNOWN_ORDER =   114;
  EC_R_UNSUPPORTED_FIELD =  131;
  EC_R_WRONG_CURVE_PARAMETERS =  145;
  EC_R_WRONG_ORDER =   130;

    { The EXTERNALSYM directive is ignored by FPC, however, it is used by Delphi as follows:
		
  	  The EXTERNALSYM directive prevents the specified Delphi symbol from appearing in header 
	  files generated for C++. }
	  
  {$EXTERNALSYM ERR_load_EC_strings}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
var
  ERR_load_EC_strings: function : TIdC_INT; cdecl = nil;

{$ELSE}
  function ERR_load_EC_strings: TIdC_INT cdecl; external CLibCrypto;

{$ENDIF}

implementation

  uses
    classes, 
    IdSSLTaurusTLSExceptionHandlers, 
    IdResourceStringsTaurusTLS
  {$IFNDEF OPENSSL_STATIC_LINK_MODEL}
    ,IdSSLTaurusTLSLoader
  {$ENDIF};
  

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
const
  ERR_load_EC_strings_procname = 'ERR_load_EC_strings';


{$WARN  NO_RETVAL OFF}
function  ERR_ERR_load_EC_strings: TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(ERR_load_EC_strings_procname);
end;



{$WARN  NO_RETVAL ON}

procedure Load(const ADllHandle: TIdLibHandle; LibVersion: TIdC_UINT; const AFailed: TStringList);

var FuncLoadError: boolean;

begin
  ERR_load_EC_strings := LoadLibFunction(ADllHandle, ERR_load_EC_strings_procname);
  FuncLoadError := not assigned(ERR_load_EC_strings);
  if FuncLoadError then
  begin
    {$if not defined(ERR_load_EC_strings_allownil)}
    ERR_load_EC_strings := @ERR_ERR_load_EC_strings;
    {$ifend}
    {$if declared(ERR_load_EC_strings_introduced)}
    if LibVersion < ERR_load_EC_strings_introduced then
    begin
      {$if declared(FC_ERR_load_EC_strings)}
      ERR_load_EC_strings := @FC_ERR_load_EC_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if declared(ERR_load_EC_strings_removed)}
    if ERR_load_EC_strings_removed <= LibVersion then
    begin
      {$if declared(_ERR_load_EC_strings)}
      ERR_load_EC_strings := @_ERR_load_EC_strings;
      {$ifend}
      FuncLoadError := false;
    end;
    {$ifend}
    {$if not defined(ERR_load_EC_strings_allownil)}
    if FuncLoadError then
      AFailed.Add('ERR_load_EC_strings');
    {$ifend}
  end;


end;

procedure Unload;
begin
  ERR_load_EC_strings := nil;
end;
{$ELSE}
{$ENDIF}

{$IFNDEF OPENSSL_STATIC_LINK_MODEL}
initialization
  Register_SSLLoader(@Load,'LibCrypto');
  Register_SSLUnloader(@Unload);
{$ENDIF}
end.
