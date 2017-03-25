# About

Here is a collection of utility scripts for fixing something.

## stringArrayReplace.awk

Usage example: `stringArrayReplace.awk ita2eng.csv src.txt > dst.txt`

The code above will replace strings in `src.txt` with string pairs from
`ita2eng.csv`, words in first column will be substituted by second
column. The new file will be saved as `dst.txt`.

* The string pairs MUST be prepared in the first input file.
* Only `.csv` file is supported for string pairs, with the first row
  ignored as table header.
* NO `,` should exist in string pairs, For the reason that `,` is the
  default separator in `.csv` table.
