{-# OPTIONS -ffi -Wall -Werror #-}

module Main where

import System.Time.Calendar
import System.Time.Clock

import System.Locale
import Foreign
import Foreign.C

{-
	size_t format_time (
	char *s, size_t maxsize,
	const char *format,
	int isdst,int gmtoff,time_t t);
-}

foreign import ccall unsafe "TestFormatStuff.h format_time" format_time :: CString -> CSize -> CString -> CInt -> CInt -> CString -> CTime -> IO CSize

withBuffer :: Int -> (CString -> IO CSize) -> IO String
withBuffer n f = withArray (replicate n 0) (\buffer -> do
			len <- f buffer
			peekCStringLen (buffer,fromIntegral len)
		)

unixFormatTime :: String -> Timezone -> UTCTime -> IO String
unixFormatTime fmt zone time = withCString fmt (\pfmt -> withCString (timezoneName zone) (\pzonename ->
		withBuffer 100 (\buffer -> format_time buffer 100 pfmt
				(if timezoneDST zone then 1 else 0)
				(fromIntegral (timezoneMinutes zone * 60))
				pzonename
				(fromInteger (truncate (utcTimeToPOSIXSeconds time)))
			)
		))

locale :: TimeLocale
locale = defaultTimeLocale {dateTimeFmt = "%a %b %e %H:%M:%S %Y"}

zones :: [Timezone]
zones = [utc,hoursToTimezone (- 7)]

posixDay :: UTCDiffTime
posixDay = 86400

baseTime0 :: UTCTime
baseTime0 = decodeLocalUTC utc (CalendarTime (GregorianDay 1970 01 01) midnight)

baseTime1 :: UTCTime
baseTime1 = decodeLocalUTC utc (CalendarTime (GregorianDay 2005 05 01) midnight)

times :: [UTCTime]
times = [baseTime0,baseTime1,addUTCTime posixDay baseTime1,addUTCTime (2 * posixDay) baseTime1]

-- as found in http://www.opengroup.org/onlinepubs/007908799/xsh/strftime.html
-- plus FgGklPsz
chars :: [Char]
chars = "aAbBcCdDeFgGhHIjklmMnpPrRsStTuUVwWxXyYzZ%"

main :: IO ()
main = mapM_ (\char -> let fmt = '%':char:[] in mapM_ (\time -> mapM_ (\zone -> let
		ctime = encodeUTC zone time :: ZonedGregorianTime
		haskellText = formatTime locale fmt ctime
	in do
		unixText <- unixFormatTime fmt zone time
		if haskellText == unixText then return () else
			putStrLn ("Mismatch with " ++ fmt ++ " for " ++ (show ctime) ++ ": UNIX says \"" ++ unixText ++ "\", TimeLib says \"" ++ haskellText ++ "\".")
	) zones) times) chars
