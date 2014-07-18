type Validator = a => a -> Bool

-- type Dresser = 

data Sort = Any
          | SubSort Sort Validator

validate :: Sort a, b => a -> b ->  Bool
validate (Any ()) _ = True
validate (SubSort sort, validator) = 

any :: Any
any 
