/******
 * Copyright © 2008–2009 Maurício C. Antunes
 * This file is distributed under the BSD license.
 * Check LICENSE file in distribution package for
 * details.
******/

#ifndef __BINDINGS_CMACROS_H__
#define __BINDINGS_CMACROS_H__

#define BC_GLOBALARRAY(name,type) \
type const *array_##name (void) \
{ \
  return name; \
} \

#define BC_INLINE_(name,ret) \
ret inline_##name (void) \
{ \
  return name; \
} \

#define BC_INLINE_VOID(name) \
void inline_##name (void) \
{ \
  name; \
} \

#define BC_INLINE0(name,ret) \
ret inline_##name (void) \
{ \
  return name (); \
} \

#define BC_INLINE0VOID(name) \
void inline_##name (void) \
{ \
  name (); \
} \

#define BC_INLINE1(name,t1,ret) \
ret inline_##name (t1 v1) \
{ \
  return name (v1); \
} \

#define BC_INLINE1VOID(name,t1) \
void inline_##name (t1 v1) \
{ \
  name (v1); \
} \

#define BC_INLINE2(name,t1,t2,ret) \
ret inline_##name (t1 v1,t2 v2) \
{ \
  return name (v1,v2); \
} \

#define BC_INLINE2VOID(name,t1,t2) \
void inline_##name (t1 v1,t2 v2) \
{ \
  name (v1,v2); \
} \

#define BC_INLINE3(name,t1,t2,t3,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3) \
{ \
  return name (v1,v2,v3); \
} \

#define BC_INLINE3VOID(name,t1,t2,t3) \
void inline_##name (t1 v1,t2 v2,t3 v3) \
{ \
  name (v1,v2,v3); \
} \

#define BC_INLINE4(name,t1,t2,t3,t4,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4) \
{ \
  return name (v1,v2,v3,v4); \
} \

#define BC_INLINE4VOID(name,t1,t2,t3,t4) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4) \
{ \
  name (v1,v2,v3,v4); \
} \

#define BC_INLINE5(name,t1,t2,t3,t4,t5,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5) \
{ \
  return name (v1,v2,v3,v4,v5); \
} \

#define BC_INLINE5VOID(name,t1,t2,t3,t4,t5) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5) \
{ \
  name (v1,v2,v3,v4,v5); \
} \

#define BC_INLINE6(name,t1,t2,t3,t4,t5,t6,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6) \
{ \
  return name (v1,v2,v3,v4,v5,v6); \
} \

#define BC_INLINE6VOID(name,t1,t2,t3,t4,t5,t6) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6) \
{ \
  name (v1,v2,v3,v4,v5,v6); \
} \

#define BC_INLINE7(name,t1,t2,t3,t4,t5,t6,t7,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7); \
} \

#define BC_INLINE7VOID(name,t1,t2,t3,t4,t5,t6,t7) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7); \
} \

#define BC_INLINE8(name,t1,t2,t3,t4,t5,t6,t7,t8,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8); \
} \

#define BC_INLINE8VOID(name,t1,t2,t3,t4,t5,t6,t7,t8) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8); \
} \

#define BC_INLINE9(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9); \
} \

#define BC_INLINE9VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9); \
} \

#define BC_INLINE10(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10); \
} \

#define BC_INLINE10VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10); \
} \

#define BC_INLINE11(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11); \
} \

#define BC_INLINE11VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11); \
} \

#define BC_INLINE12(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12); \
} \

#define BC_INLINE12VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12); \
} \

#define BC_INLINE13(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13); \
} \

#define BC_INLINE13VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13); \
} \

#define BC_INLINE14(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14); \
} \

#define BC_INLINE14VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14); \
} \

#define BC_INLINE15(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15); \
} \

#define BC_INLINE15VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15); \
} \

#define BC_INLINE16(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15,t16 v16) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16); \
} \

#define BC_INLINE16VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15,t16 v16) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16); \
} \

#define BC_INLINE17(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15,t16 v16,t17 v17) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17); \
} \

#define BC_INLINE17VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15,t16 v16,t17 v17) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17); \
} \

#define BC_INLINE18(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15,t16 v16,t17 v17,t18 v18) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18); \
} \

#define BC_INLINE18VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15,t16 v16,t17 v17,t18 v18) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18); \
} \

#define BC_INLINE19(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15,t16 v16,t17 v17,t18 v18,t19 v19) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19); \
} \

#define BC_INLINE19VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15,t16 v16,t17 v17,t18 v18,t19 v19) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19); \
} \

#define BC_INLINE20(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,ret) \
ret inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15,t16 v16,t17 v17,t18 v18,t19 v19,t20 v20) \
{ \
  return name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20); \
} \

#define BC_INLINE20VOID(name,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20) \
void inline_##name (t1 v1,t2 v2,t3 v3,t4 v4,t5 v5,t6 v6,t7 v7,t8 v8,t9 v9,t10 v10,t11 v11,t12 v12,t13 v13,t14 v14,t15 v15,t16 v16,t17 v17,t18 v18,t19 v19,t20 v20) \
{ \
  name (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20); \
} \

#define BC_GOBJECT_NOTCLASSED(prefix,object,CamelCase) \
    BC_INLINE_(prefix##_TYPE_##object,GType) \
    BC_INLINE1(prefix##_##object,void*,CamelCase*) \
    BC_INLINE1(prefix##_IS_##object,void*,gboolean) \

#define BC_GOBJECT(prefix,object,CamelCase) \
    BC_GOBJECT_NOTCLASSED(prefix,object,CamelCase) \
    BC_INLINE1(prefix##_##object##_CLASS,void*,CamelCase##Class*) \
    BC_INLINE1(prefix##_IS_##object##_CLASS,void*,gboolean) \
    BC_INLINE1(prefix##_##object##_GET_CLASS,void*,CamelCase##Class*) \

#endif /* __BINDINGS_CMACROS_H__ */

