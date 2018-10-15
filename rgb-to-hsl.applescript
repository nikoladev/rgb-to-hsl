-- temp to force the clipboard to have good data
set the clipboard to "asd fasdasd '#abc'and  #fff some more"

-- Try to find first #123456ff, then #123456, then #fff
---- The third lookup only checks for 3 identical characters
-- `-o` ensures all matches are printed on a separate line
---- https://www.gnu.org/software/grep/manual/grep.html#index-_002d_002donly_002dmatching
-- `head -1` returns only the first result
-- There's double backslashes in command to work around its function as an escape character
set copied to do shell script "pbpaste | grep '#[a-fA-F0-9]\\{8\\}\\|#[a-fA-F0-9]\\{6\\}\\|#\\([a-fA-F0-9]\\)\\1\\{2\\}' -o | head -1"
set the clipboard to copied
display dialog copied
