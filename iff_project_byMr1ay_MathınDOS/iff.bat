@echo off
if "%1"==""	goto :syntax
if "%1"=="0"	goto :q0
if "%1"=="00"	goto :q00
if "%1"=="1"	goto :q1
if "%1"=="2"	goto :q2
if "%1"=="11"	goto :q11
if "%1"=="12"	goto :q12
if "%1"=="22"	goto :q22
if "%1"=="112"	goto :q112
if "%1"=="122"	goto :q122
if "%1"=="1122"	goto :q1122
goto :eof


	:q0
		set v=%2
		set u=0
		set zz=0
		set rr=0

		set /a v=%v%+1

		:Menu
			set /a rr=%rr%+1
			if %rr%==1 set uu=2f
			if %rr%==2 set rr=0 &&set uu=cf

			call mbat %u% 0 %uu% "%zz%"

			set /a zz=%zz%+1
			set /a u=%u%+1

			if %zz%==10 set zz=0
			if %v%==%u% goto end
			goto Menu



	:q00
		set v=%2
		set u=0
		set zz=0
		set rr=0

		set /a v=%v%+1

		:Menu2
			set /a rr=%rr%+1
			if %rr%==1 set uu=9f
			if %rr%==2 set rr=0 &&set uu=e0

			call mbat 0 %u% %uu% "%zz%"

			set /a zz=%zz%+1
			set /a u=%u%+1

			if %zz%==10 set zz=0
			if %v%==%u% goto end
			goto Menu2


	:q1
		if %x%==%2 %3 %4 %5 %6 %7 %8 %9
		goto :end

	:q2
		if %y%==%2 %3 %4 %5 %6 %7 %8 %9
		goto :end

	:q11
		if %x% geq %2   if %x% leq %3 %4 %5 %6 %7 %8 %9
		goto :end

	:q12
		if %x% == %2    if %y%==%3 %4 %5 %6 %7 %8 %9
		goto :end

	:q22 
		if %y% geq %2   if %y% leq %3 %4 %5 %6 %7 %8 %9
		goto :end

	:q112
		if %x% geq %2 	if %x% leq %3 	if %y%==%4 %5 %6 %7 %8 %9
		goto :end	

	:q122
		if %x% == %2 	if %y% geq %3  	if %y% leq %4 %5 %6 %7 %8 %9
		goto :end	

	:q1122
		if %x% geq %2   if %x% leq %3 	if %y% geq %4  	if %y% leq %5 %6 %7 %8 %9
		goto :end	


	:syntax
cls

			echo.
			batbox /c 0x0b /d " v1.2 by Mr1ay & MathInDOS" 
			echo.
			echo.
			batbox /c 0x0c /d " :Syntax" 
			echo.
			echo.
			batbox /c 0x1f /d "      iff        :"
			batbox /c 0x9f /d "look syntax "
			echo.
			echo.
			echo.
			batbox /c 0x3f /d "      iff  0     :"
			batbox /c 0xb0 /d "horizontal 0123"

			echo.
			batbox /c 0x3f /d "      iff  00    :"
			batbox /c 0xb0 /d "vertical   0123"
			echo.
			echo.
			batbox /c 0x4f /d "      iff  1     :"
			batbox /c 0xc0 /d "if x = ?    "
			echo.
			batbox /c 0x4f /d "      iff  2     :"
			batbox /c 0xc0 /d "if y = ?    "
			echo.
			batbox /c 0x2f /d "      iff  11    :
			batbox /c 0xa0 /d "if  ? <x< ? "
			echo.
			batbox /c 0x2f /d "      iff  22    :
			batbox /c 0xa0 /d "if  ? <y< ? "
			echo.
			batbox /c 0x2f /d "      iff  12    :
			batbox /c 0xa0 /d "if x=?  y=? "
			echo.
			batbox /c 0x6f /d "      iff  122   :
			batbox /c 0xe0 /d "if x=?       ? <y< ? "
			echo.
			batbox /c 0x6f /d "      iff  112   :
			batbox /c 0xe0 /d "if ? <x< ?      y= ? "
			echo.
			batbox /c 0x8f /d "      iff  1122  :
			batbox /c 0xf0 /d "if ? <x< ?   ? <y< ? "
			echo.

batbox /c 0x0f
			echo(


:END

