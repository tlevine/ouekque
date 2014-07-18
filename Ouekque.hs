data Sort a = Sort a (Sort a) (a -> Maybe a)
            |  Any a          (a -> Maybe a)

any :: Any a
any = id . Just

boundedInteger :: Sort Integral
boundedInteger any
  | bottom <= x && x <= top = Just x
  | otherwise Nothing

wholeNumber = boundedInteger 0 1
naturalNumber = boundedInteger 1

main = do putStr "h"
