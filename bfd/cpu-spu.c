/* Copyright (C) 2006-2023 Free Software Foundation, Inc.

   This file is part of BFD, the Binary File Descriptor library.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License along
   with this program; if not, write to the Free Software Foundation, Inc.,
   51 Franklin Street - Fifth Floor, Boston, MA 02110-1301, USA.  */

#include "sysdep.h"
#include "bfd.h"
#include "libbfd.h"

static const bfd_arch_info_type *
spu_compatible (const bfd_arch_info_type *a, const bfd_arch_info_type *b)
{
  BFD_ASSERT (a->arch == bfd_arch_spu);
  switch (b->arch)
    {
    default:
      return NULL;
    case bfd_arch_spu:
      return bfd_default_compatible (a, b);
    }
  /*NOTREACHED*/
}

const bfd_arch_info_type bfd_spu_arch =
{
  32,			/* Bits in a word.  */
  32,			/* Bits in an address.  */
  8,			/* Bits in a byte.  */
  bfd_arch_spu,		/* Architecture number.  */
  bfd_mach_spu,		/* Machine number.  */
  "spu",		/* Architecture name.  */
  "spu:256K",		/* Printable name.  */
  3,			/* Section alignment power.  */
  true,			/* Default machine.  */
  spu_compatible,	/* The spu is only compatible with itself, see above.  */
  bfd_default_scan,
  bfd_arch_default_fill,
  NULL,			/* Next -- there are none!  */
  0 /* Maximum offset of a reloc from the start of an insn.  */
};
