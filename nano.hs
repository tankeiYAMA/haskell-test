import Data.Semigroup

data Sector a = Sector a a a deriving Show

instance Functor Sector where
  fmap f (Sector a b c) =
    Sector (f a) (f b) (f c)

-- ★これを追加！
instance Semigroup a => Semigroup (Sector a) where
  Sector a1 b1 c1 <> Sector a2 b2 c2 =
    Sector (a1 <> a2) (b1 <> b2) (c1 <> c2)

instance Monoid a => Monoid (Sector a) where
  mempty = Sector mempty mempty mempty

s1 = Sector (Sum 3) (Sum 4) (Sum 5)
s2 = Sector (Sum 6) (Sum 8) (Sum 10)

lucky :: Int -> String
lucky 7 = "Lucky number 7!"
lucky x = "BOO!"

factrial :: Int -> Int
factrial 0=1
factrial n=n*factrial (n-1)


addVectors :: (Double,Double)->(Double,Double)->(Double,Double)
addVectors (x1,y1) (x2,y2)=(x1+x2,y1+y2)

xs =[(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]

firstLetter :: String->String
firstLetter "" ="Empty string!"
firstLetter all@(x:xp)="The first letter of " ++ all ++" is " ++[x]