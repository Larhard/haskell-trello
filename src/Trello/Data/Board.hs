module Trello.Data.Board where
import Trello.Data
import Trello.ApiData
import Trello.Data.List
import Trello.Data.Card
import Trello.Data.Member

getBoard :: BoardRef -> Either Error Board
getBoard ref = getBoardById ref >>= parseBoard

getListsForBoard :: Board -> ListFilter -> Either Error [List]
getListsForBoard (Board ref _ _ _) filter = getListsByBoardId ref filter >>= parseLists

getCardsForBoard :: Board -> CardFilter -> Either Error [Card]
getCardsForBoard (Board ref _ _ _) filter = getCardsByBoardId ref filter >>= parseCards

getMembersForBoard :: Board -> MemberFilter -> Either Error [Member]
getMembersForBoard (Board ref _ _ _) filter = getMembersByBoardId ref filter >>= parseMembers

parseBoard :: String -> Either Error Board
parseBoard json = Left $ Error "Stub"

getBoardById :: BoardRef -> Either Error String
getBoardById (BoardRef id) = Left $ Error "Stub"

getListsByBoardId :: BoardRef -> ListFilter -> Either Error String
getListsByBoardId (BoardRef id) filter = Left $ Error "Stub"

getCardsByBoardId :: BoardRef -> CardFilter -> Either Error String
getCardsByBoardId (BoardRef id) filter = Left $ Error "Stub"

getMembersByBoardId :: BoardRef -> MemberFilter -> Either Error String
getMembersByBoardId (BoardRef id) filter = Left $ Error "Stub"