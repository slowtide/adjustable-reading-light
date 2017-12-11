
'dutycycle values
'pwmout C.2, 49, 0 ; 20000Hz at 0% @ 4MHz
'pwmout C.2, 49, 39 ; 20000Hz at 20% @ 4MHz
'pwmout C.2, 49, 79 ; 20000Hz at 40% @ 4MHz
'pwmout C.2, 49, 119 ; 20000Hz at 60% @ 4MHz
'pwmout C.2, 49, 159 ; 20000Hz at 80% @ 4MHz
'pwmout C.2, 49, 199 ; 20000Hz at 100% @ 4MHz


#picaxe 08m2
symbol press=pinc.4
symbol sense=b0
symbol brightness=b1

symbol light=c.2
symbol t=1000

dirsc=%00000100


main:
	
	check:'when switch is pressed put on the lamp else let the lamp be off
	if pinc.4=1 then putonoff:let brightness=0:pwmduty light,brightness
	if pinc.4=0 then main
	
	
	
	putonoff:'initiallization of pulse width modulation at 0% dutycycle for one second
	pwmout light, 49, 0:pause t
	
	
	bright1:'keep lamp at this brightness level of 20% untill switch is pressed again
	do while pinc.4=0
		let brightness=39:pwmduty light,brightness:pause t	
	loop
	pause t:pause t
	
	bright2:'keep lamp at this brightness level of 40% untill switch is pressed again
	do while pinc.4=0
		let brightness=79:pwmduty light,brightness:pause t
	loop
	pause t:pause t
	
	bright3:'keep lamp at this brightness level of 60% untill switch is pressed again
	do while pinc.4=0
		let brightness=119:pwmduty light,brightness:pause t
	loop
	pause t:pause t
	
	bright4:'keep lamp at this brightness level of 80% untill switch is pressed again
	do while pinc.4=0
		let brightness=159:pwmduty light,brightness:pause t				
	loop
	pause t:pause t
	
	bright5:'keep lamp at this brightness level of 100% untill switch is pressed again
	do while pinc.4=0
		let brightness=199:pwmduty light,brightness:pause t
	loop
	pause t:pause t
	
	bright0:'keep lamp at this brightness level of 0% untill switch is pressed again			
	do while pinc.4=0
		let brightness=0:pwmduty light,brightness:pause t
	loop
	pause t:pause t

goto main