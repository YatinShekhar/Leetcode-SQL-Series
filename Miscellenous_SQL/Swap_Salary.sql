-- https://leetcode.com/problems/swap-salary

update salary
set sex = case when sex = "f" then "m"
               else "f" 
		  end;
          

-- It is quite complex to swap with single update statement. ("m" with "f" and "f" with "m")
-- Because when one is updated to other ("m" into "f")
-- then it becomes really hard (because everything is now "f")
-- In these case cases update with case statement works very well.

-- This type of simple tedious topic can be asked in an interview