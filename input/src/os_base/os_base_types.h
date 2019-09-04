#ifndef _OS_BASE_TYPES_H_
#define _OS_BASE_TYPES_H_


/*
64-bit data models (see Wikipedia)
Data model
        short (integer)	int	    long (integer)	long long	pointers/size_t	Sample operating systems
LLP64/
IL32P64	16	            32	    32	            64	        64	Microsoft Windows (X64/IA-64)
LP64/
I32LP64	16	            32	    64	            64	        64	Most Unix and Unix-like systems, e.g. Solaris, Linux, BSD, and OS X; z/OS
ILP64	16	            64	    64	            64	        64	HAL Computer Systems port of Solaris to SPARC64
SILP64	64	            64	    64	            64	        64	UNICOS
*/
#if(INTEGER_MODEL == INTEGER_LLP64_IL32P64)
typedef unsigned char  unsigned_char_t;
typedef signed   char  signed_char_t;
typedef unsigned char  unsigned_int8_t;
typedef signed   char  signed_int8_t;
typedef unsigned char  uint8;
typedef signed   char  sint8;
typedef unsigned short unsigned_int16_t;
typedef signed short   signed_int16_t;
typedef unsigned short uint16;
typedef signed short   sint16;
typedef unsigned long  unsigned_int32_t;
typedef signed long    signed_int32_t;
typedef unsigned long  uint32;
typedef signed long    sint32;
/*typedef uint32         size_t;*/
#if(ISO_CPP_VERSION > CPP_VERSION_1998)
typedef unsigned long long  unsigned_int64_t;
typedef signed long long    signed_int64_t;
#endif
#elif (INTEGER_MODEL == INTEGER_LP64_I32LP64)
typedef unsigned char  unsigned_char_t;
typedef signed char    signed_char_t;
typedef unsigned char  unsigned_int8_t;
typedef signed char    signed_int8_t;
typedef unsigned char  uint8;
typedef signed char    sint8;
typedef unsigned short unsigned_int16_t;
typedef signed short   signed_int16_t;
typedef unsigned short uint16;
typedef signed short   sint16;
typedef unsigned int   unsigned_int32_t;
typedef signed int     signed_int32_t;
typedef unsigned int   uint32;
typedef signed int     sint32;
typedef unsigned long  unsigned_int64_t;
typedef signed long    signed_int64_t;

/*typedef uint32         size_t;*/
#elif (INTEGER_MODEL == INTEGER_ILP64)
#error "unsigned_int32_t not supported"
typedef unsigned char  unsigned_char_t;
typedef signed char    signed_char_t;
typedef unsigned char  unsigned_int8_t;
typedef signed char    signed_int8_t;
typedef unsigned char  uint8;
typedef signed char    sint8;
typedef unsigned short unsigned_int16_t;
typedef signed short   signed_int16_t;
typedef unsigned short uint16;
typedef signed short   sint16;
/*typedef ...  unsigned_int32_t;*/
typedef unsigned long long  unsigned_int64_t;
typedef signed long long    signed_int64_t;
typedef unsigned long long  uint64;
typedef signed long long    sint64;
/*typedef uint64         size_t;*/
#elif (INTEGER_MODEL == INTEGER_SILP64)
#error "unsigned_char_t, unsigned_int16_t, unsigned_int32_t  not supported"
/*typedef ...  unsigned_char_t;*/
/*typedef unsigned char  unsigned_int8_t;*/
/*typedef ... unsigned_int16_t;*/
/*typedef ...  unsigned_int32_t;*/
typedef unsigned long long  unsigned_int64_t;
typedef   signed long long  signed_int64_t;
typedef unsigned long long  uint64;
typedef   signed long long  sint64;
/*typedef uint64         size_t;*/
#else
#error "invalid INTEGER_MODEL"
#endif

#endif /* _OS_BASE_TYPES_H_ */