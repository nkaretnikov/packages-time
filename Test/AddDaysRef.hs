module Test.AddDaysRef where

addDaysRef =
 unlines
  [ "2005-02-28 + -10 * day = 2005-02-18"
  , "2004-02-29 + -10 * day = 2004-02-19"
  , "2004-01-31 + -10 * day = 2004-01-21"
  , "2004-12-31 + -10 * day = 2004-12-21"
  , "2005-07-01 + -10 * day = 2005-06-21"
  , "2005-04-21 + -10 * day = 2005-04-11"
  , "2005-06-30 + -10 * day = 2005-06-20"
  , "2005-02-28 + -4 * day = 2005-02-24"
  , "2004-02-29 + -4 * day = 2004-02-25"
  , "2004-01-31 + -4 * day = 2004-01-27"
  , "2004-12-31 + -4 * day = 2004-12-27"
  , "2005-07-01 + -4 * day = 2005-06-27"
  , "2005-04-21 + -4 * day = 2005-04-17"
  , "2005-06-30 + -4 * day = 2005-06-26"
  , "2005-02-28 + -1 * day = 2005-02-27"
  , "2004-02-29 + -1 * day = 2004-02-28"
  , "2004-01-31 + -1 * day = 2004-01-30"
  , "2004-12-31 + -1 * day = 2004-12-30"
  , "2005-07-01 + -1 * day = 2005-06-30"
  , "2005-04-21 + -1 * day = 2005-04-20"
  , "2005-06-30 + -1 * day = 2005-06-29"
  , "2005-02-28 + 0 * day = 2005-02-28"
  , "2004-02-29 + 0 * day = 2004-02-29"
  , "2004-01-31 + 0 * day = 2004-01-31"
  , "2004-12-31 + 0 * day = 2004-12-31"
  , "2005-07-01 + 0 * day = 2005-07-01"
  , "2005-04-21 + 0 * day = 2005-04-21"
  , "2005-06-30 + 0 * day = 2005-06-30"
  , "2005-02-28 + 1 * day = 2005-03-01"
  , "2004-02-29 + 1 * day = 2004-03-01"
  , "2004-01-31 + 1 * day = 2004-02-01"
  , "2004-12-31 + 1 * day = 2005-01-01"
  , "2005-07-01 + 1 * day = 2005-07-02"
  , "2005-04-21 + 1 * day = 2005-04-22"
  , "2005-06-30 + 1 * day = 2005-07-01"
  , "2005-02-28 + 7 * day = 2005-03-07"
  , "2004-02-29 + 7 * day = 2004-03-07"
  , "2004-01-31 + 7 * day = 2004-02-07"
  , "2004-12-31 + 7 * day = 2005-01-07"
  , "2005-07-01 + 7 * day = 2005-07-08"
  , "2005-04-21 + 7 * day = 2005-04-28"
  , "2005-06-30 + 7 * day = 2005-07-07"
  , "2005-02-28 + 83 * day = 2005-05-22"
  , "2004-02-29 + 83 * day = 2004-05-22"
  , "2004-01-31 + 83 * day = 2004-04-23"
  , "2004-12-31 + 83 * day = 2005-03-24"
  , "2005-07-01 + 83 * day = 2005-09-22"
  , "2005-04-21 + 83 * day = 2005-07-13"
  , "2005-06-30 + 83 * day = 2005-09-21"
  , "2005-02-28 + -10 * month (clip) = 2004-04-28"
  , "2004-02-29 + -10 * month (clip) = 2003-04-29"
  , "2004-01-31 + -10 * month (clip) = 2003-03-31"
  , "2004-12-31 + -10 * month (clip) = 2004-02-29"
  , "2005-07-01 + -10 * month (clip) = 2004-09-01"
  , "2005-04-21 + -10 * month (clip) = 2004-06-21"
  , "2005-06-30 + -10 * month (clip) = 2004-08-30"
  , "2005-02-28 + -4 * month (clip) = 2004-10-28"
  , "2004-02-29 + -4 * month (clip) = 2003-10-29"
  , "2004-01-31 + -4 * month (clip) = 2003-09-30"
  , "2004-12-31 + -4 * month (clip) = 2004-08-31"
  , "2005-07-01 + -4 * month (clip) = 2005-03-01"
  , "2005-04-21 + -4 * month (clip) = 2004-12-21"
  , "2005-06-30 + -4 * month (clip) = 2005-02-28"
  , "2005-02-28 + -1 * month (clip) = 2005-01-28"
  , "2004-02-29 + -1 * month (clip) = 2004-01-29"
  , "2004-01-31 + -1 * month (clip) = 2003-12-31"
  , "2004-12-31 + -1 * month (clip) = 2004-11-30"
  , "2005-07-01 + -1 * month (clip) = 2005-06-01"
  , "2005-04-21 + -1 * month (clip) = 2005-03-21"
  , "2005-06-30 + -1 * month (clip) = 2005-05-30"
  , "2005-02-28 + 0 * month (clip) = 2005-02-28"
  , "2004-02-29 + 0 * month (clip) = 2004-02-29"
  , "2004-01-31 + 0 * month (clip) = 2004-01-31"
  , "2004-12-31 + 0 * month (clip) = 2004-12-31"
  , "2005-07-01 + 0 * month (clip) = 2005-07-01"
  , "2005-04-21 + 0 * month (clip) = 2005-04-21"
  , "2005-06-30 + 0 * month (clip) = 2005-06-30"
  , "2005-02-28 + 1 * month (clip) = 2005-03-28"
  , "2004-02-29 + 1 * month (clip) = 2004-03-29"
  , "2004-01-31 + 1 * month (clip) = 2004-02-29"
  , "2004-12-31 + 1 * month (clip) = 2005-01-31"
  , "2005-07-01 + 1 * month (clip) = 2005-08-01"
  , "2005-04-21 + 1 * month (clip) = 2005-05-21"
  , "2005-06-30 + 1 * month (clip) = 2005-07-30"
  , "2005-02-28 + 7 * month (clip) = 2005-09-28"
  , "2004-02-29 + 7 * month (clip) = 2004-09-29"
  , "2004-01-31 + 7 * month (clip) = 2004-08-31"
  , "2004-12-31 + 7 * month (clip) = 2005-07-31"
  , "2005-07-01 + 7 * month (clip) = 2006-02-01"
  , "2005-04-21 + 7 * month (clip) = 2005-11-21"
  , "2005-06-30 + 7 * month (clip) = 2006-01-30"
  , "2005-02-28 + 83 * month (clip) = 2012-01-28"
  , "2004-02-29 + 83 * month (clip) = 2011-01-29"
  , "2004-01-31 + 83 * month (clip) = 2010-12-31"
  , "2004-12-31 + 83 * month (clip) = 2011-11-30"
  , "2005-07-01 + 83 * month (clip) = 2012-06-01"
  , "2005-04-21 + 83 * month (clip) = 2012-03-21"
  , "2005-06-30 + 83 * month (clip) = 2012-05-30"
  , "2005-02-28 + -10 * month (roll over) = 2004-04-28"
  , "2004-02-29 + -10 * month (roll over) = 2003-04-29"
  , "2004-01-31 + -10 * month (roll over) = 2003-03-31"
  , "2004-12-31 + -10 * month (roll over) = 2004-03-02"
  , "2005-07-01 + -10 * month (roll over) = 2004-09-01"
  , "2005-04-21 + -10 * month (roll over) = 2004-06-21"
  , "2005-06-30 + -10 * month (roll over) = 2004-08-30"
  , "2005-02-28 + -4 * month (roll over) = 2004-10-28"
  , "2004-02-29 + -4 * month (roll over) = 2003-10-29"
  , "2004-01-31 + -4 * month (roll over) = 2003-10-01"
  , "2004-12-31 + -4 * month (roll over) = 2004-08-31"
  , "2005-07-01 + -4 * month (roll over) = 2005-03-01"
  , "2005-04-21 + -4 * month (roll over) = 2004-12-21"
  , "2005-06-30 + -4 * month (roll over) = 2005-03-02"
  , "2005-02-28 + -1 * month (roll over) = 2005-01-28"
  , "2004-02-29 + -1 * month (roll over) = 2004-01-29"
  , "2004-01-31 + -1 * month (roll over) = 2003-12-31"
  , "2004-12-31 + -1 * month (roll over) = 2004-12-01"
  , "2005-07-01 + -1 * month (roll over) = 2005-06-01"
  , "2005-04-21 + -1 * month (roll over) = 2005-03-21"
  , "2005-06-30 + -1 * month (roll over) = 2005-05-30"
  , "2005-02-28 + 0 * month (roll over) = 2005-02-28"
  , "2004-02-29 + 0 * month (roll over) = 2004-02-29"
  , "2004-01-31 + 0 * month (roll over) = 2004-01-31"
  , "2004-12-31 + 0 * month (roll over) = 2004-12-31"
  , "2005-07-01 + 0 * month (roll over) = 2005-07-01"
  , "2005-04-21 + 0 * month (roll over) = 2005-04-21"
  , "2005-06-30 + 0 * month (roll over) = 2005-06-30"
  , "2005-02-28 + 1 * month (roll over) = 2005-03-28"
  , "2004-02-29 + 1 * month (roll over) = 2004-03-29"
  , "2004-01-31 + 1 * month (roll over) = 2004-03-02"
  , "2004-12-31 + 1 * month (roll over) = 2005-01-31"
  , "2005-07-01 + 1 * month (roll over) = 2005-08-01"
  , "2005-04-21 + 1 * month (roll over) = 2005-05-21"
  , "2005-06-30 + 1 * month (roll over) = 2005-07-30"
  , "2005-02-28 + 7 * month (roll over) = 2005-09-28"
  , "2004-02-29 + 7 * month (roll over) = 2004-09-29"
  , "2004-01-31 + 7 * month (roll over) = 2004-08-31"
  , "2004-12-31 + 7 * month (roll over) = 2005-07-31"
  , "2005-07-01 + 7 * month (roll over) = 2006-02-01"
  , "2005-04-21 + 7 * month (roll over) = 2005-11-21"
  , "2005-06-30 + 7 * month (roll over) = 2006-01-30"
  , "2005-02-28 + 83 * month (roll over) = 2012-01-28"
  , "2004-02-29 + 83 * month (roll over) = 2011-01-29"
  , "2004-01-31 + 83 * month (roll over) = 2010-12-31"
  , "2004-12-31 + 83 * month (roll over) = 2011-12-01"
  , "2005-07-01 + 83 * month (roll over) = 2012-06-01"
  , "2005-04-21 + 83 * month (roll over) = 2012-03-21"
  , "2005-06-30 + 83 * month (roll over) = 2012-05-30"
  , "2005-02-28 + -10 * year (clip) = 1995-02-28"
  , "2004-02-29 + -10 * year (clip) = 1994-02-28"
  , "2004-01-31 + -10 * year (clip) = 1994-01-31"
  , "2004-12-31 + -10 * year (clip) = 1994-12-31"
  , "2005-07-01 + -10 * year (clip) = 1995-07-01"
  , "2005-04-21 + -10 * year (clip) = 1995-04-21"
  , "2005-06-30 + -10 * year (clip) = 1995-06-30"
  , "2005-02-28 + -4 * year (clip) = 2001-02-28"
  , "2004-02-29 + -4 * year (clip) = 2000-02-29"
  , "2004-01-31 + -4 * year (clip) = 2000-01-31"
  , "2004-12-31 + -4 * year (clip) = 2000-12-31"
  , "2005-07-01 + -4 * year (clip) = 2001-07-01"
  , "2005-04-21 + -4 * year (clip) = 2001-04-21"
  , "2005-06-30 + -4 * year (clip) = 2001-06-30"
  , "2005-02-28 + -1 * year (clip) = 2004-02-28"
  , "2004-02-29 + -1 * year (clip) = 2003-02-28"
  , "2004-01-31 + -1 * year (clip) = 2003-01-31"
  , "2004-12-31 + -1 * year (clip) = 2003-12-31"
  , "2005-07-01 + -1 * year (clip) = 2004-07-01"
  , "2005-04-21 + -1 * year (clip) = 2004-04-21"
  , "2005-06-30 + -1 * year (clip) = 2004-06-30"
  , "2005-02-28 + 0 * year (clip) = 2005-02-28"
  , "2004-02-29 + 0 * year (clip) = 2004-02-29"
  , "2004-01-31 + 0 * year (clip) = 2004-01-31"
  , "2004-12-31 + 0 * year (clip) = 2004-12-31"
  , "2005-07-01 + 0 * year (clip) = 2005-07-01"
  , "2005-04-21 + 0 * year (clip) = 2005-04-21"
  , "2005-06-30 + 0 * year (clip) = 2005-06-30"
  , "2005-02-28 + 1 * year (clip) = 2006-02-28"
  , "2004-02-29 + 1 * year (clip) = 2005-02-28"
  , "2004-01-31 + 1 * year (clip) = 2005-01-31"
  , "2004-12-31 + 1 * year (clip) = 2005-12-31"
  , "2005-07-01 + 1 * year (clip) = 2006-07-01"
  , "2005-04-21 + 1 * year (clip) = 2006-04-21"
  , "2005-06-30 + 1 * year (clip) = 2006-06-30"
  , "2005-02-28 + 7 * year (clip) = 2012-02-28"
  , "2004-02-29 + 7 * year (clip) = 2011-02-28"
  , "2004-01-31 + 7 * year (clip) = 2011-01-31"
  , "2004-12-31 + 7 * year (clip) = 2011-12-31"
  , "2005-07-01 + 7 * year (clip) = 2012-07-01"
  , "2005-04-21 + 7 * year (clip) = 2012-04-21"
  , "2005-06-30 + 7 * year (clip) = 2012-06-30"
  , "2005-02-28 + 83 * year (clip) = 2088-02-28"
  , "2004-02-29 + 83 * year (clip) = 2087-02-28"
  , "2004-01-31 + 83 * year (clip) = 2087-01-31"
  , "2004-12-31 + 83 * year (clip) = 2087-12-31"
  , "2005-07-01 + 83 * year (clip) = 2088-07-01"
  , "2005-04-21 + 83 * year (clip) = 2088-04-21"
  , "2005-06-30 + 83 * year (clip) = 2088-06-30"
  , "2005-02-28 + -10 * year (roll over) = 1995-02-28"
  , "2004-02-29 + -10 * year (roll over) = 1994-03-01"
  , "2004-01-31 + -10 * year (roll over) = 1994-01-31"
  , "2004-12-31 + -10 * year (roll over) = 1994-12-31"
  , "2005-07-01 + -10 * year (roll over) = 1995-07-01"
  , "2005-04-21 + -10 * year (roll over) = 1995-04-21"
  , "2005-06-30 + -10 * year (roll over) = 1995-06-30"
  , "2005-02-28 + -4 * year (roll over) = 2001-02-28"
  , "2004-02-29 + -4 * year (roll over) = 2000-02-29"
  , "2004-01-31 + -4 * year (roll over) = 2000-01-31"
  , "2004-12-31 + -4 * year (roll over) = 2000-12-31"
  , "2005-07-01 + -4 * year (roll over) = 2001-07-01"
  , "2005-04-21 + -4 * year (roll over) = 2001-04-21"
  , "2005-06-30 + -4 * year (roll over) = 2001-06-30"
  , "2005-02-28 + -1 * year (roll over) = 2004-02-28"
  , "2004-02-29 + -1 * year (roll over) = 2003-03-01"
  , "2004-01-31 + -1 * year (roll over) = 2003-01-31"
  , "2004-12-31 + -1 * year (roll over) = 2003-12-31"
  , "2005-07-01 + -1 * year (roll over) = 2004-07-01"
  , "2005-04-21 + -1 * year (roll over) = 2004-04-21"
  , "2005-06-30 + -1 * year (roll over) = 2004-06-30"
  , "2005-02-28 + 0 * year (roll over) = 2005-02-28"
  , "2004-02-29 + 0 * year (roll over) = 2004-02-29"
  , "2004-01-31 + 0 * year (roll over) = 2004-01-31"
  , "2004-12-31 + 0 * year (roll over) = 2004-12-31"
  , "2005-07-01 + 0 * year (roll over) = 2005-07-01"
  , "2005-04-21 + 0 * year (roll over) = 2005-04-21"
  , "2005-06-30 + 0 * year (roll over) = 2005-06-30"
  , "2005-02-28 + 1 * year (roll over) = 2006-02-28"
  , "2004-02-29 + 1 * year (roll over) = 2005-03-01"
  , "2004-01-31 + 1 * year (roll over) = 2005-01-31"
  , "2004-12-31 + 1 * year (roll over) = 2005-12-31"
  , "2005-07-01 + 1 * year (roll over) = 2006-07-01"
  , "2005-04-21 + 1 * year (roll over) = 2006-04-21"
  , "2005-06-30 + 1 * year (roll over) = 2006-06-30"
  , "2005-02-28 + 7 * year (roll over) = 2012-02-28"
  , "2004-02-29 + 7 * year (roll over) = 2011-03-01"
  , "2004-01-31 + 7 * year (roll over) = 2011-01-31"
  , "2004-12-31 + 7 * year (roll over) = 2011-12-31"
  , "2005-07-01 + 7 * year (roll over) = 2012-07-01"
  , "2005-04-21 + 7 * year (roll over) = 2012-04-21"
  , "2005-06-30 + 7 * year (roll over) = 2012-06-30"
  , "2005-02-28 + 83 * year (roll over) = 2088-02-28"
  , "2004-02-29 + 83 * year (roll over) = 2087-03-01"
  , "2004-01-31 + 83 * year (roll over) = 2087-01-31"
  , "2004-12-31 + 83 * year (roll over) = 2087-12-31"
  , "2005-07-01 + 83 * year (roll over) = 2088-07-01"
  , "2005-04-21 + 83 * year (roll over) = 2088-04-21"
  , "2005-06-30 + 83 * year (roll over) = 2088-06-30" ]
