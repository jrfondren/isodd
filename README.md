isodd(3d) - 3d

# NAME

**isodd** - Parity tests with low cognitive load

# SYNOPSIS

**import isodd : isOdd, isEven;**

**bool isOdd(T)(T **&zwnj;*n*&zwnj;**);**

**bool isEven(T)(T **&zwnj;*n*&zwnj;**);**

# DESCRIPTION

**isOdd**() returns true when given an integral type or a type
with a compatible overloading of **opBinary!("&")**.
**isEven**() returns false in all cases where **isOdd**() would
return true.

# RETURN VALUE

These functions return true or false.

# CONFORMING TO

The mathematical property of parity.

# BUGS

These functions cannot be applied to floating-point numbers.  
These functions have not been tested against any
indefinite-precision number libraries.  
These functions classify 1 as odd, violating the ancient Greek understanding
that 1 is neither even nor odd.

# EXAMPLE

	#! /usr/bin/env rdmd
	import std.stdio, std.conv, isodd;
	import core.stdc.stdlib : exit;
	
	void main(string[] args) {
	    void usage() { stderr.writefln("usage: %s <number>", args[0]); exit(1); }
	
	    if (args.length != 2) usage();
	    try {
	        writeln(isOdd(to!int(args[1])));
	    } catch (std.conv.ConvException e) {
	        usage();
	    }
	}

# SEE ALSO

isfourtytwo(2d),
iszero(2d),
is\_number\_of\_beast(2d),
divisibleby(2d),
only\_divisible\_by\_itself\_and\_one(2d),
readable\_math(2d),
may\_resemble\_phone\_number(2d),
may\_resemble\_SSN(2d),
may\_resemble\_CCN(2d),
may\_resemble\_luggage\_combination(2d),
politically\_sensitive\_numbers(2d)

# RATIONALE

https://forum.dlang.org/thread/sudscchdjotuzmhqcntq@forum.dlang.org

# FUTURE DIRECTIONS

None.

# COLOPHON

This page is part of the 0.1.0 release of the isodd DUB package.
This package can be found at https://code.dlang.org/packages/isodd/.

D - April 13, 2019
