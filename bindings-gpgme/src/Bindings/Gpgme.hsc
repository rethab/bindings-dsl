#include <bindings.dsl.h>
#include <gpgme.h>

-- | <http://www.gnupg.org/gpgme.html>

module Bindings.Gpgme where
#strict_import

-- * Basic types
#integral_t off_t
#integral_t ssize_t

#integral_t gpgme_ctx_t
#integral_t gpgme_data_t

-- * Errors
#integral_t gpg_error_t
#integral_t gpgme_error_t
#integral_t gpg_err_code_t
#integral_t gpgme_err_code_t
#integral_t gpg_err_source_t
#integral_t gpgme_err_source_t

#cinline gpgme_err_make , <gpgme_err_source_t> -> <gpgme_err_code_t> -> IO <gpgme_error_t>
#cinline gpgme_error , <gpgme_err_code_t> -> IO <gpgme_error_t>
#cinline gpgme_err_code , <gpgme_error_t> -> IO <gpgme_err_code_t>
#cinline gpgme_err_source , <gpgme_error_t> -> IO <gpgme_err_source_t>

#ccall gpgme_strerror , <gpgme_error_t> -> IO CString
#ccall gpgme_strerror_r , <gpg_error_t> -> CString -> CSize -> IO CInt
#ccall gpgme_strsource , <gpgme_error_t> -> IO CString
#ccall gpgme_err_code_from_errno , CInt -> IO <gpgme_err_code_t>
#ccall gpgme_err_code_to_errno , <gpgme_err_code_t> -> IO CInt
#ccall gpgme_err_make_from_errno , <gpgme_err_source_t> -> CInt -> IO <gpgme_error_t>
#ccall gpgme_error_from_errno , CInt -> IO <gpgme_err_code_t>

-- * Data encoding
#integral_t gpgme_data_encoding_t
#num GPGME_DATA_ENCODING_NONE
#num GPGME_DATA_ENCODING_BINARY
#num GPGME_DATA_ENCODING_BASE64
#num GPGME_DATA_ENCODING_ARMOR
#if GPGME_VERSION_NUMBER >= 0x010200
#num GPGME_DATA_ENCODING_URL
#num GPGME_DATA_ENCODING_URLESC
#num GPGME_DATA_ENCODING_URL0
#endif
#if GPGME_VERSION_NUMBER >= 0x010700
#num GPGME_DATA_ENCODING_MIME
#endif

-- * Data types
#if GPGME_VERSION_NUMBER >= 0x010403
#integral_t gpgme_data_type_t
#num GPGME_DATA_TYPE_INVALID
#num GPGME_DATA_TYPE_UNKNOWN
#num GPGME_DATA_TYPE_PGP_SIGNED
#num GPGME_DATA_TYPE_PGP_ENCRYPTED
#num GPGME_DATA_TYPE_PGP_OTHER
#num GPGME_DATA_TYPE_PGP_KEY
#num GPGME_DATA_TYPE_PGP_SIGNATURE
#num GPGME_DATA_TYPE_CMS_SIGNED
#num GPGME_DATA_TYPE_CMS_ENCRYPTED
#num GPGME_DATA_TYPE_CMS_OTHER
#num GPGME_DATA_TYPE_X509_CERT
#num GPGME_DATA_TYPE_PKCS12
#endif

-- * Algorithms
-- ** Public key algorithms
#integral_t gpgme_pubkey_algo_t
#num GPGME_PK_RSA
#num GPGME_PK_RSA_E
#num GPGME_PK_RSA_S
#num GPGME_PK_ELG_E
#num GPGME_PK_DSA
#num GPGME_PK_ELG
#num GPGME_PK_ECC
#num GPGME_PK_ECDSA
#num GPGME_PK_ECDH
#num GPGME_PK_EDDSA
#if GPGME_VERSION_NUMBER >= 0x011801
#num GPGME_PK_KYBER
#endif

-- ** Hash algorithms
#integral_t gpgme_hash_algo_t
#num GPGME_MD_NONE
#num GPGME_MD_MD5
#num GPGME_MD_SHA1
#num GPGME_MD_RMD160
#num GPGME_MD_MD2
#num GPGME_MD_TIGER
#num GPGME_MD_HAVAL
#num GPGME_MD_SHA256
#num GPGME_MD_SHA384
#num GPGME_MD_SHA512
#num GPGME_MD_MD4
#num GPGME_MD_CRC32
#num GPGME_MD_CRC32_RFC1510
#num GPGME_MD_CRC24_RFC2440
#if GPGME_VERSION_NUMBER >= 0x010500
#num GPGME_MD_SHA224
#endif

-- * Signature mode
#integral_t gpgme_sig_mode_t
#num GPGME_SIG_MODE_NORMAL
#num GPGME_SIG_MODE_DETACH
#num GPGME_SIG_MODE_CLEAR
#if GPGME_VERSION_NUMBER >= 0x011300
#num GPGME_SIG_MODE_ARCHIVE
#endif
#if GPGME_VERSION_NUMBER >= 0x011800
#num GPGME_SIG_MODE_FILE
#endif

-- * Identity validity
#integral_t gpgme_validity_t
#num GPGME_VALIDITY_UNKNOWN
#num GPGME_VALIDITY_UNDEFINED
#num GPGME_VALIDITY_NEVER
#num GPGME_VALIDITY_MARGINAL
#num GPGME_VALIDITY_FULL
#num GPGME_VALIDITY_ULTIMATE

-- * Protocols
#integral_t gpgme_protocol_t
#num GPGME_PROTOCOL_OpenPGP
#num GPGME_PROTOCOL_CMS
#num GPGME_PROTOCOL_GPGCONF
#num GPGME_PROTOCOL_UNKNOWN
#if GPGME_VERSION_NUMBER >= 0x010200
#num GPGME_PROTOCOL_ASSUAN
#endif
#if GPGME_VERSION_NUMBER >= 0x010300
#num GPGME_PROTOCOL_G13
#num GPGME_PROTOCOL_UISERVER
#num GPGME_PROTOCOL_DEFAULT
#endif
#if GPGME_VERSION_NUMBER >= 0x010500
#num GPGME_PROTOCOL_SPAWN
#endif

-- * Key list modes
#integral_t gpgme_keylist_mode_t
#num GPGME_KEYLIST_MODE_LOCAL
#num GPGME_KEYLIST_MODE_EXTERN
#num GPGME_KEYLIST_MODE_SIGS
#num GPGME_KEYLIST_MODE_SIG_NOTATIONS
#num GPGME_KEYLIST_MODE_VALIDATE
#if GPGME_VERSION_NUMBER >= 0x010200
#num GPGME_KEYLIST_MODE_EPHEMERAL
#endif
#if GPGME_VERSION_NUMBER >= 0x010501
#num GPGME_KEYLIST_MODE_WITH_SECRET
#endif
#if GPGME_VERSION_NUMBER >= 0x010700
#num GPGME_KEYLIST_MODE_WITH_TOFU
#endif
#if GPGME_VERSION_NUMBER >= 0x010b00
#num GPGME_KEYLIST_MODE_LOCATE
#endif
#if GPGME_VERSION_NUMBER >= 0x010e00
#num GPGME_KEYLIST_MODE_WITH_KEYGRIP
#endif
#if GPGME_VERSION_NUMBER >= 0x011200
#num GPGME_KEYLIST_MODE_FORCE_EXTERN
#num GPGME_KEYLIST_MODE_LOCATE_EXTERNAL
#endif
#if GPGME_VERSION_NUMBER >= 0x011700
#num GPGME_KEYLIST_MODE_WITH_V5FPR
#endif

-- * Audit log flags
#num GPGME_AUDITLOG_HTML
#num GPGME_AUDITLOG_WITH_HELP
#if GPGME_VERSION_NUMBER >= 0x010c00
#num GPGME_AUDITLOG_DEFAULT
#num GPGME_AUDITLOG_DIAG
#endif

-- * Signature notations
#integral_t gpgme_sig_notation_flags_t
#num GPGME_SIG_NOTATION_HUMAN_READABLE
#num GPGME_SIG_NOTATION_CRITICAL
#if GPGME_VERSION_NUMBER >= 0x020100
#num GPGME_SIG_NOTATION_UNPROTECTED
#endif

#starttype struct _gpgme_sig_notation
#field next , Ptr <_gpgme_sig_notation>
#field name , CString
#field value , CString
#field name_len , CInt
#field value_len , CInt
#field flags , <gpgme_sig_notation_flags_t>
#stoptype
#synonym_t gpgme_sig_notation_t , Ptr <_gpgme_sig_notation>

-- * Status codes
#integral_t gpgme_status_code_t
#num GPGME_STATUS_EOF
#num GPGME_STATUS_ENTER
#num GPGME_STATUS_LEAVE
#num GPGME_STATUS_ABORT
#num GPGME_STATUS_GOODSIG
#num GPGME_STATUS_BADSIG
#num GPGME_STATUS_ERRSIG
#num GPGME_STATUS_BADARMOR
#num GPGME_STATUS_RSA_OR_IDEA
#num GPGME_STATUS_KEYEXPIRED
#num GPGME_STATUS_KEYREVOKED
#num GPGME_STATUS_TRUST_UNDEFINED
#num GPGME_STATUS_TRUST_NEVER
#num GPGME_STATUS_TRUST_MARGINAL
#num GPGME_STATUS_TRUST_FULLY
#num GPGME_STATUS_TRUST_ULTIMATE
#num GPGME_STATUS_SHM_INFO
#num GPGME_STATUS_SHM_GET
#num GPGME_STATUS_SHM_GET_BOOL
#num GPGME_STATUS_SHM_GET_HIDDEN
#num GPGME_STATUS_NEED_PASSPHRASE
#num GPGME_STATUS_VALIDSIG
#num GPGME_STATUS_SIG_ID
#num GPGME_STATUS_ENC_TO
#num GPGME_STATUS_NODATA
#num GPGME_STATUS_BAD_PASSPHRASE
#num GPGME_STATUS_NO_PUBKEY
#num GPGME_STATUS_NO_SECKEY
#num GPGME_STATUS_NEED_PASSPHRASE_SYM
#num GPGME_STATUS_DECRYPTION_FAILED
#num GPGME_STATUS_DECRYPTION_OKAY
#num GPGME_STATUS_MISSING_PASSPHRASE
#num GPGME_STATUS_GOOD_PASSPHRASE
#num GPGME_STATUS_GOODMDC
#num GPGME_STATUS_BADMDC
#num GPGME_STATUS_ERRMDC
#num GPGME_STATUS_IMPORTED
#num GPGME_STATUS_IMPORT_OK
#num GPGME_STATUS_IMPORT_PROBLEM
#num GPGME_STATUS_IMPORT_RES
#num GPGME_STATUS_FILE_START
#num GPGME_STATUS_FILE_DONE
#num GPGME_STATUS_FILE_ERROR
#num GPGME_STATUS_BEGIN_DECRYPTION
#num GPGME_STATUS_END_DECRYPTION
#num GPGME_STATUS_BEGIN_ENCRYPTION
#num GPGME_STATUS_END_ENCRYPTION
#num GPGME_STATUS_DELETE_PROBLEM
#num GPGME_STATUS_GET_BOOL
#num GPGME_STATUS_GET_LINE
#num GPGME_STATUS_GET_HIDDEN
#num GPGME_STATUS_GOT_IT
#num GPGME_STATUS_PROGRESS
#num GPGME_STATUS_SIG_CREATED
#num GPGME_STATUS_SESSION_KEY
#num GPGME_STATUS_NOTATION_NAME
#num GPGME_STATUS_NOTATION_DATA
#num GPGME_STATUS_POLICY_URL
#num GPGME_STATUS_BEGIN_STREAM
#num GPGME_STATUS_END_STREAM
#num GPGME_STATUS_KEY_CREATED
#num GPGME_STATUS_USERID_HINT
#num GPGME_STATUS_UNEXPECTED
#num GPGME_STATUS_INV_RECP
#num GPGME_STATUS_NO_RECP
#num GPGME_STATUS_ALREADY_SIGNED
#num GPGME_STATUS_SIGEXPIRED
#num GPGME_STATUS_EXPSIG
#num GPGME_STATUS_EXPKEYSIG
#num GPGME_STATUS_TRUNCATED
#num GPGME_STATUS_ERROR
#num GPGME_STATUS_NEWSIG
#num GPGME_STATUS_REVKEYSIG
#num GPGME_STATUS_SIG_SUBPACKET
#num GPGME_STATUS_NEED_PASSPHRASE_PIN
#num GPGME_STATUS_SC_OP_FAILURE
#num GPGME_STATUS_SC_OP_SUCCESS
#num GPGME_STATUS_CARDCTRL
#num GPGME_STATUS_BACKUP_KEY_CREATED
#num GPGME_STATUS_PKA_TRUST_BAD
#num GPGME_STATUS_PKA_TRUST_GOOD
#num GPGME_STATUS_PLAINTEXT

-- * Engine information
#starttype struct _gpgme_engine_info
#field next , Ptr <_gpgme_engine_info>
#field protocol , <gpgme_protocol_t>
#field file_name , CString
#field version , CString
#field req_version , CString
#field home_dir , CString
#stoptype
#synonym_t gpgme_engine_info_t , Ptr <_gpgme_engine_info>

-- * Trust-on-first-use (TOFU)
#if GPGME_VERSION_NUMBER >= 0x010700
#integral_t gpgme_tofu_policy_t
#num GPGME_TOFU_POLICY_NONE
#num GPGME_TOFU_POLICY_AUTO
#num GPGME_TOFU_POLICY_GOOD
#num GPGME_TOFU_POLICY_UNKNOWN
#num GPGME_TOFU_POLICY_BAD
#num GPGME_TOFU_POLICY_ASK

-- The @validity@ and @policy@ members are C bitfields; read them with
-- 'c'gpgme_tofu_info_validity' and 'c'gpgme_tofu_info_policy'.
#starttype struct _gpgme_tofu_info
#field next , Ptr <_gpgme_tofu_info>
#field signcount , CUShort
#field encrcount , CUShort
#field signfirst , CULong
#field signlast , CULong
#field encrfirst , CULong
#field encrlast , CULong
#field description , CString
#stoptype
#synonym_t gpgme_tofu_info_t , Ptr <_gpgme_tofu_info>
#endif

-- * Revocation keys
#if GPGME_VERSION_NUMBER >= 0x011800
-- The @sensitive@ member is a C bitfield; read it with
-- 'c'gpgme_revocation_key_sensitive'.
#starttype struct _gpgme_revocation_key
#field next , Ptr <_gpgme_revocation_key>
#field pubkey_algo , <gpgme_pubkey_algo_t>
#field fpr , CString
#field key_class , CUInt
#stoptype
#synonym_t gpgme_revocation_key_t , Ptr <_gpgme_revocation_key>
#endif

-- * Keys
--
-- The capability and status members of these structs (@revoked@, @expired@,
-- @can_encrypt@, ...) are C bitfields, which have no representation as record
-- fields here. They are exposed as the @c'gpgme_key_*@, @c'gpgme_subkey_*@,
-- @c'gpgme_user_id_*@ and @c'gpgme_key_sig_*@ accessors further down.
#starttype struct _gpgme_subkey
#field next , Ptr <_gpgme_subkey>
#field pubkey_algo , <gpgme_pubkey_algo_t>
#field length , CUInt
#field keyid , CString
#field fpr , CString
#field timestamp , CLong
#field expires , CLong
#field card_number , CString
#if GPGME_VERSION_NUMBER >= 0x010500
#field curve , CString
#endif
#if GPGME_VERSION_NUMBER >= 0x010700
#field keygrip , CString
#endif
#if GPGME_VERSION_NUMBER >= 0x011700
#field v5fpr , CString
#endif
#stoptype
#synonym_t gpgme_subkey_t , Ptr <_gpgme_subkey>

#starttype struct _gpgme_key_sig
#field next , Ptr <_gpgme_key_sig>
#field pubkey_algo , <gpgme_pubkey_algo_t>
#field keyid , CString
#field timestamp , CLong
#field expires , CLong
#field status , <gpgme_error_t>
#field uid , CString
#field name , CString
#field email , CString
#field comment , CString
#field sig_class , CUInt
#field notations , <gpgme_sig_notation_t>
#if GPGME_VERSION_NUMBER >= 0x011000
#field trust_scope , CString
#endif
#stoptype
#synonym_t gpgme_key_sig_t , Ptr <_gpgme_key_sig>

#starttype struct _gpgme_user_id
#field next , Ptr <_gpgme_user_id>
#field validity , <gpgme_validity_t>
#field uid , CString
#field name , CString
#field email , CString
#field comment , CString
#field signatures , <gpgme_key_sig_t>
#if GPGME_VERSION_NUMBER >= 0x010700
#field address , CString
#field tofu , <gpgme_tofu_info_t>
#endif
#if GPGME_VERSION_NUMBER >= 0x010900
#field last_update , CULong
#endif
#if GPGME_VERSION_NUMBER >= 0x010e00
#field uidhash , CString
#endif
#stoptype
#synonym_t gpgme_user_id_t , Ptr <_gpgme_user_id>

#starttype struct _gpgme_key
#field protocol , <gpgme_protocol_t>
#field issuer_serial , CString
#field issuer_name , CString
#field chain_id , CString
#field owner_trust , <gpgme_validity_t>
#field subkeys , <gpgme_subkey_t>
#field uids , <gpgme_user_id_t>
#field keylist_mode , <gpgme_keylist_mode_t>
#if GPGME_VERSION_NUMBER >= 0x010700
#field fpr , CString
#endif
#if GPGME_VERSION_NUMBER >= 0x010900
#field last_update , CULong
#endif
#if GPGME_VERSION_NUMBER >= 0x011800
#field revocation_keys , <gpgme_revocation_key_t>
#endif
#stoptype
#synonym_t gpgme_key_t , Ptr <_gpgme_key>

-- * Callback types
#callback_t gpgme_passphrase_cb_t , Ptr () -> CString -> CString -> CInt -> CInt -> IO <gpgme_error_t>
#callback_t gpgme_progress_cb_t , Ptr () -> CString -> CInt -> CInt -> CInt -> IO ()
#callback_t gpgme_edit_cb_t , Ptr () -> <gpgme_status_code_t> -> CString -> CInt -> IO <gpgme_error_t>
#if GPGME_VERSION_NUMBER >= 0x010600
#callback_t gpgme_status_cb_t , Ptr () -> CString -> CString -> IO <gpgme_error_t>
#endif
#if GPGME_VERSION_NUMBER >= 0x010700
-- The replacement for the deprecated 'gpgme_edit_cb_t'.
#callback_t gpgme_interact_cb_t , Ptr () -> CString -> CString -> CInt -> IO <gpgme_error_t>
#endif

-- * Creating and configuring contexts
#ccall gpgme_new , Ptr <gpgme_ctx_t> -> IO <gpgme_error_t>
#ccall gpgme_release , <gpgme_ctx_t> -> IO ()
#ccall gpgme_set_protocol , <gpgme_ctx_t> -> <gpgme_protocol_t> -> IO <gpgme_error_t>
#ccall gpgme_get_protocol , <gpgme_ctx_t> -> IO <gpgme_protocol_t>
#ccall gpgme_get_protocol_name , <gpgme_protocol_t> -> IO CString
#ccall gpgme_set_armor , <gpgme_ctx_t> -> CInt -> IO ()
#ccall gpgme_get_armor , <gpgme_ctx_t> -> IO CInt
#ccall gpgme_set_textmode , <gpgme_ctx_t> -> CInt -> IO ()
#ccall gpgme_get_textmode , <gpgme_ctx_t> -> IO CInt

#num GPGME_INCLUDE_CERTS_DEFAULT

#ccall gpgme_set_include_certs , <gpgme_ctx_t> -> CInt -> IO ()
#ccall gpgme_get_include_certs , <gpgme_ctx_t> -> IO CInt
#ccall gpgme_set_keylist_mode , <gpgme_ctx_t> -> <gpgme_keylist_mode_t> -> IO <gpgme_error_t>
#ccall gpgme_get_keylist_mode , <gpgme_ctx_t> -> IO <gpgme_keylist_mode_t>
#ccall gpgme_set_passphrase_cb , <gpgme_ctx_t> -> <gpgme_passphrase_cb_t> -> Ptr () -> IO ()
#ccall gpgme_get_passphrase_cb , <gpgme_ctx_t> -> Ptr <gpgme_passphrase_cb_t> -> Ptr (Ptr ()) -> IO ()
#ccall gpgme_set_progress_cb , <gpgme_ctx_t> -> <gpgme_progress_cb_t> -> Ptr () -> IO ()
#ccall gpgme_get_progress_cb , <gpgme_ctx_t> -> Ptr <gpgme_progress_cb_t> -> Ptr (Ptr ()) -> IO ()
#ccall gpgme_set_locale , <gpgme_ctx_t> -> CInt -> CString -> IO <gpgme_error_t>
#ccall gpgme_ctx_get_engine_info , <gpgme_ctx_t> -> IO <gpgme_engine_info_t>
#ccall gpgme_ctx_set_engine_info , <gpgme_ctx_t> -> <gpgme_protocol_t> -> CString -> CString -> IO <gpgme_error_t>
#ccall gpgme_pubkey_algo_name , <gpgme_pubkey_algo_t> -> IO CString
#ccall gpgme_hash_algo_name , <gpgme_hash_algo_t> -> IO CString
#ccall gpgme_signers_clear , <gpgme_ctx_t> -> IO ()
#ccall gpgme_signers_add , <gpgme_ctx_t> -> <gpgme_key_t> -> IO <gpgme_error_t>
#ccall gpgme_signers_enum , <gpgme_ctx_t> -> CInt -> IO <gpgme_key_t>
#ccall gpgme_sig_notation_clear , <gpgme_ctx_t> -> IO ()
#ccall gpgme_sig_notation_add , <gpgme_ctx_t> -> CString -> CString -> <gpgme_sig_notation_flags_t> -> IO <gpgme_error_t>
#ccall gpgme_sig_notation_get , <gpgme_ctx_t> -> IO <gpgme_sig_notation_t>

#if GPGME_VERSION_NUMBER >= 0x010403
#ccall gpgme_signers_count , <gpgme_ctx_t> -> IO CUInt
#endif

#if GPGME_VERSION_NUMBER >= 0x010600
-- | Whether to run the engine without contacting the network.
#ccall gpgme_set_offline , <gpgme_ctx_t> -> CInt -> IO ()
#ccall gpgme_get_offline , <gpgme_ctx_t> -> IO CInt
#ccall gpgme_set_status_cb , <gpgme_ctx_t> -> <gpgme_status_cb_t> -> Ptr () -> IO ()
#ccall gpgme_get_status_cb , <gpgme_ctx_t> -> Ptr <gpgme_status_cb_t> -> Ptr (Ptr ()) -> IO ()
#endif

#if GPGME_VERSION_NUMBER >= 0x010700
-- | The generic escape hatch for per-context options that have no dedicated
-- setter, e.g. @\"redraw\"@, @\"full-status\"@ or @\"export-filter\"@.
#ccall gpgme_set_ctx_flag , <gpgme_ctx_t> -> CString -> CString -> IO <gpgme_error_t>
#endif
#if GPGME_VERSION_NUMBER >= 0x010800
#ccall gpgme_get_ctx_flag , <gpgme_ctx_t> -> CString -> IO CString
-- | The address to embed as the sender of a signature, used by gpg to pick
-- the signing key and by the verifier to check it.
#ccall gpgme_set_sender , <gpgme_ctx_t> -> CString -> IO <gpgme_error_t>
#ccall gpgme_get_sender , <gpgme_ctx_t> -> IO CString
#endif

#if GPGME_VERSION_NUMBER >= 0x010400
-- | Set a flag on the library itself. Must be called before 'c'gpgme_check_version'.
#ccall gpgme_set_global_flag , CString -> CString -> IO CInt
#endif

#if GPGME_VERSION_NUMBER >= 0x010700
#ccall gpgme_pubkey_algo_string , <gpgme_subkey_t> -> IO CString
#endif
#if GPGME_VERSION_NUMBER >= 0x010701
-- | Extract the mail address from a user ID. The result must be 'c'gpgme_free'd.
#ccall gpgme_addrspec_from_uid , CString -> IO CString
#endif

#if GPGME_VERSION_NUMBER >= 0x010200
#ccall gpgme_result_ref , Ptr () -> IO ()
#ccall gpgme_result_unref , Ptr () -> IO ()
#endif

-- * IO events
#callback_t gpgme_io_cb_t , Ptr () -> CInt -> IO <gpgme_error_t>
#callback_t gpgme_register_io_cb_t , Ptr () -> CInt -> CInt -> <gpgme_io_cb_t> -> Ptr () -> Ptr (Ptr ()) -> IO <gpgme_error_t>
#callback_t gpgme_remove_io_cb_t , Ptr () -> IO ()

#integral_t gpgme_event_io_t
#num GPGME_EVENT_START
#num GPGME_EVENT_DONE
#num GPGME_EVENT_NEXT_KEY
#if GPGME_VERSION_NUMBER < 0x020000
#num GPGME_EVENT_NEXT_TRUSTITEM
#endif

#callback_t gpgme_event_io_cb_t , Ptr () -> <gpgme_event_io_t> -> Ptr () -> IO ()

#starttype struct gpgme_io_cbs
#field add , <gpgme_register_io_cb_t>
#field add_priv , Ptr ()
#field remove , <gpgme_remove_io_cb_t>
#field event , <gpgme_event_io_cb_t>
#field event_priv , Ptr ()
#stoptype

#synonym_t gpgme_io_cbs_t , Ptr <gpgme_io_cbs>

#ccall gpgme_set_io_cbs , <gpgme_ctx_t> -> <gpgme_io_cbs_t> -> IO ()
#ccall gpgme_get_io_cbs , <gpgme_ctx_t> -> <gpgme_io_cbs_t> -> IO ()
#ccall gpgme_wait , <gpgme_ctx_t> -> Ptr <gpgme_error_t> -> CInt -> IO <gpgme_ctx_t>
#ccall gpgme_cancel , <gpgme_ctx_t> -> IO <gpgme_error_t>
#ccall gpgme_cancel_async , <gpgme_ctx_t> -> IO <gpgme_error_t>

-- * Data buffers
#callback_t gpgme_data_read_cb_t , Ptr () -> Ptr () -> CSize -> IO <ssize_t>
#callback_t gpgme_data_write_cb_t , Ptr () -> Ptr () -> CSize -> IO <ssize_t>
#callback_t gpgme_data_seek_cb_t , Ptr () -> <off_t> -> CInt -> IO <off_t>
#callback_t gpgme_data_release_cb_t , Ptr () -> IO ()

#starttype struct gpgme_data_cbs
#field read , <gpgme_data_read_cb_t>
#field write , <gpgme_data_write_cb_t>
#field seek , <gpgme_data_seek_cb_t>
#field release , <gpgme_data_release_cb_t>
#stoptype

#synonym_t gpgme_data_cbs_t , Ptr <gpgme_data_cbs>

#ccall gpgme_data_read , <gpgme_data_t> -> Ptr () -> CSize -> IO <ssize_t>
#ccall gpgme_data_write , <gpgme_data_t> -> Ptr () -> CSize -> IO <ssize_t>
#ccall gpgme_data_seek , <gpgme_data_t> -> <off_t> -> CInt -> IO <off_t>
#ccall gpgme_data_new , Ptr <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_data_release , <gpgme_data_t> -> IO ()
#ccall gpgme_data_new_from_mem , Ptr <gpgme_data_t> -> CString -> CSize -> CInt -> IO <gpgme_error_t>
#ccall gpgme_data_release_and_get_mem , <gpgme_data_t> -> Ptr CSize -> IO CString
#ccall gpgme_free , Ptr () -> IO ()
#ccall gpgme_data_new_from_cbs , Ptr <gpgme_data_t> -> <gpgme_data_cbs_t> -> Ptr () -> IO <gpgme_error_t>
#ccall gpgme_data_new_from_fd , Ptr <gpgme_data_t> -> CInt -> IO <gpgme_error_t>
#ccall gpgme_data_new_from_stream , Ptr <gpgme_data_t> -> Ptr CFile -> IO <gpgme_error_t>
#ccall gpgme_data_get_encoding , <gpgme_data_t> -> IO <gpgme_data_encoding_t>
#ccall gpgme_data_set_encoding , <gpgme_data_t> -> <gpgme_data_encoding_t> -> IO <gpgme_error_t>
#ccall gpgme_data_get_file_name , <gpgme_data_t> -> IO CString
#ccall gpgme_data_set_file_name , <gpgme_data_t> -> CString -> IO <gpgme_error_t>
#ccall gpgme_data_new_from_file , Ptr <gpgme_data_t> -> CString -> CInt -> IO <gpgme_error_t>
#ccall gpgme_data_new_from_filepart , Ptr <gpgme_data_t> -> CString -> Ptr CFile -> <off_t> -> CSize -> IO <gpgme_error_t>

#if GPGME_VERSION_NUMBER >= 0x010403
-- | Guess what a buffer holds (a key, a signature, ciphertext, ...) without
-- running an operation on it.
#ccall gpgme_data_identify , <gpgme_data_t> -> CInt -> IO <gpgme_data_type_t>
#endif
#if GPGME_VERSION_NUMBER >= 0x010700
#ccall gpgme_data_set_flag , <gpgme_data_t> -> CString -> CString -> IO <gpg_error_t>
#endif

-- * Key management
#ccall gpgme_get_key , <gpgme_ctx_t> -> CString -> Ptr <gpgme_key_t> -> CInt -> IO <gpgme_error_t>
#ccall gpgme_key_ref , <gpgme_key_t> -> IO ()
#ccall gpgme_key_unref , <gpgme_key_t> -> IO ()
#ccall gpgme_key_release , <gpgme_key_t> -> IO ()

-- * Encryption

-- The @next@ field below is typed as an embedded struct rather than a pointer.
-- That is wrong, but correcting it would change the type of the generated
-- @c'_gpgme_invalid_key'next@ accessor and break every existing caller, so it
-- is left as it is. Use 'c'gpgme_invalid_key_next' to walk the list.
#starttype struct _gpgme_invalid_key
#field next , <_gpgme_invalid_key>
#field fpr , CString
#field reason , <gpgme_error_t>
#stoptype
#synonym_t gpgme_invalid_key_t , Ptr <_gpgme_invalid_key>

-- | The correctly typed successor of an invalid key, for walking the
-- @invalid_recipients@ and @invalid_signers@ lists. Returns @nullPtr@ at the
-- end of the list.
#cinline gpgme_invalid_key_next , <gpgme_invalid_key_t> -> IO <gpgme_invalid_key_t>

#starttype struct _gpgme_op_encrypt_result
#field invalid_recipients , <gpgme_invalid_key_t>
#stoptype
#synonym_t gpgme_encrypt_result_t , Ptr <_gpgme_op_encrypt_result>

#ccall gpgme_op_encrypt_result , <gpgme_ctx_t> -> IO <gpgme_encrypt_result_t>

#integral_t gpgme_encrypt_flags_t
#num GPGME_ENCRYPT_ALWAYS_TRUST
#if GPGME_VERSION_NUMBER >= 0x010200
#num GPGME_ENCRYPT_NO_ENCRYPT_TO
#endif
#if GPGME_VERSION_NUMBER >= 0x010300
#num GPGME_ENCRYPT_PREPARE
#num GPGME_ENCRYPT_EXPECT_SIGN
#endif
#if GPGME_VERSION_NUMBER >= 0x010500
#num GPGME_ENCRYPT_NO_COMPRESS
#endif
#if GPGME_VERSION_NUMBER >= 0x010700
#num GPGME_ENCRYPT_SYMMETRIC
#endif
#if GPGME_VERSION_NUMBER >= 0x010900
#num GPGME_ENCRYPT_THROW_KEYIDS
#num GPGME_ENCRYPT_WRAP
#endif
#if GPGME_VERSION_NUMBER >= 0x010b00
#num GPGME_ENCRYPT_WANT_ADDRESS
#endif
#if GPGME_VERSION_NUMBER >= 0x011300
#num GPGME_ENCRYPT_ARCHIVE
#endif
#if GPGME_VERSION_NUMBER >= 0x011800
#num GPGME_ENCRYPT_FILE
#num GPGME_ENCRYPT_ADD_RECP
#num GPGME_ENCRYPT_CHG_RECP
#endif

#ccall gpgme_op_encrypt_start , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_encrypt , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_encrypt_sign_start , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_encrypt_sign , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>

#if GPGME_VERSION_NUMBER >= 0x010b00
-- | Like 'c'gpgme_op_encrypt', but the recipients may also be given as a
-- newline-separated string, which allows addressing keys gpg knows about
-- without looking them up first.
#ccall gpgme_op_encrypt_ext , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> CString -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_encrypt_ext_start , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> CString -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_encrypt_sign_ext , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> CString -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_encrypt_sign_ext_start , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> CString -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#endif

-- * Decryption
#starttype struct _gpgme_recipient
#field next , Ptr <_gpgme_recipient>
#field keyid , CString
#field pubkey_algo , <gpgme_pubkey_algo_t>
#field status , <gpgme_error_t>
#stoptype
#synonym_t gpgme_recipient_t , Ptr <_gpgme_recipient>

#starttype struct _gpgme_op_decrypt_result
#field unsupported_algorithm , CString
#field recipients , <gpgme_recipient_t>
#field file_name , CString
#if GPGME_VERSION_NUMBER >= 0x010800
#field session_key , CString
#endif
#if GPGME_VERSION_NUMBER >= 0x010b00
#field symkey_algo , CString
#endif
#if GPGME_VERSION_NUMBER >= 0x020100
#field session_hash , CString
#endif
#stoptype
#synonym_t gpgme_decrypt_result_t , Ptr <_gpgme_op_decrypt_result>

#ccall gpgme_op_decrypt_result , <gpgme_ctx_t> -> IO <gpgme_decrypt_result_t>
#ccall gpgme_op_decrypt_start , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_decrypt , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_decrypt_verify_start , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_decrypt_verify , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>

#if GPGME_VERSION_NUMBER >= 0x010900
#integral_t gpgme_decrypt_flags_t
#num GPGME_DECRYPT_VERIFY
#num GPGME_DECRYPT_UNWRAP
#if GPGME_VERSION_NUMBER >= 0x011300
#num GPGME_DECRYPT_ARCHIVE
#endif
#if GPGME_VERSION_NUMBER >= 0x020000
-- | Skip the actual decryption and only report the recipients.
#num GPGME_DECRYPT_LISTONLY
#endif
#if GPGME_VERSION_NUMBER >= 0x020100
#num GPGME_DECRYPT_SESSION_HASH
#endif

#ccall gpgme_op_decrypt_ext , <gpgme_ctx_t> -> <gpgme_decrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_decrypt_ext_start , <gpgme_ctx_t> -> <gpgme_decrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#endif

-- * Signing
#starttype struct _gpgme_new_signature
#field next , Ptr <_gpgme_new_signature>
#field type , <gpgme_sig_mode_t>
#field pubkey_algo , <gpgme_pubkey_algo_t>
#field hash_algo , <gpgme_hash_algo_t>
#field timestamp , CLong
#field fpr , CString
#field sig_class , CUInt
#stoptype
#synonym_t gpgme_new_signature_t , Ptr <_gpgme_new_signature>

#starttype struct _gpgme_op_sign_result
#field invalid_signers , <gpgme_invalid_key_t>
#field signatures , <gpgme_new_signature_t>
#stoptype
#synonym_t gpgme_sign_result_t , Ptr <_gpgme_op_sign_result>

#ccall gpgme_op_sign_result , <gpgme_ctx_t> -> IO <gpgme_sign_result_t>
#ccall gpgme_op_sign_start , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> <gpgme_sig_mode_t> -> IO <gpgme_error_t>
#ccall gpgme_op_sign , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> <gpgme_sig_mode_t> -> IO <gpgme_error_t>

-- * Signature verification
#integral_t gpgme_sigsum_t
#num GPGME_SIGSUM_VALID
#num GPGME_SIGSUM_GREEN
#num GPGME_SIGSUM_RED
#num GPGME_SIGSUM_KEY_REVOKED
#num GPGME_SIGSUM_KEY_EXPIRED
#num GPGME_SIGSUM_SIG_EXPIRED
#num GPGME_SIGSUM_KEY_MISSING
#num GPGME_SIGSUM_CRL_MISSING
#num GPGME_SIGSUM_CRL_TOO_OLD
#num GPGME_SIGSUM_BAD_POLICY
#num GPGME_SIGSUM_SYS_ERROR

#starttype struct _gpgme_signature
#field next , Ptr <_gpgme_signature>
#field summary , <gpgme_sigsum_t>
#field fpr , CString
#field status , <gpgme_error_t>
#field notations , <gpgme_sig_notation_t>
#field timestamp , CULong
#field exp_timestamp , CULong
#field validity , <gpgme_validity_t>
#field validity_reason , <gpgme_error_t>
#field pubkey_algo , <gpgme_pubkey_algo_t>
#field hash_algo , <gpgme_hash_algo_t>
#field pka_address , CString
#if GPGME_VERSION_NUMBER >= 0x010700
-- | The key that made the signature. Only filled in when the key is available
-- locally, so this may be @nullPtr@ even for a good signature.
#field key , <gpgme_key_t>
#endif
#stoptype
#synonym_t gpgme_signature_t , Ptr <_gpgme_signature>

#starttype struct _gpgme_op_verify_result
#field signatures , <gpgme_signature_t>
#field file_name , CString
#stoptype
#synonym_t gpgme_verify_result_t , Ptr <_gpgme_op_verify_result>

#ccall gpgme_op_verify_result , <gpgme_ctx_t> -> IO <gpgme_verify_result_t>
#ccall gpgme_op_verify_start , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_verify , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>

#if GPGME_VERSION_NUMBER >= 0x011300
#integral_t gpgme_verify_flags_t
#num GPGME_VERIFY_ARCHIVE
#ccall gpgme_op_verify_ext , <gpgme_ctx_t> -> <gpgme_verify_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_verify_ext_start , <gpgme_ctx_t> -> <gpgme_verify_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#endif

-- * Importing keys
#num GPGME_IMPORT_NEW
#num GPGME_IMPORT_UID
#num GPGME_IMPORT_SIG
#num GPGME_IMPORT_SUBKEY
#num GPGME_IMPORT_SECRET

#starttype struct _gpgme_import_status
#field next , Ptr <_gpgme_import_status>
#field fpr , CString
#field result , <gpgme_error_t>
#field status , CUInt
#stoptype
#synonym_t gpgme_import_status_t , Ptr <_gpgme_import_status>

#starttype struct _gpgme_op_import_result
#field considered , CInt
#field no_user_id , CInt
#field imported , CInt
#field imported_rsa , CInt
#field unchanged , CInt
#field new_user_ids , CInt
#field new_sub_keys , CInt
#field new_signatures , CInt
#field new_revocations , CInt
#field secret_read , CInt
#field secret_imported , CInt
#field secret_unchanged , CInt
#field skipped_new_keys , CInt
#field not_imported , CInt
#field imports , <gpgme_import_status_t>
#if GPGME_VERSION_NUMBER >= 0x010b00
#field skipped_v3_keys , CInt
#endif
#stoptype
#synonym_t gpgme_import_result_t , Ptr <_gpgme_op_import_result>

#ccall gpgme_op_import_result , <gpgme_ctx_t> -> IO <gpgme_import_result_t>
#ccall gpgme_op_import_start , <gpgme_ctx_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_import , <gpgme_ctx_t> -> <gpgme_data_t> -> IO <gpgme_error_t>

-- The mode argument of the export operations is a bitmask of the
-- @GPGME_EXPORT_MODE_*@ constants below.
#ccall gpgme_op_export_start , <gpgme_ctx_t> -> CString -> CUInt -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_export , <gpgme_ctx_t> -> CString -> CUInt -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_export_ext_start , <gpgme_ctx_t> -> Ptr CString -> CUInt -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_export_ext , <gpgme_ctx_t> -> Ptr CString -> CUInt -> <gpgme_data_t> -> IO <gpgme_error_t>

-- ** Export modes
#if GPGME_VERSION_NUMBER >= 0x010300
#integral_t gpgme_export_mode_t
#num GPGME_EXPORT_MODE_EXTERN
#endif
#if GPGME_VERSION_NUMBER >= 0x010301
#num GPGME_EXPORT_MODE_MINIMAL
#endif
#if GPGME_VERSION_NUMBER >= 0x010600
#num GPGME_EXPORT_MODE_SECRET
#num GPGME_EXPORT_MODE_RAW
#num GPGME_EXPORT_MODE_PKCS12
#endif
#if GPGME_VERSION_NUMBER >= 0x010e00
#num GPGME_EXPORT_MODE_SSH
#endif
#if GPGME_VERSION_NUMBER >= 0x011100
#num GPGME_EXPORT_MODE_SECRET_SUBKEY
#endif

-- ** Importing and exporting by key, rather than by pattern
#if GPGME_VERSION_NUMBER >= 0x010200
-- | The key arrays are @NULL@-terminated.
#ccall gpgme_op_import_keys , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> IO <gpgme_error_t>
#ccall gpgme_op_import_keys_start , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> IO <gpgme_error_t>
#endif
-- gpgme_export_mode_t only exists from 1.3; before that the mode was a plain
-- unsigned int, so these are gated on the type rather than on the functions.
#if GPGME_VERSION_NUMBER >= 0x010300
#ccall gpgme_op_export_keys , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> <gpgme_export_mode_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_export_keys_start , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> <gpgme_export_mode_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#endif

#if GPGME_VERSION_NUMBER >= 0x011100
-- | Import keys from a keyserver, by key ID.
#ccall gpgme_op_receive_keys , <gpgme_ctx_t> -> Ptr CString -> IO <gpgme_error_t>
#ccall gpgme_op_receive_keys_start , <gpgme_ctx_t> -> Ptr CString -> IO <gpgme_error_t>
#endif

-- * Key generation and editing
--
-- The @primary@, @sub@ and @uid@ members of the result are C bitfields; read
-- them with the @c'gpgme_genkey_result_*@ accessors further down.
#starttype struct _gpgme_op_genkey_result
#field fpr , CString
#if GPGME_VERSION_NUMBER >= 0x010700
-- | Only populated when 'GPGME_CREATE_WANTPUB' / 'GPGME_CREATE_WANTSEC' were
-- passed to 'c'gpgme_op_createkey'.
#field pubkey , <gpgme_data_t>
#field seckey , <gpgme_data_t>
#endif
#stoptype
#synonym_t gpgme_genkey_result_t , Ptr <_gpgme_op_genkey_result>

#ccall gpgme_op_genkey_start , <gpgme_ctx_t> -> CString -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_genkey , <gpgme_ctx_t> -> CString -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_genkey_result , <gpgme_ctx_t> -> IO <gpgme_genkey_result_t>
#ccall gpgme_op_delete_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CInt -> IO <gpgme_error_t>
#ccall gpgme_op_delete , <gpgme_ctx_t> -> <gpgme_key_t> -> CInt -> IO <gpgme_error_t>
#ccall gpgme_op_delete_ext , <gpgme_ctx_t> -> <gpgme_key_t> -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_delete_ext_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_edit_start , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_edit_cb_t> -> Ptr () -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_edit , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_edit_cb_t> -> Ptr () -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_card_edit_start , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_edit_cb_t> -> Ptr () -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_card_edit , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_edit_cb_t> -> Ptr () -> <gpgme_data_t> -> IO <gpgme_error_t>

-- ** Creating keys
--
-- The modern replacement for 'c'gpgme_op_genkey' and its XML parameter string.
#if GPGME_VERSION_NUMBER >= 0x010700
#num GPGME_CREATE_SIGN
#num GPGME_CREATE_ENCR
#num GPGME_CREATE_CERT
#num GPGME_CREATE_AUTH
#num GPGME_CREATE_NOPASSWD
#num GPGME_CREATE_SELFSIGNED
#num GPGME_CREATE_NOSTORE
#num GPGME_CREATE_WANTPUB
#num GPGME_CREATE_WANTSEC
#num GPGME_CREATE_FORCE
#endif
#if GPGME_VERSION_NUMBER >= 0x010900
#num GPGME_CREATE_NOEXPIRE
#endif
#if GPGME_VERSION_NUMBER >= 0x011800
#num GPGME_CREATE_ADSK
#endif
#if GPGME_VERSION_NUMBER >= 0x020000
#num GPGME_CREATE_GROUP
#endif

#if GPGME_VERSION_NUMBER >= 0x010700
#ccall gpgme_op_createkey , <gpgme_ctx_t> -> CString -> CString -> CULong -> CULong -> <gpgme_key_t> -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_createkey_start , <gpgme_ctx_t> -> CString -> CString -> CULong -> CULong -> <gpgme_key_t> -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_createsubkey , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> CULong -> CULong -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_createsubkey_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> CULong -> CULong -> CUInt -> IO <gpgme_error_t>
#endif

-- ** User IDs
#if GPGME_VERSION_NUMBER >= 0x010700
#ccall gpgme_op_adduid , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_adduid_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_revuid , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_revuid_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> CUInt -> IO <gpgme_error_t>
#endif
#if GPGME_VERSION_NUMBER >= 0x010900
-- | Set a flag such as @\"primary\"@ on one user ID of a key.
#ccall gpgme_op_set_uid_flag , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> CString -> CString -> IO <gpgme_error_t>
#ccall gpgme_op_set_uid_flag_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> CString -> CString -> IO <gpgme_error_t>
#endif

-- ** Signing keys
#if GPGME_VERSION_NUMBER >= 0x010700
#num GPGME_KEYSIGN_LOCAL
#num GPGME_KEYSIGN_LFSEP
#num GPGME_KEYSIGN_NOEXPIRE
#ccall gpgme_op_keysign , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> CULong -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_keysign_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> CULong -> CUInt -> IO <gpgme_error_t>
#endif
#if GPGME_VERSION_NUMBER >= 0x011000
#num GPGME_KEYSIGN_FORCE
#endif
#if GPGME_VERSION_NUMBER >= 0x010f00
#num GPGME_REVSIG_LFSEP
#ccall gpgme_op_revsig , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_key_t> -> CString -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_revsig_start , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_key_t> -> CString -> CUInt -> IO <gpgme_error_t>
#endif

-- ** Changing key properties
#if GPGME_VERSION_NUMBER >= 0x010300
-- | Change the passphrase of a key.
#ccall gpgme_op_passwd , <gpgme_ctx_t> -> <gpgme_key_t> -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_passwd_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CUInt -> IO <gpgme_error_t>
#endif
#if GPGME_VERSION_NUMBER >= 0x010f00
-- | @subfprs@ selects the subkeys to act on: @NULL@ for the primary key,
-- @\"*\"@ for all subkeys, or a list of fingerprints.
#ccall gpgme_op_setexpire , <gpgme_ctx_t> -> <gpgme_key_t> -> CULong -> CString -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_setexpire_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CULong -> CString -> CUInt -> IO <gpgme_error_t>
#endif
#if GPGME_VERSION_NUMBER >= 0x011800
#ccall gpgme_op_setownertrust , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> IO <gpgme_error_t>
#ccall gpgme_op_setownertrust_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CString -> IO <gpgme_error_t>
#endif
#if GPGME_VERSION_NUMBER >= 0x010700
#ccall gpgme_op_tofu_policy , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_tofu_policy_t> -> IO <gpgme_error_t>
#ccall gpgme_op_tofu_policy_start , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_tofu_policy_t> -> IO <gpgme_error_t>

-- | The replacement for the deprecated 'c'gpgme_op_edit'.
#ccall gpgme_op_interact , <gpgme_ctx_t> -> <gpgme_key_t> -> CUInt -> <gpgme_interact_cb_t> -> Ptr () -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_interact_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CUInt -> <gpgme_interact_cb_t> -> Ptr () -> <gpgme_data_t> -> IO <gpgme_error_t>
#endif

-- * Listing keys
#starttype struct _gpgme_op_keylist_result
#stoptype
#synonym_t gpgme_keylist_result_t , Ptr <_gpgme_op_keylist_result>

#ccall gpgme_op_keylist_result , <gpgme_ctx_t> -> IO <gpgme_keylist_result_t>
#ccall gpgme_op_keylist_start , <gpgme_ctx_t> -> CString -> CInt -> IO <gpgme_error_t>
#ccall gpgme_op_keylist_ext_start , <gpgme_ctx_t> -> Ptr CString -> CInt -> CInt -> IO <gpgme_error_t>
#ccall gpgme_op_keylist_next , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> IO <gpgme_error_t>
#ccall gpgme_op_keylist_end , <gpgme_ctx_t> -> IO <gpgme_error_t>
#if GPGME_VERSION_NUMBER >= 0x010900
-- | List the keys contained in a buffer, without importing them.
#ccall gpgme_op_keylist_from_data_start , <gpgme_ctx_t> -> <gpgme_data_t> -> CInt -> IO <gpgme_error_t>
#endif

-- * Trust items
-- Trust items API was removed in GPGME 2.0 (deprecated since 1.14)
#if GPGME_VERSION_NUMBER < 0x020000
#starttype struct _gpgme_trust_item
#field keyid , CString
#field type , CInt
#field level , CInt
#field owner_trust , CString
#field validity , CString
#field name , CString
#stoptype
#synonym_t gpgme_trust_item_t , Ptr <_gpgme_trust_item>

#ccall gpgme_op_trustlist_start , <gpgme_ctx_t> -> CString -> CInt -> IO <gpgme_error_t>
#ccall gpgme_op_trustlist_next , <gpgme_ctx_t> -> Ptr <gpgme_trust_item_t> -> IO <gpgme_error_t>
#ccall gpgme_op_trustlist_end , <gpgme_ctx_t> -> IO <gpgme_error_t>
#ccall gpgme_trust_item_ref , <gpgme_trust_item_t> -> IO ()
#ccall gpgme_trust_item_unref , <gpgme_trust_item_t> -> IO ()
#endif

#ccall gpgme_op_getauditlog_start , <gpgme_ctx_t> -> <gpgme_data_t> -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_getauditlog , <gpgme_ctx_t> -> <gpgme_data_t> -> CUInt -> IO <gpgme_error_t>

-- * Configuration
#integral_t gpgme_conf_level_t
#num GPGME_CONF_BASIC
#num GPGME_CONF_ADVANCED
#num GPGME_CONF_EXPERT
#num GPGME_CONF_INVISIBLE
#num GPGME_CONF_INTERNAL

#integral_t gpgme_conf_type_t
#num GPGME_CONF_NONE
#num GPGME_CONF_STRING
#num GPGME_CONF_INT32
#num GPGME_CONF_UINT32
#num GPGME_CONF_FILENAME
#num GPGME_CONF_LDAP_SERVER
#num GPGME_CONF_KEY_FPR
#num GPGME_CONF_PUB_KEY
#num GPGME_CONF_SEC_KEY
#num GPGME_CONF_ALIAS_LIST

#starttype struct gpgme_conf_arg
#field next , Ptr <gpgme_conf_arg>
#field no_arg , CUInt
#field value.count , CUInt
#field value.uint32 , CUInt
#field value.int32 , CInt
#field value.string , CString
#stoptype

#synonym_t gpgme_conf_arg_t , Ptr <gpgme_conf_arg>

#num GPGME_CONF_GROUP
#num GPGME_CONF_OPTIONAL
#num GPGME_CONF_LIST
#num GPGME_CONF_RUNTIME
#num GPGME_CONF_DEFAULT
#num GPGME_CONF_DEFAULT_DESC
#num GPGME_CONF_NO_ARG_DESC
#num GPGME_CONF_NO_CHANGE

#starttype struct gpgme_conf_opt
#field next , Ptr <gpgme_conf_opt>
#field name , CString
#field flags , CUInt
#field level , <gpgme_conf_level_t>
#field description , CString
#field type , <gpgme_conf_type_t>
#field alt_type , <gpgme_conf_type_t>
#field argname , CString
#field default_value , <gpgme_conf_arg_t>
#field default_description , CString
#field no_arg_value , <gpgme_conf_arg_t>
#field no_arg_description , CString
#field value , <gpgme_conf_arg_t>
#field change_value , CInt
#field new_value , <gpgme_conf_arg_t>
#field user_data , Ptr ()
#stoptype

#synonym_t gpgme_conf_opt_t , Ptr <gpgme_conf_opt>

#starttype struct gpgme_conf_comp
#field next , Ptr <gpgme_conf_comp>
#field name , CString
#field description , CString
#field program_name , CString
#field options , Ptr <gpgme_conf_opt>
#stoptype

#synonym_t gpgme_conf_comp_t , Ptr <gpgme_conf_comp>

#ccall gpgme_conf_arg_new , Ptr <gpgme_conf_arg_t> -> <gpgme_conf_type_t> -> Ptr () -> IO <gpgme_error_t>
#ccall gpgme_conf_arg_release , <gpgme_conf_arg_t> -> <gpgme_conf_type_t> -> IO ()
#ccall gpgme_conf_opt_change , <gpgme_conf_opt_t> -> CInt -> <gpgme_conf_arg_t> -> IO <gpgme_error_t>
#ccall gpgme_conf_release , <gpgme_conf_comp_t> -> IO ()
#ccall gpgme_op_conf_load , <gpgme_ctx_t> -> Ptr <gpgme_conf_comp_t> -> IO <gpgme_error_t>
#ccall gpgme_op_conf_save , <gpgme_ctx_t> -> <gpgme_conf_comp_t> -> IO <gpgme_error_t>

-- * Engine information
#ccall gpgme_check_version , CString -> IO CString
#ccall gpgme_get_engine_info , Ptr <gpgme_engine_info_t> -> IO <gpgme_error_t>
#ccall gpgme_set_engine_info , <gpgme_protocol_t> -> CString -> CString -> IO <gpgme_error_t>
#ccall gpgme_engine_check_version , <gpgme_protocol_t> -> IO <gpgme_error_t>

-- * Pinentry modes
#integral_t gpgme_pinentry_mode_t
#num GPGME_PINENTRY_MODE_DEFAULT
#num GPGME_PINENTRY_MODE_ASK
#num GPGME_PINENTRY_MODE_CANCEL
#num GPGME_PINENTRY_MODE_ERROR
#num GPGME_PINENTRY_MODE_LOOPBACK
#ccall gpgme_set_pinentry_mode , <gpgme_ctx_t> -> <gpgme_pinentry_mode_t> -> IO <gpgme_error_t>
#ccall gpgme_get_pinentry_mode , <gpgme_ctx_t> -> IO <gpgme_pinentry_mode_t>

-- * I/O wrappers
-- These are needed when implementing passphrase callbacks.
#ccall gpgme_io_read , CInt -> Ptr () -> CSize -> IO CSize
#ccall gpgme_io_write , CInt -> Ptr () -> CSize -> IO CSize
#ccall gpgme_io_writen , CInt -> Ptr () -> CSize -> IO CSize

-- * Running arbitrary programs
#if GPGME_VERSION_NUMBER >= 0x010500
#num GPGME_SPAWN_DETACHED
#num GPGME_SPAWN_ALLOW_SET_FG
#num GPGME_SPAWN_SHOW_WINDOW
#ccall gpgme_op_spawn , <gpgme_ctx_t> -> CString -> Ptr CString -> <gpgme_data_t> -> <gpgme_data_t> -> <gpgme_data_t> -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_spawn_start , <gpgme_ctx_t> -> CString -> Ptr CString -> <gpgme_data_t> -> <gpgme_data_t> -> <gpgme_data_t> -> CUInt -> IO <gpgme_error_t>
#endif

-- * Random numbers
#if GPGME_VERSION_NUMBER >= 0x020000
#integral_t gpgme_random_mode_t
#num GPGME_RANDOM_MODE_NORMAL
#num GPGME_RANDOM_MODE_ZBASE32
#ccall gpgme_op_random_bytes , <gpgme_ctx_t> -> <gpgme_random_mode_t> -> CString -> CSize -> IO <gpgme_error_t>
#ccall gpgme_op_random_value , <gpgme_ctx_t> -> CSize -> Ptr CSize -> IO <gpgme_error_t>
#endif

-- * Software version database
#if GPGME_VERSION_NUMBER >= 0x010800
-- The status members (@warning@, @update@, @urgent@, ...) are C bitfields;
-- read them with the @c'gpgme_query_swdb_result_*@ accessors below.
#starttype struct _gpgme_op_query_swdb_result
#field next , Ptr <_gpgme_op_query_swdb_result>
#field name , CString
#field iversion , CString
#field created , CULong
#field retrieved , CULong
#field version , CString
#field reldate , CULong
#stoptype
#synonym_t gpgme_query_swdb_result_t , Ptr <_gpgme_op_query_swdb_result>

#ccall gpgme_op_query_swdb , <gpgme_ctx_t> -> CString -> CString -> CUInt -> IO <gpgme_error_t>
#ccall gpgme_op_query_swdb_result , <gpgme_ctx_t> -> IO <gpgme_query_swdb_result_t>
#endif

-- * Miscellaneous
#ccall gpgme_op_import_ext , <gpgme_ctx_t> -> <gpgme_data_t> -> Ptr CInt -> IO <gpgme_error_t>

#if GPGME_VERSION_NUMBER >= 0x010301
#ccall gpgme_err_code_from_syserror , IO <gpgme_err_code_t>
-- gpgme_error_from_syserror is a static inline in gpgme.h, not a library
-- symbol, so it has to go through a wrapper like the other gpgme_err_* helpers.
#cinline gpgme_error_from_syserror , IO <gpgme_error_t>
#endif

#if GPGME_VERSION_NUMBER >= 0x010a00
-- | Query a gpg directory, e.g. @\"homedir\"@ or @\"sysconfdir\"@. The result
-- must be 'c'gpgme_free'd.
#ccall gpgme_op_conf_dir , <gpgme_ctx_t> -> CString -> Ptr CString -> IO <gpgme_error_t>
#endif

-- * Bitfield accessors
--
-- The C structs above carry most of their boolean state in bitfields, which
-- have no offset and therefore cannot be exposed as record fields. These
-- accessors read them through C, and are the only way to reach them.
-- Each returns a non-zero value if the flag is set.

-- ** Keys
#cinline gpgme_key_revoked , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_expired , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_disabled , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_invalid , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_can_encrypt , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_can_sign , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_can_certify , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_can_authenticate , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_secret , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_is_qualified , <gpgme_key_t> -> IO CUInt
#if GPGME_VERSION_NUMBER >= 0x010900
#cinline gpgme_key_origin , <gpgme_key_t> -> IO CUInt
#endif
#if GPGME_VERSION_NUMBER >= 0x011700
-- | Unlike 'c'gpgme_key_can_encrypt', which reports what the key is capable of,
-- these report whether an unexpired, unrevoked subkey with that capability
-- exists.
#cinline gpgme_key_has_encrypt , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_has_sign , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_has_certify , <gpgme_key_t> -> IO CUInt
#cinline gpgme_key_has_authenticate , <gpgme_key_t> -> IO CUInt
#endif

-- ** Subkeys
#cinline gpgme_subkey_revoked , <gpgme_subkey_t> -> IO CUInt
#cinline gpgme_subkey_expired , <gpgme_subkey_t> -> IO CUInt
#cinline gpgme_subkey_disabled , <gpgme_subkey_t> -> IO CUInt
#cinline gpgme_subkey_invalid , <gpgme_subkey_t> -> IO CUInt
#cinline gpgme_subkey_can_encrypt , <gpgme_subkey_t> -> IO CUInt
#cinline gpgme_subkey_can_sign , <gpgme_subkey_t> -> IO CUInt
#cinline gpgme_subkey_can_certify , <gpgme_subkey_t> -> IO CUInt
#cinline gpgme_subkey_can_authenticate , <gpgme_subkey_t> -> IO CUInt
#cinline gpgme_subkey_secret , <gpgme_subkey_t> -> IO CUInt
#cinline gpgme_subkey_is_qualified , <gpgme_subkey_t> -> IO CUInt
#if GPGME_VERSION_NUMBER >= 0x010300
#cinline gpgme_subkey_is_cardkey , <gpgme_subkey_t> -> IO CUInt
#endif
#if GPGME_VERSION_NUMBER >= 0x010900
#cinline gpgme_subkey_is_de_vs , <gpgme_subkey_t> -> IO CUInt
#endif
#if GPGME_VERSION_NUMBER >= 0x011400
#cinline gpgme_subkey_can_renc , <gpgme_subkey_t> -> IO CUInt
#cinline gpgme_subkey_can_timestamp , <gpgme_subkey_t> -> IO CUInt
#cinline gpgme_subkey_is_group_owned , <gpgme_subkey_t> -> IO CUInt
#endif

-- ** User IDs
#cinline gpgme_user_id_revoked , <gpgme_user_id_t> -> IO CUInt
#cinline gpgme_user_id_invalid , <gpgme_user_id_t> -> IO CUInt
#if GPGME_VERSION_NUMBER >= 0x010900
#cinline gpgme_user_id_origin , <gpgme_user_id_t> -> IO CUInt
#endif

-- ** Key signatures
#cinline gpgme_key_sig_revoked , <gpgme_key_sig_t> -> IO CUInt
#cinline gpgme_key_sig_expired , <gpgme_key_sig_t> -> IO CUInt
#cinline gpgme_key_sig_invalid , <gpgme_key_sig_t> -> IO CUInt
#cinline gpgme_key_sig_exportable , <gpgme_key_sig_t> -> IO CUInt
#if GPGME_VERSION_NUMBER >= 0x011000
#cinline gpgme_key_sig_trust_depth , <gpgme_key_sig_t> -> IO CUInt
#cinline gpgme_key_sig_trust_value , <gpgme_key_sig_t> -> IO CUInt
#endif

-- ** Signatures
#cinline gpgme_signature_wrong_key_usage , <gpgme_signature_t> -> IO CUInt
#cinline gpgme_signature_pka_trust , <gpgme_signature_t> -> IO CUInt
#cinline gpgme_signature_chain_model , <gpgme_signature_t> -> IO CUInt
#if GPGME_VERSION_NUMBER >= 0x010a00
#cinline gpgme_signature_is_de_vs , <gpgme_signature_t> -> IO CUInt
#endif

-- ** Operation results
#cinline gpgme_decrypt_result_wrong_key_usage , <gpgme_decrypt_result_t> -> IO CUInt
#if GPGME_VERSION_NUMBER >= 0x010a00
#cinline gpgme_decrypt_result_is_de_vs , <gpgme_decrypt_result_t> -> IO CUInt
#endif
#if GPGME_VERSION_NUMBER >= 0x010b00
#cinline gpgme_decrypt_result_is_mime , <gpgme_decrypt_result_t> -> IO CUInt
#cinline gpgme_verify_result_is_mime , <gpgme_verify_result_t> -> IO CUInt
#endif
#if GPGME_VERSION_NUMBER >= 0x010c00
#cinline gpgme_decrypt_result_legacy_cipher_nomdc , <gpgme_decrypt_result_t> -> IO CUInt
#endif

#cinline gpgme_genkey_result_primary , <gpgme_genkey_result_t> -> IO CUInt
#cinline gpgme_genkey_result_sub , <gpgme_genkey_result_t> -> IO CUInt
#if GPGME_VERSION_NUMBER >= 0x010700
#cinline gpgme_genkey_result_uid , <gpgme_genkey_result_t> -> IO CUInt
#endif

-- ** TOFU
#if GPGME_VERSION_NUMBER >= 0x010700
#cinline gpgme_tofu_info_validity , <gpgme_tofu_info_t> -> IO CUInt
#cinline gpgme_tofu_info_policy , <gpgme_tofu_info_t> -> IO CUInt
#endif

-- ** Revocation keys
#if GPGME_VERSION_NUMBER >= 0x011800
#cinline gpgme_revocation_key_sensitive , <gpgme_revocation_key_t> -> IO CUInt
#endif

-- ** Software version database
#if GPGME_VERSION_NUMBER >= 0x010800
#cinline gpgme_query_swdb_result_warning , <gpgme_query_swdb_result_t> -> IO CUInt
#cinline gpgme_query_swdb_result_update , <gpgme_query_swdb_result_t> -> IO CUInt
#cinline gpgme_query_swdb_result_urgent , <gpgme_query_swdb_result_t> -> IO CUInt
#cinline gpgme_query_swdb_result_noinfo , <gpgme_query_swdb_result_t> -> IO CUInt
#cinline gpgme_query_swdb_result_unknown , <gpgme_query_swdb_result_t> -> IO CUInt
#cinline gpgme_query_swdb_result_tooold , <gpgme_query_swdb_result_t> -> IO CUInt
#cinline gpgme_query_swdb_result_error , <gpgme_query_swdb_result_t> -> IO CUInt
#endif
