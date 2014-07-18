data Parser a b = a -> b

-- type Dresser = 

data Sort = Any
          | SubSort Sort Validator

validate :: Sort a, b => a -> b ->  Bool
validate (Any ()) _ = True
validate (SubSort sort, validator) = 

any :: Any
any 


data Sort a b = Sort a b -> a -> b
              | 


any :: a => a -> Bool
any _ = True
