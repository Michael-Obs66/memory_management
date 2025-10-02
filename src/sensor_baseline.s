AREA SmartMem, CODE, READONLY
EXPORT main

main
    MOV   R0, #32         ; loop counter
    LDR   R1, =sensor_data
    LDR   R2, =status_mem
    MOV   R3, #0          ; accumulator total

loop_sensor:
    LDRB  R4, [R1], #1    ; load sensor byte
    ADD   R3, R3, R4      ; add to total
    MOV   R5, #0
    CMP   R4, #128
    MOVHI R5, #1
    MOVLS R5, #0
    STRB  R5, [R2], #1    ; store status
    SUBS  R0, R0, #1
    BNE   loop_sensor

done:
    LDR   R1, =total_value
    STR   R3, [R1]
    B     done

AREA SmartMemData, DATA, READWRITE
sensor_data
    DCB   100,50,200,30,255,60,120,180,10,90,45,78,90,110,60,15,220,30,95,85,60,40,70,30,120,140,60,10,255,80,90,30
status_mem
    SPACE 32
total_value
    SPACE 4
END
