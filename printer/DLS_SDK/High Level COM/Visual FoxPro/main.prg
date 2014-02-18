*!*	*********************************************************************************
*!*	High-Level OLE Demo program for Microsoft Visual FoxPro 6.0 SP3
*!*	April 25, 1999
*!*	Written by: Natalya Chernokozova
*!* Last Update, April, 2002, DLB

*!*	Copyright 1999, 2002, DYMO Corporation, Stamford CT

*!*	This sample database and the code contained herein were designed to demonstrate
*!*	a real world example of communicating with Dymo Label Software using High-Level
*!*	OLE interface from MS Visual FoxPro.

*!*	The sample is a simple database that could be used to track seminar attendees
*!*	and print Address or Shipping labels or Name Badges for each record contained
*!*	in the database.


*!*	Permission to use, copy, modify, and distribute this software for any purpose
*!*	and without fee is hereby granted.
*!*	**********************************************************************************


* Change the default directory if run from the Project manager
* and fmmain.scx cannot be found

cCurrentProcedure = SYS(16,1)
WAIT WIND cCurrentProcedure
nPathStart = AT(":",cCurrentProcedure)- 1
nLenOfPath = RAT("\", cCurrentProcedure) - (nPathStart)
WAIT WIND SUBSTR(cCurrentProcedure, nPathStart, nLenofPath)
SET DEFAULT TO (SUBSTR(cCurrentProcedure, nPathStart, nLenofPath))

* Run the main form
Do Form fmMain

** -- Added by Edhy Rijo
READ EVENTS