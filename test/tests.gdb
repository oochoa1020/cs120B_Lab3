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
test "PINA: 0x14 =>PORTB: 0x01  PORTC: 0x40”
setPINA 0x14
continue 5
expectPORTB 0x01
expectPORTC 0x40
checkResult

test "PINA: 0x0F =>PORTB: 0x00  PORTC: 0xF0”
setPINA 0x0F
continue 5
expectPORTB 0x00
expectPORTC 0xF0
checkResult

test "PINA: 0x28 =>PORTB: 0x02  PORTC: 0x80”
setPINA 0x28
continue 5
expectPORTB 0x02
expectPORTC 0x80
checkResult

test "PINA: 0x42 =>PORTB: 0x04  PORTC: 0x20”
setPINA 0x42
continue 5
expectPORTB 0x04
expectPORTC 0x20
checkResult

test "PINA: 0x51 =>PORTB: 0x05  PORTC: 0x10”
setPINA 0x51
continue 5
expectPORTB 0x05
expectPORTC 0x10
checkResult



# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
