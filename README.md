# Silent Range Check Errors in Ada

This repository demonstrates a potential issue in Ada programming related to range checks. Ada doesn't automatically throw exceptions for out-of-range values, which can lead to unexpected behavior in functions and procedures. The example provided showcases a function that validates if a number is within a specific range; however, the absence of robust error handling can result in subtle bugs that are difficult to detect.

## Problem

The `Check_Range` function checks if an integer falls within the range 10 to 100.  If the number is outside this range, it returns `False`; however, it doesn't explicitly signal an error condition. This silent failure can be problematic as the calling code might not be adequately prepared to handle this situation.

## Solution

The provided solution demonstrates a more robust way to implement range checking.  Using exceptions, the code can raise a specific exception if the input is outside the valid range, allowing for more controlled error handling within the calling code.

## How to Reproduce

1. Clone this repository
2. Compile and run `bug.ada` (using an Ada compiler like GNAT)
3. Test with numbers both inside and outside the specified range (10-100)
4. Observe the behavior of the original and improved versions.