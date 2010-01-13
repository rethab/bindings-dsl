/******
 * Copyright © 2008–2009 Maurício C. Antunes
 * This file is distributed under the BSD license.
 * Check LICENSE file in distribution package for
 * details.
******/

#ifndef __BINDINGS_DSL_H__
#define __BINDINGS_DSL_H__

#include <inttypes.h>

#define hsc_strict_import(dummy) printf( \
    "import Foreign.Ptr (Ptr,FunPtr,plusPtr)\n" \
    "import Foreign.Ptr (wordPtrToPtr,castPtrToFunPtr)\n" \
    "import Foreign.Storable\n" \
    "import Foreign.C.Types\n" \
    "import Foreign.C.String (CString,CStringLen,CWString,CWStringLen)\n" \
    "import Foreign.Marshal.Array (peekArray,pokeArray)\n" \
    "import Data.Int\n" \
    "import Data.Word\n" \
    ); \

#define bc_word(name) \
    { \
     char *p, *q, buffer_w[strlen(name)+1]; \
     strcpy(buffer_w,name); \
     for (p=strtok(buffer_w," \t");(q=strtok(NULL," \t"));p=q); \
     printf("%s",p); \
    } \

#define bc_glue(type,field) \
    { \
     bc_word(type); \
     printf("'"); \
     char *p, buffer_g[strlen(field)+1]; \
     strcpy(buffer_g,field); \
     for (p=buffer_g;*p;p++) \
        *p = *p=='.' ? '\'' : ispunct(*p) ? '_' : *p; \
     bc_word(buffer_g); \
    } \

#define bc_typemarkup(name) \
    { \
     char buffer_t[strlen(name)+1]; \
     strcpy(buffer_t,name); \
     char *p1,*p2,*p3; \
     p1 = buffer_t; \
     while (*p1) \
        { \
         for (p2=p1;*p2 && *p2!='<';p2++); \
         for (p3=p2;*p3 && *p3!='>';p3++); \
         if (*p2 == '<') *p2++ = '\0'; \
         if (*p3 == '>') *p3++ = '\0'; \
         printf("%s",p1); \
         if (*p2) bc_conid(p2); \
         p1 = p3; \
        } \
    } \

#define bc_varid(name) {printf("c'");bc_word(name);}; \

#define bc_conid(name) {printf("C'");bc_word(name);}; \

#define bc_ptrid(name) {printf("p'");bc_word(name);}; \

#define bc_wrapper(name) {printf("mk'");bc_word(name);}; \

#define bc_fieldname(type,field) {printf("c'");bc_glue(type,field);}; \

#define bc_famaccess(type,field) {printf("p'");bc_glue(type,field);}; \

#define bc_decimal(name) (name) > 0 \
    ? printf("%"PRIuMAX,(uintmax_t)(name)) \
    : printf("%"PRIdMAX,(intmax_t)(name)) \

#define bc_wordptr(name) printf("%"PRIuPTR,(uintptr_t)(name)) \

#define bc_float(name) printf("%Le",(long double)(name)) \

#define hsc_num(name) \
    bc_varid(# name);printf(" = ");bc_decimal(name);printf("\n"); \
    bc_varid(# name);printf(" :: (Num a) => a\n"); \

#define hsc_fractional(name) \
    bc_varid(# name);printf(" = ");bc_float(name);printf("\n"); \
    bc_varid(# name);printf(" :: (Fractional a) => a\n"); \

#define hsc_pointer(name) \
    bc_varid(# name);printf(" = wordPtrToPtr "); \
    bc_wordptr(name);printf("\n"); \
    bc_varid(# name);printf(" :: Ptr a\n"); \

#define hsc_function_pointer(name) \
    bc_varid(# name);printf(" = (castPtrToFunPtr . wordPtrToPtr) "); \
    bc_wordptr(name);printf("\n"); \
    bc_varid(# name);printf(" :: FunPtr a\n"); \

#define hsc_ccall(name,type) \
    printf("foreign import ccall \"%s\" ",# name); \
    bc_varid(# name);printf("\n"); \
    printf("  :: ");bc_typemarkup(# type);printf("\n"); \
    printf("foreign import ccall \"&%s\" ",# name); \
    bc_ptrid(# name);printf("\n"); \
    printf("  :: FunPtr (");bc_typemarkup(# type);printf(")\n"); \

#define hsc_cinline(name,type) \
    printf("foreign import ccall \"inline_%s\" ",# name); \
    bc_varid(# name);printf("\n"); \
    printf("  :: ");bc_typemarkup(# type);printf("\n"); \

#define hsc_globalvar(name,type) \
    printf("foreign import ccall \"&%s\" ",# name); \
    bc_ptrid(# name);printf("\n"); \
    printf("  :: Ptr (");bc_typemarkup(# type);printf(")\n"); \

#define hsc_globalarray(name,type) \
    printf("foreign import ccall \"array_%s\" ",# name); \
    bc_varid(# name);printf("\n"); \
    printf("  :: Ptr (");bc_typemarkup(# type);printf(")\n"); \

#define hsc_integral_t(name) \
    printf("type ");bc_conid(# name);printf(" = "); \
    { \
     int sign = (name)(-1)<0; \
     size_t size = sizeof(name); \
     if (size==sizeof(int)) printf("%s",sign?"CInt":"CUInt"); \
     else if (size==sizeof(char)) printf("%s", \
       (char)(-1)<0?(sign?"CChar":"CUChar"):(sign?"CSChar":"CChar")); \
     else printf("%s%"PRIuMAX,sign?"Int":"Word",(uintmax_t)(8*size)); \
     printf("\n"); \
    } \

#define hsc_opaque_t(name) \
    printf("data ");bc_conid(# name); \
    printf(" = "); \
    bc_conid(# name);printf("\n"); \

#define hsc_synonym_t(name,type) \
    printf("type ");bc_conid(# name); \
    printf(" = "); \
    bc_typemarkup(# type); \
    printf("\n"); \

#define hsc_callback(name,type) \
    printf("type ");bc_conid(# name);printf(" = FunPtr ("); \
    bc_typemarkup(# type);printf(")\n"); \
    printf("foreign import ccall \"wrapper\" "); \
    bc_wrapper(# name);printf("\n"); \
    printf("  :: (");bc_typemarkup(# type); \
    printf(") -> IO ");bc_conid(# name);printf("\n"); \

#define hsc_starttype(name) \
    { \
     name *refpointer = 0; \
     struct {int n, k[500]; size_t s[500], o[500];} f; \
     f.n = 0; \
     printf("data ");bc_conid(# name);printf(" = "); \
     bc_conid(# name);printf("{"); \
     char typename[] = # name; \
     size_t typesize = sizeof(name); \
     struct {int d; char n[1000], t[1000];} fam; \
     fam.n[0] = '\0' ; \

#define bc_prefield(name,type,typeofarray) \
     if (f.n > 0) printf(","); \
     printf("\n  "); \
     bc_fieldname(typename,# name); \
     printf(" :: ");bc_typemarkup(# type); \
     f.k[f.n] = typeofarray; \
     f.o[f.n] = (size_t)&(refpointer->name); \

#define bc_posfield \
     f.n++; \

#define hsc_field(name,type) \
     bc_prefield(name,type,(1)); \
     bc_posfield; \

#define hsc_array_field(name,type) \
     bc_prefield(name,[type],2); \
     f.s[f.n] = sizeof(refpointer->name); \
     f.s[f.n] /= sizeof(refpointer->name[0]); \
     bc_posfield; \

#define hsc_union_field(name,type) \
     bc_prefield(name,[type],3); \
     bc_posfield; \

#define hsc_union_array_field(name,type) \
     bc_prefield(name,[type],4); \
     bc_posfield; \

#define hsc_flexible_array_member(name,type) \
     bc_prefield(name,[type],5); \
     strcpy(fam.n,# name); strcpy(fam.t,# type); \
     fam.d = f.o[f.n]; \
     bc_posfield; \

#define hsc_stoptype(dummy) \
     printf("\n } deriving (Eq,Show)\n"); \
     if (*fam.n) \
        { \
         bc_famaccess(typename,fam.n); \
         printf(" p = plusPtr p %d\n",fam.d); \
         bc_famaccess(typename,fam.n); \
         printf(" :: Ptr (");bc_conid(typename);printf(") -> "); \
         printf("Ptr (");bc_typemarkup(fam.t);printf(")\n"); \
        } \
     printf("instance Storable "); \
     bc_conid(typename);printf(" where\n"); \
     printf("  sizeOf _ = %"PRIuMAX"\n  alignment = sizeOf\n", \
       (uintmax_t)(typesize)); \
     printf("  peek p = do\n"); \
     int i; \
     for (i=0;i<f.n;i++) \
        { \
         printf("    v%d <- ",i); \
         if (f.k[i] == 1 || f.k[i] == 3) \
            printf("peekByteOff p %"PRIuMAX"",(uintmax_t)(f.o[i])); \
         if (f.k[i] == 2 || f.k[i] == 4) \
            printf("peekArray %"PRIuMAX" (plusPtr p %"PRIuMAX")", \
              (uintmax_t)(f.s[i]),(uintmax_t)(f.o[i])); \
         if (f.k[i] == 5) \
            printf("return []"); \
         printf("\n"); \
        } \
     printf("    return $ ");bc_conid(typename); \
     for (i=0;i<f.n;i++) printf(" v%d",i); printf("\n"); \
     printf("  poke p (");bc_conid(typename); \
     for (i=0;i<f.n;i++) printf(" v%d",i); printf(") = do\n"); \
     for (i=0;i<f.n;i++) \
        { \
         printf("    "); \
         if (f.k[i] == 1 || f.k[i] == 3) \
            printf("pokeByteOff p %"PRIuMAX" v%d",(uintmax_t)(f.o[i]),i); \
         if (f.k[i] == 2 || f.k[i] == 4) \
            printf("pokeArray (plusPtr p %"PRIuMAX") " \
              "(take %"PRIuMAX" v%d)",(uintmax_t)(f.o[i]), \
              (uintmax_t)(f.s[i]),i); \
         if (f.k[i] == 5) \
            printf("pokeArray (plusPtr p %"PRIuMAX") v%d", \
              (uintmax_t)(f.o[i]),i); \
         printf("\n"); \
        } \
     printf("    return ()\n"); \
    } \

#endif /* __BINDINGS_DSL_H__ */

