DO $$
  declare 

  age int:= 25;

  Begin 
    IF age>=18 and age<21 THEN
      RAISE NOTICE 'Your Age is % And Your are eligible',age;

	ELSIF age>=21 THEN
	  RAISE NOTICE 'Your Age is % And Your are eligible and Can Go to the Party',age;
	
	
    ELSE 
      RAISE NOTICE 'Your Age is % And Your are Not eligible',age;

    END IF;

  END;

$$

