# Regular Expressions Standards

Today, there are 2 standards that specify the syntax and capabilities of regular expressions: POSIX and PCRE. The PCRE is the standard that most of modern software adheres to, although implementations of both POSIX and PCRE are also not rare.

Regex Standards
1. POSIX standard has two levels of compliance:
  - Basic Regular Expressions, BRE
  - Extended Regular Expressions, ERE
2. Perl-Compatible Regular Expressions, PCRE

POSIX, with its 2 variants, and PCRE have similar syntax and may be considered as 3 tiers where each successive tier adds more features and capability, which inevitably increases complexity of the regex-handling software engine, which in turn increases computational demand.

BRE (Basic Regular Syntax) provides only the basic regex functionality, that may be sufficient for undemanding tasks. However, it has a major inconvenience in that it considers parenthesis and braces as literal characters. This means it requires that they are escaped, as `\(\)` and `\{\}`, when used as metacharacters (which is basically all the time, making BRE syntax very cumbersome to work with).

ERE works on top of BRE, bringing new features (adds metacharacters `?`, `+`, `|`) and fixing the situation with parenthesis and braces by flipping ther role.

Namely, every character in a regex pattern belongs to one of the two sets:
* *literal characters* that stand for themselves (e.g. `a` matches `a`)
* *metacharacters* that have special meaning

Each standard specifies what set each character belongs to by default, and it provides a way for characters to switch teams, which is done by *escaping*.

Applications and programming languages (e.g. grep, bash) that adhere to POSIX specification usually have only the BRE level enabled by default, providing options that enable ERE (e.g. grep has a switch `grep -E`, bash has `extglob` shell option).

*Perl regexes have become a de facto standard*, having a rich and powerful set of atomic expressions. As in POSIX EREs, ( ) and { } are treated as metacharacters unless escaped; other metacharacters are known to be either literal or symbolic strictly based on context.

Additional functionality includes:
- lazy matching
- backreferences
- named capture groups
- recursive patterns
- lookahead
- lookbehind
