* the directory need to be changed to where all the sps file is saved.
* read the reordered data.
GET DATA /TYPE=XLSX
  /FILE='\path_to_your_directory\dat_reOrderNozeros_replicate.xlsx'
  /SHEET=name 'Sheet1'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.
EXECUTE.
DATASET NAME dat_reorder_nonzeros WINDOW=FRONT.

DATASET ACTIVATE dat_reorder_nonzeros.

*Get the mean score of each repetition from the marginal means tables.
ONEWAY Score BY reOrder
  /STATISTICS DESCRIPTIVES 
  /MISSING ANALYSIS.

* Testing the statistical difference between neighboring plays.
* Same as in the MS the first non-zero score is treated as practice so the first play is reordered as 2, and the second 3, the third 4, ...
T-TEST GROUPS=reOrder(2 3)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(3 4)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(4 5)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(5 6)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(6 7)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(7 8)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(8 9)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(9 10)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(10 11)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(11 12)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(12 13)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(13 14)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(14 15)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(15 16)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(16 17)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(17 18)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(18 19)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(19 20)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(20 21)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(21 22)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(22 23)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(23 24)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(24 25)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(25 26)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(26 27)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(27 28)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(28 29)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(29 30)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(30 31)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(31 32)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(32 33)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(33 34)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(34 35)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(35 36)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(36 37)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(37 38)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(38 39)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(39 40)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(40 41)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(41 42)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(42 43)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(43 44)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(44 45)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(45 46)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(46 47)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(47 48)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(48 49)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(49 50)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).

T-TEST GROUPS=reOrder(50 51)
  /MISSING=ANALYSIS
  /VARIABLES=Score
  /CRITERIA=CI(.95).
