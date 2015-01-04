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

-- * Algorithms
-- ** Public key algorithms
#integral_t gpgme_pubkey_algo_t
#num GPGME_PK_RSA
#num GPGME_PK_RSA_E
#num GPGME_PK_RSA_S
#num GPGME_PK_ELG_E
#num GPGME_PK_DSA
#num GPGME_PK_ELG

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

-- * Signature mode
#integral_t gpgme_sig_mode_t
#num GPGME_SIG_MODE_NORMAL
#num GPGME_SIG_MODE_DETACH
#num GPGME_SIG_MODE_CLEAR

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

-- * Key list modes
#integral_t gpgme_keylist_mode_t
#num GPGME_KEYLIST_MODE_LOCAL
#num GPGME_KEYLIST_MODE_EXTERN
#num GPGME_KEYLIST_MODE_SIGS
#num GPGME_KEYLIST_MODE_SIG_NOTATIONS
#num GPGME_KEYLIST_MODE_VALIDATE
#num GPGME_AUDITLOG_HTML
#num GPGME_AUDITLOG_WITH_HELP

-- * Signature notations
#integral_t gpgme_sig_notation_flags_t
#num GPGME_SIG_NOTATION_HUMAN_READABLE
#num GPGME_SIG_NOTATION_CRITICAL

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

-- * Keys
#starttype struct _gpgme_subkey
#field next , Ptr <_gpgme_subkey>
#field pubkey_algo , <gpgme_pubkey_algo_t>
#field length , CUInt
#field keyid , CString
#field fpr , CString
#field timestamp , CLong
#field expires , CLong
#field card_number , CString
#field curve , CString
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
#stoptype
#synonym_t gpgme_key_t , Ptr <_gpgme_key>

-- * Callback types
#callback_t gpgme_passphrase_cb_t , Ptr () -> CString -> CString -> CInt -> CInt -> IO <gpgme_error_t>
#callback_t gpgme_progress_cb_t , Ptr () -> CString -> CInt -> CInt -> CInt -> IO ()
#callback_t gpgme_edit_cb_t , Ptr () -> <gpgme_status_code_t> -> CString -> CInt -> IO <gpgme_error_t>

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

-- * IO events
#callback_t gpgme_io_cb_t , Ptr () -> CInt -> IO <gpgme_error_t>
#callback_t gpgme_register_io_cb_t , Ptr () -> CInt -> CInt -> <gpgme_io_cb_t> -> Ptr () -> Ptr (Ptr ()) -> IO <gpgme_error_t>
#callback_t gpgme_remove_io_cb_t , Ptr () -> IO ()

#integral_t gpgme_event_io_t
#num GPGME_EVENT_START
#num GPGME_EVENT_DONE
#num GPGME_EVENT_NEXT_KEY
#num GPGME_EVENT_NEXT_TRUSTITEM

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

-- * Key management
#ccall gpgme_get_key , <gpgme_ctx_t> -> CString -> Ptr <gpgme_key_t> -> CInt -> IO <gpgme_error_t>
#ccall gpgme_key_ref , <gpgme_key_t> -> IO ()
#ccall gpgme_key_unref , <gpgme_key_t> -> IO ()
#ccall gpgme_key_release , <gpgme_key_t> -> IO ()

-- * Encryption
#starttype struct _gpgme_invalid_key
#field next , <_gpgme_invalid_key>
#field fpr , CString
#field reason , <gpgme_error_t>
#stoptype
#synonym_t gpgme_invalid_key_t , Ptr <_gpgme_invalid_key>

#starttype struct _gpgme_op_encrypt_result
#field invalid_recipients , <gpgme_invalid_key_t>
#stoptype
#synonym_t gpgme_encrypt_result_t , Ptr <_gpgme_op_encrypt_result>

#ccall gpgme_op_encrypt_result , <gpgme_ctx_t> -> IO <gpgme_encrypt_result_t>

#integral_t gpgme_encrypt_flags_t
#num GPGME_ENCRYPT_ALWAYS_TRUST

#ccall gpgme_op_encrypt_start , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_encrypt , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_encrypt_sign_start , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_encrypt_sign , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> <gpgme_encrypt_flags_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>

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
#stoptype
#synonym_t gpgme_decrypt_result_t , Ptr <_gpgme_op_decrypt_result>

#ccall gpgme_op_decrypt_result , <gpgme_ctx_t> -> IO <gpgme_decrypt_result_t>
#ccall gpgme_op_decrypt_start , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_decrypt , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_decrypt_verify_start , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_decrypt_verify , <gpgme_ctx_t> -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>

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
#stoptype
#synonym_t gpgme_import_result_t , Ptr <_gpgme_op_import_result>

#ccall gpgme_op_import_result , <gpgme_ctx_t> -> IO <gpgme_import_result_t>
#ccall gpgme_op_import_start , <gpgme_ctx_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_import , <gpgme_ctx_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_export_start , <gpgme_ctx_t> -> CString -> CUInt -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_export , <gpgme_ctx_t> -> CString -> CUInt -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_export_ext_start , <gpgme_ctx_t> -> Ptr CString -> CUInt -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_export_ext , <gpgme_ctx_t> -> Ptr CString -> CUInt -> <gpgme_data_t> -> IO <gpgme_error_t>

-- * Key generation and editing
#starttype struct _gpgme_op_genkey_result
#field fpr , CString
#stoptype
#synonym_t gpgme_genkey_result_t , Ptr <_gpgme_op_genkey_result>

#ccall gpgme_op_genkey_start , <gpgme_ctx_t> -> CString -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_genkey , <gpgme_ctx_t> -> CString -> <gpgme_data_t> -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_genkey_result , <gpgme_ctx_t> -> IO <gpgme_genkey_result_t>
#ccall gpgme_op_delete_start , <gpgme_ctx_t> -> <gpgme_key_t> -> CInt -> IO <gpgme_error_t>
#ccall gpgme_op_delete , <gpgme_ctx_t> -> <gpgme_key_t> -> CInt -> IO <gpgme_error_t>
#ccall gpgme_op_edit_start , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_edit_cb_t> -> Ptr () -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_edit , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_edit_cb_t> -> Ptr () -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_card_edit_start , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_edit_cb_t> -> Ptr () -> <gpgme_data_t> -> IO <gpgme_error_t>
#ccall gpgme_op_card_edit , <gpgme_ctx_t> -> <gpgme_key_t> -> <gpgme_edit_cb_t> -> Ptr () -> <gpgme_data_t> -> IO <gpgme_error_t>

-- * Listing keys
#starttype struct _gpgme_op_keylist_result
#stoptype
#synonym_t gpgme_keylist_result_t , Ptr <_gpgme_op_keylist_result>

#ccall gpgme_op_keylist_result , <gpgme_ctx_t> -> IO <gpgme_keylist_result_t>
#ccall gpgme_op_keylist_start , <gpgme_ctx_t> -> CString -> CInt -> IO <gpgme_error_t>
#ccall gpgme_op_keylist_ext_start , <gpgme_ctx_t> -> Ptr CString -> CInt -> CInt -> IO <gpgme_error_t>
#ccall gpgme_op_keylist_next , <gpgme_ctx_t> -> Ptr <gpgme_key_t> -> IO <gpgme_error_t>
#ccall gpgme_op_keylist_end , <gpgme_ctx_t> -> IO <gpgme_error_t>

-- * Trust items
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

-- * I/O wrappers
-- These are needed when implementing passphrase callbacks.
#ccall gpgme_io_read , CInt -> Ptr () -> CSize -> IO CSize
#ccall gpgme_io_write , CInt -> Ptr () -> CSize -> IO CSize
#ccall gpgme_io_writen , CInt -> Ptr () -> CSize -> IO CSize
