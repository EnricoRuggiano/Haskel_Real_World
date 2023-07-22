data BookInfo = Book Int String [String]
                deriving (Show)

bookId (Book id _ _) = id
bookTitle (Book _ title _) = title
bookAuthors (Book _ _ authors) = authors



myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]

type CustomerId = Int
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerId ReviewBody

type BookRecord = (BookInfo, BookReview)

-- customer
data Customer = Customer {
    customerId  :: CustomerId
    , customerName :: String
    , customerAddress :: Address
}   deriving (Show)

-- billing
type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardHolder CardNumber Address
                  | CashOnDelivery
                  | Invoice CustomerId
                  deriving (Show)

