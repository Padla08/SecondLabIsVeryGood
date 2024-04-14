import Text.Regex.Posix

main :: IO ()
main = do
    let str = "101tf11flb10001"
        pattern = "10+1" :: String -- Шаблон для поиска подстрок "1[0]1"

    let matches = str =~ pattern :: [[String]]
    mapM_ putStrLn (head matches)