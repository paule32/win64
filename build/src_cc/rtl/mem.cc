// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include <stdio.h>
# include <string.h>

# include "TTypes.h"
# include <windows.h>

void * __gxx_personality_v0 = 0;	// dummy
void * _Unwind_Resume       = 0;	// flummy

void *operator new(size_t size)
{
	void *ptr = nullptr;
	ptr = VirtualAlloc(
		NULL,						// system selects address
		size,						// the allocated bytes
		MEM_COMMIT | MEM_RESERVE,	// null zero allocation
		PAGE_READWRITE);			// protection type
	return ptr;
}

void *operator new[](size_t size)
{
	void *ptr = nullptr;
	ptr = VirtualAlloc(
		NULL,						// system selects address
		size,						// the allocated bytes
		MEM_COMMIT | MEM_RESERVE,	// null zero allocation
		PAGE_READWRITE);			// protection type
	return ptr;
}

void operator delete(void *ptr, size_t size)   { delete(ptr); }
void operator delete[](void *ptr, size_t size) { delete[]ptr; }
void operator delete(void *ptr)
{
	if (!VirtualFree(ptr,0,MEM_RELEASE)) {
		MessageBox(NULL,"internal memory release error.","Error",MB_OK);
		ExitProcess( GetLastError() );
	}
}

void operator delete[](void *ptr)
{
	if (!VirtualFree(ptr,0,MEM_RELEASE)) {
		MessageBox(NULL,"internal memory release error.","Error",MB_OK);
		ExitProcess( GetLastError() );
	}
}

/**
 * memset - Fill a region of memory with the given value
 * @s: Pointer to the start of the area.
 * @c: The byte to fill the area with
 * @count: The size of the area.
 *
 * Do not use memset() to access IO space, use memset_io() instead.
 */
void *LazMemSet(void *s, int c, size_t count)
{
	LazSTRING xs = reinterpret_cast<LazSTRING>(s);

	while (count--) *xs++ = c;
	return s;
}

/**
 * memset16() - Fill a memory area with a uint16_t
 * memset32() - Fill a memory area with a uint32_t
 * memset64() - Fill a memory area with a uint64_t
 *
 * @s: Pointer to the start of the area.
 * @v: The value to fill the area with
 * @count: The number of values to store
 *
 * Differs from memset() in that it fills with a uint16_t instead
 * of a byte.  Remember that @count is the number of uint16_ts to
 * store, not the number of bytes.
 */
template <typename T>
void *LazMemSet(T *s, T v, size_t count)
{
	T *xs = s;
	while (count--) *(xs++) = v;
	return s;
}

/**
 * memcpy - Copy one area of memory to another
 * @dest: Where to copy to
 * @src: Where to copy from
 * @count: The size of the area.
 *
 * You should not use this function to access IO space, use memcpy_toio()
 * or memcpy_fromio() instead.
 */
void *LazMemCpy(void *dest, const void *src, size_t n)
{
	// Typecast src and dest addresses to (char *) 
	char *csrc = (char *)src; 
	char *cdest = (char *)dest; 
  
	// Copy contents of src[] to dest[] 
	for (int i=0; i<n; i++) 
	cdest[i] = csrc[i];
	
	return cdest;
}

/**
 * memmove - Copy one area of memory to another
 * @dest: Where to copy to
 * @src: Where to copy from
 * @count: The size of the area.
 *
 * Unlike memcpy(), memmove() copes with overlapping areas.
 */
void *LazMemMove(void *dest, const void *src, size_t count)
{
	char *tmp;
	const char *s;

	if (dest <= src) {
		tmp = reinterpret_cast<char*>(dest);
		s = reinterpret_cast<const char*>(src);
		while (count--)
			*(tmp++) = *(s++);
	} else {
		tmp = reinterpret_cast<char*>(dest);
		tmp += count;
		s = reinterpret_cast<const char*>(src);
		s += count;
		while (count--)
			*--tmp = *--s;
	}
	return dest;
}
