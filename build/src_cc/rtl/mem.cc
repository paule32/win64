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

void *operator new(size_t size)
{
	void *ptr = nullptr;
	#ifdef WINDOWS
	ptr = VirtualAlloc(
		NULL,						// system selects address
		size,						// the allocated bytes
		MEM_COMMIT | MEM_RESERVE,	// null zero allocation
		PAGE_READWRITE);			// protection type
	#endif
	return ptr;
}

void *operator new[](size_t size)
{
	void *ptr = nullptr;
	#ifdef WINDOWS
	ptr = VirtualAlloc(
		NULL,						// system selects address
		size,						// the allocated bytes
		MEM_COMMIT | MEM_RESERVE,	// null zero allocation
		PAGE_READWRITE);			// protection type
	#endif
	return ptr;
}

void operator delete(void *ptr)
{
	#ifdef WINDOWS
	if (!VirtualFree(ptr,0,MEM_RELEASE)) {
		MessageBox(NULL,"internal memory release error.","Error",MB_OK);
		ExitProcess( GetLastError() );
	}
	#endif
}

void operator delete[](void *ptr)
{
	#ifdef WINDOWS
	if (!VirtualFree(ptr,0,MEM_RELEASE)) {
		MessageBox(NULL,"internal memory release error.","Error",MB_OK);
		ExitProcess( GetLastError() );
	}
	#endif
}

/**
 * memset - Fill a region of memory with the given value
 * @s: Pointer to the start of the area.
 * @c: The byte to fill the area with
 * @count: The size of the area.
 *
 * Do not use memset() to access IO space, use memset_io() instead.
 */
void *memset(void *s, int c, size_t count)
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
void *memset(T *s, T v, size_t count)
{
	uint16_t *xs = s;
	while (count--) *xs++ = v;
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
void *memcpy(void *dest, void *src, size_t count)
{
	LazSTRING tmp = reinterpret_cast<LazSTRING>(dest);
	LazSTRING   s = reinterpret_cast<LazSTRING>(src );

	while (count--) *(tmp++) = *(s++);
	return dest;
}

/**
 * memmove - Copy one area of memory to another
 * @dest: Where to copy to
 * @src: Where to copy from
 * @count: The size of the area.
 *
 * Unlike memcpy(), memmove() copes with overlapping areas.
 */
void *memmove(void *dest, const void *src, size_t count)
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
