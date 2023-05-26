-- ask user how many bloons
set bloons to text returned of (display dialog "How many bloons?" default answer "1500")
-- divide result by 1300
set bloons to (bloons / 1300) as integer
-- bring monkey city to front
tell application "System Events"
	set frontmost of process "Monkey City" to true
end tell
-- loop bloons times
repeat bloons times
	-- run bash script
	do shell script "/usr/local/bin/cliclick -e 300 c:200,175 w:300 dd:752,461 du:407,461 c:581,800 w:1000"
end repeat
