use [PosStoreDB]
go

SET ANSI_PADDING ON

go

CREATE NONCLUSTERED INDEX [_dta_index_PosTransaction_24_325576198__K14_K7_K5_K4_6_8_10_16_17_18_19] ON [Detail].[PosTransaction]
(
	[OrderCloseTime] ASC,
	[Type] ASC,
	[ReferenceNumber] ASC,
	[PeripheralNumber] ASC
)
INCLUDE ( 	[AuthNumber],
	[CardType],
	[AmountCollected],
	[SafNumber],
	[SafStatus],
	[SafApprovedAmount],
	[SafProcessDate]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE STATISTICS [_dta_stat_325576198_4_5_14] ON [Detail].[PosTransaction]([PeripheralNumber], [ReferenceNumber], [OrderCloseTime])
go

CREATE STATISTICS [_dta_stat_325576198_4_14_7] ON [Detail].[PosTransaction]([PeripheralNumber], [OrderCloseTime], [Type])
go

CREATE STATISTICS [_dta_stat_325576198_7_4_5] ON [Detail].[PosTransaction]([Type], [PeripheralNumber], [ReferenceNumber])
go

CREATE STATISTICS [_dta_stat_325576198_5_14_7_4] ON [Detail].[PosTransaction]([ReferenceNumber], [OrderCloseTime], [Type], [PeripheralNumber])
go

CREATE NONCLUSTERED INDEX [_dta_index_POSOrder_24_629577281__K4_K3_2_7_21_24_26] ON [Detail].[POSOrder]
(
	[OrderDate] ASC,
	[OrderNumber] ASC
)
INCLUDE ( 	[TerminalID],
	[OrderType],
	[CreditCardAmount],
	[GiftCardRedemAmount],
	[DebitCardAmount]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE STATISTICS [_dta_stat_629577281_3_4] ON [Detail].[POSOrder]([OrderNumber], [OrderDate])
go

SET ANSI_PADDING ON

go

CREATE NONCLUSTERED INDEX [_dta_index_CardSettlement_24_597577167__K4_5_6_7_9_11] ON [Detail].[CardSettlement]
(
	[ReferenceNumber] ASC
)
INCLUDE ( 	[TransactionAmount],
	[BusinessDate],
	[TransactionDate],
	[CardType],
	[AuthCode]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

