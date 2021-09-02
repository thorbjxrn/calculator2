# calculator2

A simple calculator based on string parsing.

### Dependencies:

pod "FINNBottomSheet", git: "https://github.com/finn-no/BottomSheet.git"
pod 'MathExpression', '~>1.2.0'

# Description

With the calculator buttons one can enter and remove mathematical operations, which will be sent to a string parser and returned as a solution. If the input is erronous a toast pop up will alert the mistake.

for now the result will not overwrite the expression input, so further input will be added to the original expression.

## Process

This application was developed in a test-driven fashion, verifying the backend was functional before the UI was created.

A Model View Controller design is in the project structure, where the Model is a MathExpression from the MathExpression pod-extension and a basic String is used as a Data Transfer Object.

By using an external String parser and arithmetic evaluator, I could get up a more advanced app quicker and do test driven develpment. The simple tool takes a String and does math on it so writing tests to verify the functionality could be done quickly. I hope this also demonstrates separation of concerns.

With this on board, I already had a Minimal Viable Product using the native keyboard for text entry and a text field.

But to make it look more like a calculator, more intuitive and restrict posibilities for errors I made a custom UI. 

I added the Finn bottomSheet to include something from the OpenSource repositories from Finn. I planned to put in a formula collection there, but got pressed on time.

### Hindrances
My biggest hindrance has been getting into the swing of things in Swift again.

I have developed this application over a rented cloud macintosh.

Deciding and researching on approaches took some time, while implementing them has gone quite fast.

# Further Ideas & Improvements

Filter away first decimal point, as 1 + 1 = 2.0 is fake precision and looks odd.

Float number issue (0.00000000001), i saw a bug caused by the Float storage design. Can probably be solved by changing data type

validate input further

add functionality to intepret expressions like 2(3-1) as 2*(3-1)

Undo, Redo, Log

Calculus, graphing

Finn Ads

Better UI, Swift UI?

UITests, Performance Test. UITestDriven?

User Centered Design Testing / Stakeholder Review

Apple Watch

# Resources:

**Parser:**
https://github.com/peredaniel/MathExpression

**BottomSheet:**
https://github.com/finn-no/BottomSheet

**UI Guide & inspo**
*Calculator App Example Swift Xcode Tutorial*
Code With Cal
https://www.youtube.com/watch?v=A2gGNTKo_q8
