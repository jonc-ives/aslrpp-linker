/* Internal format of COFF object file data structures, for GNU BFD.
   This file is part of BFD, the Binary File Descriptor library.

   Copyright (C) 1999-2023 Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston,
   MA 02110-1301, USA.  */

#ifndef GNU_COFF_INTERNAL_H
#define GNU_COFF_INTERNAL_H 1

/* First, make "signed char" work, even on old compilers. */
#ifndef signed
#ifndef __STDC__
#define	signed			/**/
#endif
#endif

/********************** FILE HEADER **********************/

/* extra stuff in a PE header. */

struct internal_extra_pe_filehdr
{
  /* DOS header data follows for PE stuff */
  unsigned short e_magic;	/* Magic number, 0x5a4d */
  unsigned short e_cblp;	/* Bytes on last page of file, 0x90 */
  unsigned short e_cp;		/* Pages in file, 0x3 */
  unsigned short e_crlc;	/* Relocations, 0x0 */
  unsigned short e_cparhdr;	/* Size of header in paragraphs, 0x4 */
  unsigned short e_minalloc;	/* Minimum extra paragraphs needed, 0x0 */
  unsigned short e_maxalloc;	/* Maximum extra paragraphs needed, 0xFFFF */
  unsigned short e_ss;		/* Initial (relative) SS value, 0x0 */
  unsigned short e_sp;		/* Initial SP value, 0xb8 */
  unsigned short e_csum;	/* Checksum, 0x0 */
  unsigned short e_ip;		/* Initial IP value, 0x0 */
  unsigned short e_cs;		/* Initial (relative) CS value, 0x0 */
  unsigned short e_lfarlc;	/* File address of relocation table, 0x40 */
  unsigned short e_ovno;	/* Overlay number, 0x0 */
  unsigned short e_res[4];	/* Reserved words, all 0x0 */
  unsigned short e_oemid;	/* OEM identifier (for e_oeminfo), 0x0 */
  unsigned short e_oeminfo;	/* OEM information; e_oemid specific, 0x0 */
  unsigned short e_res2[10];	/* Reserved words, all 0x0 */
  bfd_vma  e_lfanew;		/* File address of new exe header, 0x80 */
  unsigned int dos_message[16]; /* Text which always follows DOS header.  */
  bfd_vma  nt_signature;   	/* required NT signature, 0x4550 */
};

struct internal_filehdr
{
  struct internal_extra_pe_filehdr pe;

  /* Standard coff internal info.  */
  unsigned short f_magic;	/* magic number			*/
  unsigned int   f_nscns;	/* number of sections		*/
  long f_timdat;		/* time & date stamp		*/
  bfd_vma f_symptr;		/* file pointer to symtab	*/
  long f_nsyms;			/* number of symtab entries	*/
  unsigned short f_opthdr;	/* sizeof(optional hdr)		*/
  unsigned short f_flags;	/* flags			*/
  unsigned short f_target_id;	/* (TI COFF specific)		*/
};


/* Bits for f_flags:
 	F_RELFLG	relocation info stripped from file
 	F_EXEC		file is executable (no unresolved external references)
 	F_LNNO		line numbers stripped from file
 	F_LSYMS		local symbols stripped from file
 	F_AR16WR	file is 16-bit little-endian
 	F_AR32WR	file is 32-bit little-endian
 	F_AR32W		file is 32-bit big-endian
 	F_DYNLOAD	rs/6000 aix: dynamically loadable w/imports & exports
 	F_SHROBJ	rs/6000 aix: file is a shared object
	F_DLL           PE format DLL  */

#define	F_RELFLG	(0x0001)
#define	F_EXEC		(0x0002)
#define	F_LNNO		(0x0004)
#define	F_LSYMS		(0x0008)
#define	F_AR16WR	(0x0080)
#define	F_AR32WR	(0x0100)
#define	F_AR32W     	(0x0200)
#define	F_DYNLOAD	(0x1000)
#define	F_SHROBJ	(0x2000)
#define F_DLL           (0x2000)

/* Extra structure which is used in the optional header.  */
typedef struct _IMAGE_DATA_DIRECTORY
{
  bfd_vma VirtualAddress;
  long    Size;
}  IMAGE_DATA_DIRECTORY;
#define PE_EXPORT_TABLE			0
#define PE_IMPORT_TABLE			1
#define PE_RESOURCE_TABLE		2
#define PE_EXCEPTION_TABLE		3
#define PE_CERTIFICATE_TABLE		4
#define PE_BASE_RELOCATION_TABLE	5
#define PE_DEBUG_DATA			6
#define PE_ARCHITECTURE			7
#define PE_GLOBAL_PTR			8
#define PE_TLS_TABLE			9
#define PE_LOAD_CONFIG_TABLE		10
#define PE_BOUND_IMPORT_TABLE		11
#define PE_IMPORT_ADDRESS_TABLE		12
#define PE_DELAY_IMPORT_DESCRIPTOR	13
#define PE_CLR_RUNTIME_HEADER		14
/* DataDirectory[15] is currently reserved, so no define. */
#define IMAGE_NUMBEROF_DIRECTORY_ENTRIES  16

/* Extra structure used in debug directory.  */
struct internal_IMAGE_DEBUG_DIRECTORY
{
  unsigned long  Characteristics;
  unsigned long  TimeDateStamp;
  unsigned short MajorVersion;
  unsigned short MinorVersion;
  unsigned long  Type;
  unsigned long  SizeOfData;
  unsigned long  AddressOfRawData;
  unsigned long  PointerToRawData;
};

#define PE_IMAGE_DEBUG_TYPE_UNKNOWN          0
#define PE_IMAGE_DEBUG_TYPE_COFF             1
#define PE_IMAGE_DEBUG_TYPE_CODEVIEW         2
#define PE_IMAGE_DEBUG_TYPE_FPO              3
#define PE_IMAGE_DEBUG_TYPE_MISC             4
#define PE_IMAGE_DEBUG_TYPE_EXCEPTION        5
#define PE_IMAGE_DEBUG_TYPE_FIXUP            6
#define PE_IMAGE_DEBUG_TYPE_OMAP_TO_SRC      7
#define PE_IMAGE_DEBUG_TYPE_OMAP_FROM_SRC    8
#define PE_IMAGE_DEBUG_TYPE_BORLAND          9
#define PE_IMAGE_DEBUG_TYPE_RESERVED10       10
#define PE_IMAGE_DEBUG_TYPE_CLSID            11
#define PE_IMAGE_DEBUG_TYPE_VC_FEATURE       12
#define PE_IMAGE_DEBUG_TYPE_POGO             13
#define PE_IMAGE_DEBUG_TYPE_ILTCG            14
#define PE_IMAGE_DEBUG_TYPE_MPX              15
#define PE_IMAGE_DEBUG_TYPE_REPRO            16

/* Extra structure for a codeview debug record */
#define CV_INFO_SIGNATURE_LENGTH 16

typedef struct _CODEVIEW_INFO
{
  unsigned long CVSignature;
  char          Signature[CV_INFO_SIGNATURE_LENGTH];
  unsigned int  SignatureLength;
  unsigned long Age;
  /* char PdbFileName[];  */
} CODEVIEW_INFO;

/* Default image base for NT.  */
#define NT_EXE_IMAGE_BASE 0x400000
#define NT_DLL_IMAGE_BASE 0x10000000

/* Default image base for BeOS. */
#define BEOS_EXE_IMAGE_BASE 0x80000000
#define BEOS_DLL_IMAGE_BASE 0x10000000

/* Extra stuff in a PE aouthdr */

#define PE_DEF_SECTION_ALIGNMENT 0x1000
#ifndef PE_DEF_FILE_ALIGNMENT
# define PE_DEF_FILE_ALIGNMENT 0x200
#endif

struct internal_extra_pe_aouthdr
{
  /* FIXME: The following entries are in AOUTHDR.  But they aren't
     available internally in bfd.  We add them here so that objdump
     can dump them.  */
  /* The state of the image file.  */
  short Magic;
  /* Linker major version number.  */
  char MajorLinkerVersion;
  /* Linker minor version number.  */
  char MinorLinkerVersion;	
  /* Total size of all code sections.  */
  bfd_vma SizeOfCode;
  /* Total size of all initialized data sections.  */
  bfd_vma SizeOfInitializedData;
  /* Total size of all uninitialized data sections.  */
  bfd_vma SizeOfUninitializedData;
  /* Address of entry point relative to image base.  */
  bfd_vma AddressOfEntryPoint;
  /* Address of the first code section relative to image base.  */
  bfd_vma BaseOfCode;
  /* Address of the first data section relative to image base.  */
  bfd_vma BaseOfData;

  /* PE stuff  */
  bfd_vma ImageBase;		/* Address of specific location in memory that
				   file is located, NT default 0x10000.  */

  uint32_t SectionAlignment;	/* Section alignment default 0x1000.  */
  uint32_t FileAlignment;	/* File alignment default 0x200.  */
  short MajorOperatingSystemVersion; /* Minimum version of the operating.  */
  short MinorOperatingSystemVersion; /* System req'd for exe, default 1.  */
  short MajorImageVersion;	/* User defineable field to store version of */
  short MinorImageVersion;	/*  exe or dll being created, default to 0.  */
  short MajorSubsystemVersion;	/* Minimum subsystem version required to */
  short MinorSubsystemVersion;	/*  run exe; default to 3.1.  */
  uint32_t Reserved1;		/* Seems to be 0.  */
  uint32_t SizeOfImage;		/* Size of memory to allocate for prog.  */
  uint32_t SizeOfHeaders;	/* Size of PE header and section table.  */
  uint32_t CheckSum;		/* Set to 0.  */
  short Subsystem;

  /* Type of subsystem exe uses for user interface,
     possible values:
     1 - NATIVE   Doesn't require a subsystem
     2 - WINDOWS_GUI runs in Windows GUI subsystem
     3 - WINDOWS_CUI runs in Windows char sub. (console app)
     5 - OS2_CUI runs in OS/2 character subsystem
     7 - POSIX_CUI runs in Posix character subsystem.  */
  unsigned short DllCharacteristics; /* flags for DLL init.  */
  bfd_vma SizeOfStackReserve;	/* Amount of memory to reserve.  */
  bfd_vma SizeOfStackCommit;	/* Amount of memory initially committed for
				   initial thread's stack, default 0x1000.  */
  bfd_vma SizeOfHeapReserve;	/* Amount of virtual memory to reserve and */
  bfd_vma SizeOfHeapCommit;	/*  commit, don't know what to defaut it to.  */
  uint32_t LoaderFlags;		/* Can probably set to 0.  */
  uint32_t NumberOfRvaAndSizes;	/* Number of entries in next entry, 16.  */
  IMAGE_DATA_DIRECTORY DataDirectory[IMAGE_NUMBEROF_DIRECTORY_ENTRIES];
};

/********************** AOUT "OPTIONAL HEADER" **********************/
struct internal_aouthdr
{
  short magic;			/* type of file				*/
  short vstamp;			/* version stamp			*/
  bfd_vma tsize;		/* text size in bytes, padded to FW bdry*/
  bfd_vma dsize;		/* initialized data "  "		*/
  bfd_vma bsize;		/* uninitialized data "   "		*/
  bfd_vma entry;		/* entry pt.				*/
  bfd_vma text_start;		/* base of text used for this file */
  bfd_vma data_start;		/* base of data used for this file */

  /* RS/6000 stuff */
  bfd_vma o_toc;		/* address of TOC			*/
  short o_snentry;		/* section number for entry point */
  short o_sntext;		/* section number for text	*/
  short o_sndata;		/* section number for data	*/
  short o_sntoc;		/* section number for toc	*/
  short o_snloader;		/* section number for loader section */
  short o_snbss;		/* section number for bss	*/
  short o_algntext;		/* max alignment for text	*/
  short o_algndata;		/* max alignment for data	*/
  short o_modtype;		/* Module type field, 1R,RE,RO	*/
  short o_cputype;		/* Encoded CPU type		*/
  bfd_vma o_maxstack;		/* max stack size allowed.	*/
  bfd_vma o_maxdata;		/* max data size allowed.	*/
  char o_flags;			/* Flags and TLS alignment	*/
  short o_sntdata;		/* section number for tdata	*/
  short o_sntbss;		/* section number for tbss	*/
  short o_x64flags;		/* XCOFF64 flags		*/


  /* ECOFF stuff */
  bfd_vma bss_start;		/* Base of bss section.		*/
  bfd_vma gp_value;		/* GP register value.		*/
  unsigned long gprmask;	/* General registers used.	*/
  unsigned long cprmask[4];	/* Coprocessor registers used.	*/
  unsigned long fprmask;	/* Floating pointer registers used.  */

  /* Apollo stuff */
  long o_inlib;			/* inlib data */
  long o_sri;			/* Static Resource Information */
  long vid[2];			/* Version id */

  struct internal_extra_pe_aouthdr pe;
};

/********************** STORAGE CLASSES **********************/

/* This used to be defined as -1, but now n_sclass is unsigned.  */
#define C_EFCN		0xff	/* physical end of function	*/
#define C_NULL		0
#define C_AUTO		1	/* automatic variable		*/
#define C_EXT		2	/* external symbol		*/
#define C_STAT		3	/* static			*/
#define C_REG		4	/* register variable		*/
#define C_EXTDEF	5	/* external definition		*/
#define C_LABEL		6	/* label			*/
#define C_ULABEL	7	/* undefined label		*/
#define C_MOS		8	/* member of structure		*/
#define C_ARG		9	/* function argument		*/
#define C_STRTAG	10	/* structure tag		*/
#define C_MOU		11	/* member of union		*/
#define C_UNTAG		12	/* union tag			*/
#define C_TPDEF		13	/* type definition		*/
#define C_USTATIC	14	/* undefined static		*/
#define C_ENTAG		15	/* enumeration tag		*/
#define C_MOE		16	/* member of enumeration	*/
#define C_REGPARM	17	/* register parameter		*/
#define C_FIELD		18	/* bit field			*/
#define C_AUTOARG	19	/* auto argument		*/
#define C_LASTENT	20	/* dummy entry (end of block)	*/
#define C_BLOCK		100	/* ".bb" or ".eb"		*/
#define C_FCN		101	/* ".bf" or ".ef"		*/
#define C_EOS		102	/* end of structure		*/
#define C_FILE		103	/* file name			*/
#define C_LINE		104	/* line # reformatted as symbol table entry */
#define C_ALIAS	 	105	/* duplicate tag		*/
#define C_HIDDEN	106	/* ext symbol in dmert public lib */
#define C_WEAKEXT	127	/* weak symbol -- GNU extension.  */

/* New storage classes for TI COFF */
#define C_UEXT		19	/* Tentative external definition */
#define C_STATLAB	20	/* Static load time label */
#define C_EXTLAB	21	/* External load time label */
#define C_SYSTEM	23	/* System Wide variable */

/* New storage classes for WINDOWS_NT   */
#define C_SECTION       104     /* section name */
#define C_NT_WEAK	105	/* weak external */

 /* New storage classes for 80960 */

/* C_LEAFPROC is obsolete.  Use C_LEAFEXT or C_LEAFSTAT */
#define C_LEAFPROC	108	/* Leaf procedure, "call" via BAL */

#define C_SCALL		107	/* Procedure reachable via system call */
#define C_LEAFEXT       108	/* External leaf */
#define C_LEAFSTAT      113	/* Static leaf */
#define C_OPTVAR	109	/* Optimized variable		*/
#define C_DEFINE	110	/* Preprocessor #define		*/
#define C_PRAGMA	111	/* Advice to compiler or linker	*/
#define C_SEGMENT	112	/* 80960 segment name		*/

 /* New storage classes for RS/6000 */
#define C_HIDEXT        107	/* Un-named external symbol */
#define C_BINCL         108	/* Marks beginning of include file */
#define C_EINCL         109	/* Marks ending of include file */
#define C_AIX_WEAKEXT   111	/* AIX definition of C_WEAKEXT.  */
#define C_DWARF         112	/* DWARF symbol  */

#define C_NULL_VALUE	0x00de1e00    /* Value for a C_NULL deleted entry.  */

#if defined _AIX52 || defined AIX_WEAK_SUPPORT
#undef C_WEAKEXT
#define C_WEAKEXT       C_AIX_WEAKEXT
#endif

 /* storage classes for stab symbols for RS/6000 */
#define C_GSYM          (0x80)
#define C_LSYM          (0x81)
#define C_PSYM          (0x82)
#define C_RSYM          (0x83)
#define C_RPSYM         (0x84)
#define C_STSYM         (0x85)
#define C_TCSYM         (0x86)
#define C_BCOMM         (0x87)
#define C_ECOML         (0x88)
#define C_ECOMM         (0x89)
#define C_DECL          (0x8c)
#define C_ENTRY         (0x8d)
#define C_FUN           (0x8e)
#define C_BSTAT         (0x8f)
#define C_ESTAT         (0x90)
#define C_GTLS          (0x97)
#define C_STTLS         (0x98)

/* Storage classes for Thumb symbols */
#define C_THUMBEXT      (128 + C_EXT)		/* 130 */
#define C_THUMBSTAT     (128 + C_STAT)		/* 131 */
#define C_THUMBLABEL    (128 + C_LABEL)		/* 134 */
#define C_THUMBEXTFUNC  (C_THUMBEXT  + 20)	/* 150 */
#define C_THUMBSTATFUNC (C_THUMBSTAT + 20)	/* 151 */

/* True if XCOFF symbols of class CLASS have auxiliary csect information.  */
#define CSECT_SYM_P(CLASS) \
  ((CLASS) == C_EXT || (CLASS) == C_AIX_WEAKEXT || (CLASS) == C_HIDEXT)

/********************** SECTION HEADER **********************/

#define SCNNMLEN (8)

struct internal_scnhdr
{
  char s_name[SCNNMLEN] ATTRIBUTE_NONSTRING;	/* section name	*/

  /* Physical address, aliased s_nlib.
     In the pei format, this field is the virtual section size
     (the size of the section after being loaded int memory),
     NOT the physical address.  */
  bfd_vma s_paddr;

  bfd_vma s_vaddr;		/* virtual address		*/
  bfd_vma s_size;		/* section size			*/
  bfd_vma s_scnptr;		/* file ptr to raw data for section */
  bfd_vma s_relptr;		/* file ptr to relocation	*/
  bfd_vma s_lnnoptr;		/* file ptr to line numbers	*/
  unsigned long s_nreloc;	/* number of relocation entries	*/
  unsigned long s_nlnno;	/* number of line number entries*/
  unsigned long s_flags;	/* flags			*/
  unsigned char s_page;         /* TI COFF load page            */
};

/* s_flags "type".  */
#define STYP_REG	 (0x0000)	/* "regular": allocated, relocated, loaded */
#define STYP_DSECT	 (0x0001)	/* "dummy":  relocated only*/
#define STYP_NOLOAD	 (0x0002)	/* "noload": allocated, relocated, not loaded */
#define STYP_GROUP	 (0x0004)	/* "grouped": formed of input sections */
#define STYP_PAD	 (0x0008)	/* "padding": not allocated, not relocated, loaded */
#define STYP_COPY	 (0x0010)	/* "copy": for decision function used by field update;  not allocated, not relocated,
									     loaded; reloc & lineno entries processed normally */
#define STYP_TEXT	 (0x0020)	/* section contains text only */
#define S_SHRSEG	 (0x0020)	/* In 3b Update files (output of ogen), sections which appear in SHARED segments of the Pfile
									     will have the S_SHRSEG flag set by ogen, to inform dufr that updating 1 copy of the proc. will
									     update all process invocations. */
#define STYP_DATA	 (0x0040)	/* section contains data only */
#define STYP_BSS	 (0x0080)	/* section contains bss only */
#define S_NEWFCN	 (0x0100)	/* In a minimal file or an update file, a new function (as compared with a replaced function) */
#define STYP_INFO	 (0x0200)	/* comment: not allocated not relocated, not loaded */
#define STYP_OVER	 (0x0400)	/* overlay: relocated not allocated or loaded */
#define STYP_LIB	 (0x0800)	/* for .lib: same as INFO */
#define STYP_MERGE	 (0x2000)	/* merge section -- combines with text, data or bss sections only */
#define STYP_REVERSE_PAD (0x4000)	/* section will be padded with no-op instructions
					   wherever padding is necessary and there is a
					   word of contiguous bytes beginning on a word
					   boundary. */

#define STYP_LIT	0x8020	/* Literal data (like STYP_TEXT) */


/********************** LINE NUMBERS **********************/

/* 1 line number entry for every "breakpointable" source line in a section.
   Line numbers are grouped on a per function basis; first entry in a function
   grouping will have l_lnno = 0 and in place of physical address will be the
   symbol table index of the function name.  */

struct internal_lineno
{
  union
  {
    bfd_signed_vma l_symndx;		/* function name symbol index, iff l_lnno == 0*/
    bfd_signed_vma l_paddr;		/* (physical) address of line number	*/
  }     l_addr;
  unsigned long l_lnno;		/* line number		*/
};

/********************** SYMBOLS **********************/

#define SYMNMLEN	8	/* # characters in a symbol name	*/
#define FILNMLEN	14	/* # characters in a file name		*/
#define DIMNUM		4	/* # array dimensions in auxiliary entry */

struct internal_syment
{
  union
  {
    char _n_name[SYMNMLEN] ATTRIBUTE_NONSTRING;	/* old COFF version	*/
    struct
    {
      uintptr_t _n_zeroes;	/* new == 0			*/
      uintptr_t _n_offset;	/* offset into string table	*/
    }      _n_n;
    char *_n_nptr[2];		/* allows for overlaying	*/
  }     _n;
  bfd_vma n_value;		/* value of symbol		*/
  int n_scnum;			/* section number		*/
  unsigned short n_flags;	/* copy of flags from filhdr	*/
  unsigned short n_type;	/* type and derived type	*/
  unsigned char n_sclass;	/* storage class		*/
  unsigned char n_numaux;	/* number of aux. entries	*/
};

#define n_name		_n._n_name
#define n_zeroes	_n._n_n._n_zeroes
#define n_offset	_n._n_n._n_offset

/* Relocatable symbols have number of the section in which they are defined,
   or one of the following:  */

#define N_UNDEF	((int)0)	/* undefined symbol */
#define N_ABS	((int)-1)	/* value of symbol is absolute */
#define N_DEBUG	((int)-2)	/* debugging symbol -- value is meaningless */
#define N_TV	((int)-3)	/* indicates symbol needs preload transfer vector */
#define P_TV	((int)-4)	/* indicates symbol needs postload transfer vector*/

/* Type of a symbol, in low N bits of the word.  */

#define T_NULL		0
#define T_VOID		1	/* function argument (only used by compiler) */
#define T_CHAR		2	/* character		*/
#define T_SHORT		3	/* short integer	*/
#define T_INT		4	/* integer		*/
#define T_LONG		5	/* long integer		*/
#define T_FLOAT		6	/* floating point	*/
#define T_DOUBLE	7	/* double word		*/
#define T_STRUCT	8	/* structure 		*/
#define T_UNION		9	/* union 		*/
#define T_ENUM		10	/* enumeration 		*/
#define T_MOE		11	/* member of enumeration*/
#define T_UCHAR		12	/* unsigned character	*/
#define T_USHORT	13	/* unsigned short	*/
#define T_UINT		14	/* unsigned integer	*/
#define T_ULONG		15	/* unsigned long	*/
#define T_LNGDBL	16	/* long double		*/

/* Derived types, in n_type.  */

#define DT_NON		(0)	/* no derived type */
#define DT_PTR		(1)	/* pointer */
#define DT_FCN		(2)	/* function */
#define DT_ARY		(3)	/* array */

#define BTYPE(x)	((x) & N_BTMASK)
#define DTYPE(x)	(((x) & N_TMASK) >> N_BTSHFT)

#define ISPTR(x) \
  (((unsigned long) (x) & N_TMASK) == ((unsigned long) DT_PTR << N_BTSHFT))
#define ISFCN(x) \
  (((unsigned long) (x) & N_TMASK) == ((unsigned long) DT_FCN << N_BTSHFT))
#define ISARY(x) \
  (((unsigned long) (x) & N_TMASK) == ((unsigned long) DT_ARY << N_BTSHFT))
#define ISTAG(x) \
  ((x) == C_STRTAG || (x) == C_UNTAG || (x) == C_ENTAG)
#define DECREF(x) \
  ((((x) >> N_TSHIFT) & ~ N_BTMASK) | ((x) & N_BTMASK))

/* Visibility flag, in XCOFF n_type.  */
#define SYM_V_INTERNAL		0x1000
#define SYM_V_HIDDEN		0x2000
#define SYM_V_PROTECTED 	0x3000
#define SYM_V_EXPORTED		0x4000
#define SYM_V_MASK		0xF000

union internal_auxent
{
  struct
  {
    union
    {
      long l;			/* str, un, or enum tag indx */
      struct coff_ptr_struct *p;
    }     x_tagndx;

    union
    {
      struct
      {
	unsigned short x_lnno;	/* declaration line number */
	unsigned short x_size;	/* str/union/array size */
      }      x_lnsz;
      long x_fsize;		/* size of function */
    }     x_misc;

    union
    {
      struct
      {				/* if ISFCN, tag, or .bb */
	bfd_signed_vma x_lnnoptr;		/* ptr to fcn line # */
	union
	{			/* entry ndx past block end */
	  long l;
	  struct coff_ptr_struct *p;
	}     x_endndx;
      }      x_fcn;

      struct
      {				/* if ISARY, up to 4 dimen. */
	unsigned short x_dimen[DIMNUM];
      }      x_ary;
    }     x_fcnary;

    unsigned short x_tvndx;	/* tv index */
  }      x_sym;

  struct
  {
    union
    {
      /* PR 17754: We used to use FILNMLEN for the size of the x_fname
	 array, but that causes problems as PE targets use a larger
	 value.  We cannot use their definition of E_FILNMLEN as this
	 header can be used without including any PE headers.  */
      char x_fname[20];
      struct
      {
	/* PR 28630: We use uintptr_t because these fields may be
	   used to hold pointers.  We assume that this type is at least
	   32 bits.  */
	uintptr_t x_zeroes;
	uintptr_t x_offset;
      }      x_n;
    } x_n;

    unsigned char x_ftype;
  }     x_file;

  struct
  {
    long x_scnlen;		/* section length */
    unsigned short x_nreloc;	/* # relocation entries */
    unsigned short x_nlinno;	/* # line numbers */
    unsigned long x_checksum;	/* section COMDAT checksum for PE */
    unsigned short x_associated; /* COMDAT associated section index for PE */
    unsigned char x_comdat;	/* COMDAT selection number for PE */
  }      x_scn;

  struct
  {
    long x_tvfill;		/* tv fill value */
    unsigned short x_tvlen;	/* length of .tv */
    unsigned short x_tvran[2];	/* tv range */
  }      x_tv;			/* info about .tv section (in auxent of symbol .tv)) */

  /******************************************
   * RS/6000-specific auxent - last auxent for every external symbol
   ******************************************/
  struct
  {
    union
      {				/* csect length or enclosing csect */
	bfd_signed_vma l;
	struct coff_ptr_struct *p;
      } x_scnlen;
    long x_parmhash;		/* parm type hash index */
    unsigned short x_snhash;	/* sect num with parm hash */
    unsigned char x_smtyp;	/* symbol align and type */
    /* 0-4 - Log 2 of alignment */
    /* 5-7 - symbol type */
    unsigned char x_smclas;	/* storage mapping class */
    long x_stab;		/* dbx stab info index */
    unsigned short x_snstab;	/* sect num with dbx stab */
  }      x_csect;		/* csect definition information */

/* x_smtyp values:  */

#define	SMTYP_ALIGN(x)	((x) >> 3)	/* log2 of alignment */
#define	SMTYP_SMTYP(x)	((x) & 0x7)	/* symbol type */
/* Symbol type values:  */
#define	XTY_ER	0		/* External reference */
#define	XTY_SD	1		/* Csect definition */
#define	XTY_LD	2		/* Label definition */
#define XTY_CM	3		/* .BSS */
#define	XTY_EM	4		/* Error message */
#define	XTY_US	5		/* "Reserved for internal use" */

/* x_smclas values:  */

#define	XMC_PR	0		/* Read-only program code */
#define	XMC_RO	1		/* Read-only constant */
#define	XMC_DB	2		/* Read-only debug dictionary table */
#define	XMC_TC	3		/* Read-write general TOC entry */
#define	XMC_UA	4		/* Read-write unclassified */
#define	XMC_RW	5		/* Read-write data */
#define	XMC_GL	6		/* Read-only global linkage */
#define	XMC_XO	7		/* Read-only extended operation */
#define	XMC_SV	8		/* Read-only supervisor call */
#define	XMC_BS	9		/* Read-write BSS */
#define	XMC_DS	10		/* Read-write descriptor csect */
#define	XMC_UC	11		/* Read-write unnamed Fortran common */
#define	XMC_TI	12		/* Read-only traceback index csect */
#define	XMC_TB	13		/* Read-only traceback table csect */
/* 		14	??? */
#define	XMC_TC0	15		/* Read-write TOC anchor */
#define XMC_TD	16		/* Read-write data in TOC */

  struct
  {
    long x_scnlen;              /* Section length */
    long x_nreloc;              /* Number of relocation entries */
  } x_sect;
};

/********************** RELOCATION DIRECTIVES **********************/

struct internal_reloc
{
  bfd_vma r_vaddr;		/* Virtual address of reference */
  long r_symndx;		/* Index into symbol table	*/
  unsigned short r_type;	/* Relocation type		*/
  unsigned char r_size;		/* Used by RS/6000 and ECOFF	*/
  unsigned char r_extern;	/* Used by ECOFF		*/
  unsigned long r_offset;	/* Used by Alpha ECOFF, SPARC, others */
};

#define IMAGE_REL_BASED_ABSOLUTE		0
#define IMAGE_REL_BASED_HIGH			1
#define IMAGE_REL_BASED_LOW			2
#define IMAGE_REL_BASED_HIGHLOW			3
#define IMAGE_REL_BASED_HIGHADJ			4
#define IMAGE_REL_BASED_MIPS_JMPADDR		5
#define IMAGE_REL_BASED_ARM_MOV32		5
#define IMAGE_REL_BASED_RISCV_HIGH20		5
#define IMAGE_REL_BASED_THUMB_MOV32		7
#define IMAGE_REL_BASED_RISCV_LOW12I		7
#define IMAGE_REL_BASED_RISCV_LOW12S		8
#define IMAGE_REL_BASED_LOONGARCH32_MARK_LA	8
#define IMAGE_REL_BASED_LOONGARCH64_MARK_LA	8
#define IMAGE_REL_BASED_MIPS_JMPADDR16		9
#define IMAGE_REL_BASED_DIR64			10

#endif /* GNU_COFF_INTERNAL_H */
