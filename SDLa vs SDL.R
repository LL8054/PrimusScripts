Sweep Down Linear a
SDLa <- "AvgDayVolume(ALL_VENUES, 90, NO) > 250000 AND AvgDailyRange(ALL_VENUES, 20, NO) < 5 
AND ClosePrice(PRIMARY, P1, NO) < 200 AND Last(ALL_VENUES, CURRENT, NO) < 200 AND 
MinuteHigh_I(ALL_VENUES, 1, CURRENT, NO, False) - MinuteLow_I(ALL_VENUES, 1, CURRENT, NO, False) > 
AvgDailyRange(ALL_VENUES, 2, NO) * .5 AND Last(ALL_VENUES, CURRENT, NO) > 3 AND 
MinuteVolume(ALL_VENUES, 1, CURRENT, NO) > AvgDayVolume(ALL_VENUES, 2, NO) /33.3 AND 
TimeFromStockOpenSeconds > 60 AND TickTimeSeconds < 55800"

aa <- "MinuteLow_I(ALL_VENUES, 2, CURRENT, NO, False) - (AvgDailyRange(ALL_VENUES, 1, NO)*.2) - .10"
ba <- "MinuteLow_I(ALL_VENUES, 2, CURRENT, NO, False) - (AvgDailyRange(ALL_VENUES, 1, NO)*.5) - .10"
ca <- "MinuteLow_I(ALL_VENUES, 2, CURRENT, NO, False) - (AvgDailyRange(ALL_VENUES, 1, NO)*.8) - .10"

exita <- "MinuteLow(ALL_VENUES, 5, CURRENT, NO, False) + ((MinuteHigh(ALL_VENUES, 5, CURRENT, NO, False) - MinuteLow(ALL_VENUES, 5, CURRENT, NO, False))* .75)"

hardstopa <- "IF( TickTimeSeconds - PositionEntryTime > 180, ExecutionPrice - ( MinuteHigh(ALL_VENUES, 5, CURRENT, NO, False) - MinuteLow(ALL_VENUES, 5, CURRENT, NO, False)), 0)"

trailtriggera <- "TickTimeSeconds - PositionEntryTime > 300 AND PositionDelta(ALL_VENUES, NO) <= .08 OR Bid(INSIDE, CURRENT, NO) < MinuteHigh(ALL_VENUES, 5, CURRENT, NO, False) / 1.045"
trailhowa <- "Bid(INSIDE, CURRENT, NO) * 1.01"





Sweep Down Linear
SDL <- "AvgDayVolume(ALL_VENUES, 90, NO) > 250000 AND AvgDailyRange(ALL_VENUES, 20, NO) < 5 
AND ClosePrice(PRIMARY, P1, NO) < 200 AND Last(ALL_VENUES, CURRENT, NO) < 200 AND 
MinuteHigh_I(ALL_VENUES, 1, CURRENT, NO, False) - MinuteLow_I(ALL_VENUES, 1, CURRENT, NO, False) > 
AvgDailyRange(ALL_VENUES, 2, NO) * .5 AND Last(ALL_VENUES, CURRENT, NO) > 3 AND 
MinuteVolume(ALL_VENUES, 1, CURRENT, NO) > AvgDayVolume(ALL_VENUES, 2, NO) /33.3 AND 
TimeFromStockOpenSeconds > 60 AND TickTimeSeconds < 55800"

a <- "MinuteLow_I(ALL_VENUES, 2, CURRENT, NO, False) - (AvgDailyRange(ALL_VENUES, 1, NO)*.2) - .10"
b <- "MinuteLow_I(ALL_VENUES, 2, CURRENT, NO, False) - (AvgDailyRange(ALL_VENUES, 1, NO)*.5) - .10"
c <- "MinuteLow_I(ALL_VENUES, 2, CURRENT, NO, False) - (AvgDailyRange(ALL_VENUES, 1, NO)*.8) - .10"

exit <- "MinuteLow(ALL_VENUES, 5, CURRENT, NO, False) + ((MinuteHigh(ALL_VENUES, 5, CURRENT, NO, False) - MinuteLow(ALL_VENUES, 5, CURRENT, NO, False))* .75)"

hardstop <- "IF( IsEntryComplete = TRUE, AverageExecutionPrice - ( MinuteHigh(ALL_VENUES, 5, CURRENT, NO, False) - AverageExecutionPrice), 0)"

trailtrigger <- "TickTimeSeconds - PositionEntryTime > 300 AND PositionDelta(ALL_VENUES, NO) <= .08 OR TickTimeSeconds > 57540"
trailhow <- "Bid(INSIDE, CURRENT, NO) / 1.005"


identical(SDLa, SDL)
identical(aa, a)
identical(ba, b)
identical(ca, c)
identical(exita, exit)
identical(hardstopa, hardstop)
identical(trailtriggera, trailtrigger)
identical(trailhowa, trailhow)





