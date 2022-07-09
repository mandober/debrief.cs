# POSIX standard for regular expressions

https://en.wikibooks.org/wiki/Regular_Expressions/POSIX_Basic_Regular_Expressions

https://en.wikibooks.org/wiki/Category:Book:Regular_Expressions

https://en.wikibooks.org/wiki/Regular_Expressions

By default, a POSIX compliant shell supports only a very limited, basic subset of regular expressions according to the **Basic Regular Expression POSIX standard**.

The POSIX Basic Regular Expression (BRE) syntax provided extensions to achieve consistency between utility programs such as `grep`, `sed`, `awk`. These extensions are not supported by some traditional implementations of Unix tools.

The traditional syntax for regular expressions on Unix, called the *Simple Regular Expressions syntax*, has followed common regex conventions, but they were often differently implemented across the Unix utilities.

The *POSIX Basic Regular Expressions (BRE) syntax* was developed by the IEEE as the standard that regulated the syntax of the most common, but very rudementary, subset of regular expressions.

together with an extended variant called *The POSIX Extended Regular Expression syntax*.

These standards were designed mostly to provide backward compatibility with the traditional Simple Regular Expressions syntax, providing a common standard which has since been adopted as the default syntax of many Unix regular expression tools.

## BRE syntax

In POSIX Basic Regular Expression syntax, most characters are treated as literals - they match only themselves (e.g., a matches "a"). The exceptions, listed below, are called metacharacters or metasequences.


---

The Basic Regular Expression (BRE) specifies exactly which regular expressions are supported.


Regular Expression (RE) support is restricted only to a very basic subset, called Basic Regular Expressions (BRE) POSIX standard. Shells usually have a switch that controls enabling or disabling the Extended RE (ERE) support.



Basic Regular Expression POSIX standard
