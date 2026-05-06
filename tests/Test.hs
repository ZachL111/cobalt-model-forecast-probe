import PortfolioCore
import DomainReview

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 70 74 21 23 11
  expect (score signalcase_1 == 70)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 75 94 19 7 13
  expect (score signalcase_2 == 198)
  expect (classify signalcase_2 == "accept")
  let signalcase_3 = Signal 90 99 12 6 11
  expect (score signalcase_3 == 256)
  expect (classify signalcase_3 == "accept")
  let domainReview = ReviewItem 51 23 22 54
  expect (reviewScore domainReview == 113)
  expect (reviewLane domainReview == "watch")
