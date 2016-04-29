module NumberGuess where

correctNumber :: Int
correctNumber = 99


main = do
	putStrLn "Guessing a Number.\nEnter a number: "
	number <- getLine
	run (read number :: Int)


run :: Int -> IO ()
run input
	 | input == correctNumber = do
	 			putStrLn "You Win !"
	 | input < correctNumber = do 
	 			putStrLn "Guess a bigger number."
	 			putStrLn "Enter a number: "
	 			number <- getLine
	 			run (read number :: Int)
	 | otherwise = do 
	 			putStrLn "Guess a smaller number."
	 			putStrLn "Enter a number: "
	 			number <- getLine
	 			run (read number :: Int)
