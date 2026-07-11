#include<bindings.cmacros.h>
#include<gpgme.h>

BC_INLINE2(gpgme_err_make,gpgme_err_source_t,gpgme_err_code_t,gpgme_error_t)
BC_INLINE1(gpgme_error,gpgme_err_code_t,gpgme_error_t)
BC_INLINE1(gpgme_err_code,gpgme_error_t,gpgme_err_code_t)
BC_INLINE1(gpgme_err_source,gpgme_error_t,gpgme_err_source_t)
#if GPGME_VERSION_NUMBER >= 0x010301
/* Like the four above, this is a static inline in gpgme.h rather than a symbol
   exported by libgpgme, so it needs a wrapper to be callable from Haskell. */
BC_INLINE0(gpgme_error_from_syserror,gpgme_error_t)
#endif

/* The `next' member of struct _gpgme_invalid_key is bound as an embedded
   struct rather than a pointer. That is wrong, but correcting it would change
   the type of the generated accessor and break existing callers, so this
   provides a correctly typed way to walk the list instead. */
static gpgme_invalid_key_t
gpgme_invalid_key_next (gpgme_invalid_key_t v) { return v->next; }
BC_INLINE1(gpgme_invalid_key_next,gpgme_invalid_key_t,gpgme_invalid_key_t)

/* bindings-DSL derives struct fields from offsetof, which bitfields do not
   have. Every boolean member of the gpgme structs therefore has to be reached
   through C. The version guards mirror those in Gpgme.hsc. */
#define BC_GPGME_FLAG(name,type,member) \
  static unsigned int name (type v) { return v->member; } \
  BC_INLINE1(name,type,unsigned int)

BC_GPGME_FLAG(gpgme_key_revoked,gpgme_key_t,revoked)
BC_GPGME_FLAG(gpgme_key_expired,gpgme_key_t,expired)
BC_GPGME_FLAG(gpgme_key_disabled,gpgme_key_t,disabled)
BC_GPGME_FLAG(gpgme_key_invalid,gpgme_key_t,invalid)
BC_GPGME_FLAG(gpgme_key_can_encrypt,gpgme_key_t,can_encrypt)
BC_GPGME_FLAG(gpgme_key_can_sign,gpgme_key_t,can_sign)
BC_GPGME_FLAG(gpgme_key_can_certify,gpgme_key_t,can_certify)
BC_GPGME_FLAG(gpgme_key_can_authenticate,gpgme_key_t,can_authenticate)
BC_GPGME_FLAG(gpgme_key_secret,gpgme_key_t,secret)
BC_GPGME_FLAG(gpgme_key_is_qualified,gpgme_key_t,is_qualified)
#if GPGME_VERSION_NUMBER >= 0x010900
BC_GPGME_FLAG(gpgme_key_origin,gpgme_key_t,origin)
#endif
#if GPGME_VERSION_NUMBER >= 0x011700
BC_GPGME_FLAG(gpgme_key_has_encrypt,gpgme_key_t,has_encrypt)
BC_GPGME_FLAG(gpgme_key_has_sign,gpgme_key_t,has_sign)
BC_GPGME_FLAG(gpgme_key_has_certify,gpgme_key_t,has_certify)
BC_GPGME_FLAG(gpgme_key_has_authenticate,gpgme_key_t,has_authenticate)
#endif

BC_GPGME_FLAG(gpgme_subkey_revoked,gpgme_subkey_t,revoked)
BC_GPGME_FLAG(gpgme_subkey_expired,gpgme_subkey_t,expired)
BC_GPGME_FLAG(gpgme_subkey_disabled,gpgme_subkey_t,disabled)
BC_GPGME_FLAG(gpgme_subkey_invalid,gpgme_subkey_t,invalid)
BC_GPGME_FLAG(gpgme_subkey_can_encrypt,gpgme_subkey_t,can_encrypt)
BC_GPGME_FLAG(gpgme_subkey_can_sign,gpgme_subkey_t,can_sign)
BC_GPGME_FLAG(gpgme_subkey_can_certify,gpgme_subkey_t,can_certify)
BC_GPGME_FLAG(gpgme_subkey_can_authenticate,gpgme_subkey_t,can_authenticate)
BC_GPGME_FLAG(gpgme_subkey_secret,gpgme_subkey_t,secret)
BC_GPGME_FLAG(gpgme_subkey_is_qualified,gpgme_subkey_t,is_qualified)
#if GPGME_VERSION_NUMBER >= 0x010300
BC_GPGME_FLAG(gpgme_subkey_is_cardkey,gpgme_subkey_t,is_cardkey)
#endif
#if GPGME_VERSION_NUMBER >= 0x010900
BC_GPGME_FLAG(gpgme_subkey_is_de_vs,gpgme_subkey_t,is_de_vs)
#endif
#if GPGME_VERSION_NUMBER >= 0x011400
BC_GPGME_FLAG(gpgme_subkey_can_renc,gpgme_subkey_t,can_renc)
BC_GPGME_FLAG(gpgme_subkey_can_timestamp,gpgme_subkey_t,can_timestamp)
BC_GPGME_FLAG(gpgme_subkey_is_group_owned,gpgme_subkey_t,is_group_owned)
#endif

BC_GPGME_FLAG(gpgme_user_id_revoked,gpgme_user_id_t,revoked)
BC_GPGME_FLAG(gpgme_user_id_invalid,gpgme_user_id_t,invalid)
#if GPGME_VERSION_NUMBER >= 0x010900
BC_GPGME_FLAG(gpgme_user_id_origin,gpgme_user_id_t,origin)
#endif

BC_GPGME_FLAG(gpgme_key_sig_revoked,gpgme_key_sig_t,revoked)
BC_GPGME_FLAG(gpgme_key_sig_expired,gpgme_key_sig_t,expired)
BC_GPGME_FLAG(gpgme_key_sig_invalid,gpgme_key_sig_t,invalid)
BC_GPGME_FLAG(gpgme_key_sig_exportable,gpgme_key_sig_t,exportable)
#if GPGME_VERSION_NUMBER >= 0x011000
BC_GPGME_FLAG(gpgme_key_sig_trust_depth,gpgme_key_sig_t,trust_depth)
BC_GPGME_FLAG(gpgme_key_sig_trust_value,gpgme_key_sig_t,trust_value)
#endif

BC_GPGME_FLAG(gpgme_signature_wrong_key_usage,gpgme_signature_t,wrong_key_usage)
BC_GPGME_FLAG(gpgme_signature_pka_trust,gpgme_signature_t,pka_trust)
BC_GPGME_FLAG(gpgme_signature_chain_model,gpgme_signature_t,chain_model)
#if GPGME_VERSION_NUMBER >= 0x010a00
BC_GPGME_FLAG(gpgme_signature_is_de_vs,gpgme_signature_t,is_de_vs)
#endif

BC_GPGME_FLAG(gpgme_decrypt_result_wrong_key_usage,gpgme_decrypt_result_t,wrong_key_usage)
#if GPGME_VERSION_NUMBER >= 0x010a00
BC_GPGME_FLAG(gpgme_decrypt_result_is_de_vs,gpgme_decrypt_result_t,is_de_vs)
#endif
#if GPGME_VERSION_NUMBER >= 0x010b00
BC_GPGME_FLAG(gpgme_decrypt_result_is_mime,gpgme_decrypt_result_t,is_mime)
BC_GPGME_FLAG(gpgme_verify_result_is_mime,gpgme_verify_result_t,is_mime)
#endif
#if GPGME_VERSION_NUMBER >= 0x010c00
BC_GPGME_FLAG(gpgme_decrypt_result_legacy_cipher_nomdc,gpgme_decrypt_result_t,legacy_cipher_nomdc)
#endif

BC_GPGME_FLAG(gpgme_genkey_result_primary,gpgme_genkey_result_t,primary)
BC_GPGME_FLAG(gpgme_genkey_result_sub,gpgme_genkey_result_t,sub)
#if GPGME_VERSION_NUMBER >= 0x010700
BC_GPGME_FLAG(gpgme_genkey_result_uid,gpgme_genkey_result_t,uid)

BC_GPGME_FLAG(gpgme_tofu_info_validity,gpgme_tofu_info_t,validity)
BC_GPGME_FLAG(gpgme_tofu_info_policy,gpgme_tofu_info_t,policy)
#endif

#if GPGME_VERSION_NUMBER >= 0x011800
BC_GPGME_FLAG(gpgme_revocation_key_sensitive,gpgme_revocation_key_t,sensitive)
#endif

#if GPGME_VERSION_NUMBER >= 0x010800
BC_GPGME_FLAG(gpgme_query_swdb_result_warning,gpgme_query_swdb_result_t,warning)
BC_GPGME_FLAG(gpgme_query_swdb_result_update,gpgme_query_swdb_result_t,update)
BC_GPGME_FLAG(gpgme_query_swdb_result_urgent,gpgme_query_swdb_result_t,urgent)
BC_GPGME_FLAG(gpgme_query_swdb_result_noinfo,gpgme_query_swdb_result_t,noinfo)
BC_GPGME_FLAG(gpgme_query_swdb_result_unknown,gpgme_query_swdb_result_t,unknown)
BC_GPGME_FLAG(gpgme_query_swdb_result_tooold,gpgme_query_swdb_result_t,tooold)
BC_GPGME_FLAG(gpgme_query_swdb_result_error,gpgme_query_swdb_result_t,error)
#endif
