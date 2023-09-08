# Set-TitleCase
A simple PowerShell function to convert a string to title case. Useful for names and addresses.

The function will capitalize the first letter in each word, including each word in hyphenated words. It will make lowercase any ordinals (1st, 2nd, etc.), minor words (the, for, a, to, of, and, as, etc.), and all other characters.

For example: `Set-TitleCase "NAME: baba-gaNOUsh. AdDrEsS: 41ST terrace BY tHe 4seasonS."`

will output: `Name: Baba-Ganoush. Address: 41st Terrace by the 4Seasons.`

Limitations:
- In proper Title Case, a minor word should be capitalized if it's the first word of a title, heading, subtitle, or when it comes after a colon, em dash, or end punctuation in a heading. This function does not detect these cases.
- It can't detect abbreviations or roman numerals. `CIA` will become `Cia` and `king edward III` will become `King Edward Iii`

You can find the proper way to handle other Title Case corner cases at https://apastyle.apa.org/style-grammar-guidelines/capitalization/title-case
