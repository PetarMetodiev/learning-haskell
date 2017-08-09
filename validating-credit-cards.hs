module Lab2 where

------------------------------------------------------------------------------------------------------------------------------
---- Lab 2: Validating Credit Card Numbers
--------------------------------------------------------------------------------------------------------------------------------

-- ===================================
-- Ex. 0
-- ===================================

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits x = toDigits (x `div` 10) ++ [x `mod` 10]

-- ===================================
-- Ex. 1
-- ===================================

toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev x = (x `mod` 10) : toDigitsRev (x `div` 10)

-- ===================================
-- Ex. 2
-- ===================================

doubleSecond :: [Integer] -> [Integer]
doubleSecond = undefined

-- ===================================
-- Ex. 3
-- ===================================

sumDigits :: [Integer] -> Integer
sumDigits = undefined


-- ===================================
-- Ex. 4
-- ===================================

isValid :: Integer -> Bool
isValid = undefined


-- ===================================
-- Ex. 5
-- ===================================

numValid :: [Integer] -> Integer
numValid xs = sum . map (\_ -> 1) $ filter isValid xs


creditcards :: [Integer]
creditcards =
        [4716347184862961,
        532899082537349,
        485429517622493,
        320635998241421,
        929778869082405,
        256283618614517,
        507514403575522,
        191806267524120,
        396452857080331,
        567798501168013,
        011798764103720,
        011970953092861,
        011486447384806,
        011337752144550,
        011442159205994,
        916188093226163,
        916699537435624,
        024607115319476,
        556945538735693,
        532818294886666,
        349308918130507,
        156469512589415,
        210896944802939,
        442782486960998,
        385907818416901,
        011920409800508,
        011978316213975,
        011221666280064,
        011285399268094,
        011111757787451,
        024007106747875,
        916148692391990,
        916918116659358,
        024007109091313,
        716815014741522,
        370975221279675,
        586822747605880,
        446122675080587,
        361718970369004,
        543878863367027,
        011996932510178,
        011475323876084,
        011358905586117,
        011672107152563,
        011660634944997,
        532917110736356,
        485548499291791,
        532098581822262,
        018626753711468,
        454290525773941,
        593710059099297,
        275213041261476,
        244162726358685,
        583726743957726,
        108718020905086,
        011887079002610,
        011119104045333,
        011296087222376,
        011183539053619,
        011067418196187,
        532462702719400,
        420029044272063,
        716494048062261,
        916853817750471,
        327554795485824,
        138477489321723,
        452898762612993,
        246310677063212,
        211257116158320,
        230793016257272,
        011265295282522,
        011034443437754,
        011582769987164,
        011821695998586,
        011420220198992,
        716625186530516,
        485290399115271,
        556449305907296,
        532036228186543,
        916950537496300,
        188481717181072,
        535021441100707,
        331217916806887,
        212754109160056,
        580039541241472,
        011450326200252,
        011141461689343,
        011886911067144,
        011835735645726,
        011063209139742]
