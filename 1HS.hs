import Text.Regex.Posix

main :: IO ()
main = do
    let str = "101001f0110a1"
        pattern = "10+{1,3}1" :: String
        pattern2 = "10+{2,3}1" :: String
        matches = str =~ pattern :: [[String]]
        matches2 = str =~ pattern2 :: [[String]]
    mapM_ putStrLn (head matches)
    mapM_ putStrLn (head matches2)