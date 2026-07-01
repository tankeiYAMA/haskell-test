data Sector = Sector Int Int Int deriving Show

instance Semigroup Sector where
  Sector a1 b1 c1 <> Sector a2 b2 c2 =
    Sector (a1+a2) (b1+b2) (c1+c2)

instance Monoid Sector where
  mempty = Sector 0 0 0

s1 = Sector 3 4 5
s2 = Sector 6 8 10