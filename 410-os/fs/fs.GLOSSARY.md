# FS :: GLOSSARY

## Copy-on-write
A resource-management technique to efficiently implement operations that duplicate files (possibly modifying them later).

## tmpfs
A filesystem used to format a portion of the computer's main memory and use it as a very fast, although volitile, storage medium.

## Journaling
A technic whereby a fs keeps records of transactions that it needs to perform or that it successfully completed. This provides additional safety and enables easier reconstruction in case of errors (e.g. due to the improper shutdowns, with outstanding data that failed to be written to a disk).

## overlayfs
An overlay-filesystem tries to present a filesystem which is the result over overlaying one filesystem on top of the other.
