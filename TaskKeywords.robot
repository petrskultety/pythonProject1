*** Settings ***

Documentation  Test goes through a list of numbers and verifies that they are ordered from lowest to highest.

Resource  variables.robot

*** Keywords ***

Compare pass 1
     ${Length}=  get length  ${task1pass1}
     ${Length}  evaluate  ${Length}-1
     FOR    ${index}    IN RANGE   0  ${Length}
        Log     ${task1pass1}[${index}]
        ${index1}  evaluate   ${index}+1
        Should Be True    ${task1pass1}[${index}]<${task1pass1}[${index1}]
     END

Compare pass 2
     ${Length}=  get length  ${task1pass2}
     ${Length}  evaluate  ${Length}-1
     FOR    ${index}    IN RANGE   0  ${Length}
        Log     ${task1pass2}[${index}]
        ${index1}  evaluate   ${index}+1
        Should Be True    ${task1pass2}[${index}]<${task1pass2}[${index1}]
     END

Compare task fail
     ${Length}=  get length  ${task1fail}
     ${Length}  evaluate  ${Length}-1
     FOR    ${index}    IN RANGE   0  ${Length}
        Log     ${task1fail}[${index}]
        ${index1}  evaluate   ${index}+1
        Should Be True    ${task1fail}[${index}]<${task1fail}[${index1}]
     END



