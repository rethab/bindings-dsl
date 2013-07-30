#include <bindings.dsl.h>
#include <gsl/gsl_rng.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Random-Number-Generation.html>

module Bindings.Gsl.RandomNumberGeneration where
#strict_import

#starttype gsl_rng_type
#field name , CString
#field max , CULong
#field min , CULong
#field size , CSize
#field set , FunPtr (Ptr () -> CULong -> IO ())
#field get , FunPtr (Ptr () -> IO  CULong)
#field get_double , FunPtr (Ptr () -> IO  CDouble)
#stoptype

#starttype gsl_rng
#field type , Ptr <gsl_rng_type>
#field state , Ptr ()
#stoptype

#globalvar gsl_rng_borosh13 , Ptr gsl_rng_type
#globalvar gsl_rng_coveyou , Ptr gsl_rng_type
#globalvar gsl_rng_cmrg , Ptr gsl_rng_type
#globalvar gsl_rng_fishman18 , Ptr gsl_rng_type
#globalvar gsl_rng_fishman20 , Ptr gsl_rng_type
#globalvar gsl_rng_fishman2x , Ptr gsl_rng_type
#globalvar gsl_rng_gfsr4 , Ptr gsl_rng_type
#globalvar gsl_rng_knuthran , Ptr gsl_rng_type
#globalvar gsl_rng_knuthran2 , Ptr gsl_rng_type
#globalvar gsl_rng_knuthran2002 , Ptr gsl_rng_type
#globalvar gsl_rng_lecuyer21 , Ptr gsl_rng_type
#globalvar gsl_rng_minstd , Ptr gsl_rng_type
#globalvar gsl_rng_mrg , Ptr gsl_rng_type
#globalvar gsl_rng_mt19937 , Ptr gsl_rng_type
#globalvar gsl_rng_mt19937_1999 , Ptr gsl_rng_type
#globalvar gsl_rng_mt19937_1998 , Ptr gsl_rng_type
#globalvar gsl_rng_r250 , Ptr gsl_rng_type
#globalvar gsl_rng_ran0 , Ptr gsl_rng_type
#globalvar gsl_rng_ran1 , Ptr gsl_rng_type
#globalvar gsl_rng_ran2 , Ptr gsl_rng_type
#globalvar gsl_rng_ran3 , Ptr gsl_rng_type
#globalvar gsl_rng_rand , Ptr gsl_rng_type
#globalvar gsl_rng_rand48 , Ptr gsl_rng_type
#globalvar gsl_rng_random128_bsd , Ptr gsl_rng_type
#globalvar gsl_rng_random128_glibc2 , Ptr gsl_rng_type
#globalvar gsl_rng_random128_libc5 , Ptr gsl_rng_type
#globalvar gsl_rng_random256_bsd , Ptr gsl_rng_type
#globalvar gsl_rng_random256_glibc2 , Ptr gsl_rng_type
#globalvar gsl_rng_random256_libc5 , Ptr gsl_rng_type
#globalvar gsl_rng_random32_bsd , Ptr gsl_rng_type
#globalvar gsl_rng_random32_glibc2 , Ptr gsl_rng_type
#globalvar gsl_rng_random32_libc5 , Ptr gsl_rng_type
#globalvar gsl_rng_random64_bsd , Ptr gsl_rng_type
#globalvar gsl_rng_random64_glibc2 , Ptr gsl_rng_type
#globalvar gsl_rng_random64_libc5 , Ptr gsl_rng_type
#globalvar gsl_rng_random8_bsd , Ptr gsl_rng_type
#globalvar gsl_rng_random8_glibc2 , Ptr gsl_rng_type
#globalvar gsl_rng_random8_libc5 , Ptr gsl_rng_type
#globalvar gsl_rng_random_bsd , Ptr gsl_rng_type
#globalvar gsl_rng_random_glibc2 , Ptr gsl_rng_type
#globalvar gsl_rng_random_libc5 , Ptr gsl_rng_type
#globalvar gsl_rng_randu , Ptr gsl_rng_type
#globalvar gsl_rng_ranf , Ptr gsl_rng_type
#globalvar gsl_rng_ranlux , Ptr gsl_rng_type
#globalvar gsl_rng_ranlux389 , Ptr gsl_rng_type
#globalvar gsl_rng_ranlxd1 , Ptr gsl_rng_type
#globalvar gsl_rng_ranlxd2 , Ptr gsl_rng_type
#globalvar gsl_rng_ranlxs0 , Ptr gsl_rng_type
#globalvar gsl_rng_ranlxs1 , Ptr gsl_rng_type
#globalvar gsl_rng_ranlxs2 , Ptr gsl_rng_type
#globalvar gsl_rng_ranmar , Ptr gsl_rng_type
#globalvar gsl_rng_slatec , Ptr gsl_rng_type
#globalvar gsl_rng_taus , Ptr gsl_rng_type
#globalvar gsl_rng_taus2 , Ptr gsl_rng_type
#globalvar gsl_rng_taus113 , Ptr gsl_rng_type
#globalvar gsl_rng_transputer , Ptr gsl_rng_type
#globalvar gsl_rng_tt800 , Ptr gsl_rng_type
#globalvar gsl_rng_uni , Ptr gsl_rng_type
#globalvar gsl_rng_uni32 , Ptr gsl_rng_type
#globalvar gsl_rng_vax , Ptr gsl_rng_type
#globalvar gsl_rng_waterman14 , Ptr gsl_rng_type
#globalvar gsl_rng_zuf , Ptr gsl_rng_type

#ccall gsl_rng_types_setup , IO (Ptr (Ptr <gsl_rng_type>))

#globalvar gsl_rng_default , Ptr gsl_rng_type
#globalvar gsl_rng_default_seed , CULong

#ccall gsl_rng_alloc , Ptr <gsl_rng_type> -> IO (Ptr <gsl_rng>)
#ccall gsl_rng_memcpy , Ptr <gsl_rng> -> Ptr <gsl_rng> -> IO CInt
#ccall gsl_rng_clone , Ptr <gsl_rng> -> IO (Ptr <gsl_rng>)
#ccall gsl_rng_free , Ptr <gsl_rng> -> IO ()
#ccall gsl_rng_set , Ptr <gsl_rng> -> CULong -> IO ()
#ccall gsl_rng_max , Ptr <gsl_rng> -> IO CULong
#ccall gsl_rng_min , Ptr <gsl_rng> -> IO CULong
#ccall gsl_rng_name , Ptr <gsl_rng> -> IO CString
#ccall gsl_rng_fread , Ptr CFile -> Ptr <gsl_rng> -> IO CInt
#ccall gsl_rng_fwrite , Ptr CFile -> Ptr <gsl_rng> -> IO CInt
#ccall gsl_rng_size , Ptr <gsl_rng> -> IO CSize
#ccall gsl_rng_state , Ptr <gsl_rng> -> IO (Ptr ())
#ccall gsl_rng_print_state , Ptr <gsl_rng> -> IO ()
#ccall gsl_rng_env_setup , IO (Ptr <gsl_rng_type>)
#ccall gsl_rng_get , Ptr <gsl_rng> -> IO CULong
#ccall gsl_rng_uniform , Ptr <gsl_rng> -> IO CDouble
#ccall gsl_rng_uniform_pos , Ptr <gsl_rng> -> IO CDouble
#ccall gsl_rng_uniform_int , Ptr <gsl_rng> -> CULong -> IO CULong

