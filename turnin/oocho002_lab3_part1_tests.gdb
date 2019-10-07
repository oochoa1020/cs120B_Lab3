# Test file for Lab3_introToAVR


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n

# Add tests below
test “PINA: 0x03 PINB: 0x03 => PORTC: 0x04”
setPINA 0x03
setPINB 0x03
continue 5
expectPORTC 0x04
checkResult

test “PINA: 0x02 PINB: 0x06 => PORTC: 0x03”
setPINA 0x02
setPINB 0x06
continue 5
expectPORTC 0x03
checkResult

test “PINA: 0x52 PINB: 0x46 => PORTC: 0x06”
setPINA 0x52
setPINB 0x46
continue 5
expectPORTC 0x06
checkResult

test "PINA: 0x69 PINB: 0x31 => PORTC: 0x07”
setPINA 0x69
setPINB 0x31
continue 5
expectPORTC 0x07
checkResult

test "PINA: 0x00 PINB: 0x00 => PORTC: 0x00”
setPINA 0x00
setPINB 0x00
continue 5
expectPORTC 0x00
checkResult

test "PINA: 0x0F PINB: 0x00 => PORTC: 0x04”
setPINA 0x0F
setPINB 0x00
continue 5
expectPORTC 0x04
checkResult

# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
