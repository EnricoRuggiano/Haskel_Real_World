-- https://book.realworldhaskell.org/read/getting-started.html

main = interact wordCount
    where wordCount input = show (length (lines input)) ++ "\n"

