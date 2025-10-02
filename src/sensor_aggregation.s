AREA SmartMem, CODE, READONLY
EXPORT main

main
    MOV   R0, #32
    LDR   R1, =sensor_data
    LDR   R2, =status_mem
    MOV   R3, #0          ; accumulator total
    MOV   R4, #0          ; bit-packing register
    MOV   R5, #0          ; bit position

loop_sensor:
    LDRB  R6, [R1], #1    ; load sensor byte
    ADD   R3, R3, R6      ; add to total
    MOV   R7, #0
    CMP   R6, #128
    MOVHI R7, #0b11       ; flag 2-bit
    ORR   R4, R4, R7, LSL R5  ; pack bit
    ADD   R5, R5, #2
    CMP   R5, #8
    BLT   skip_store
    STRB  R4, [R2], #1
    MOV   R4, #0
    SUB   R5, R5, #8
skip_store:
    SUBS  R0, R0, #1
    BNE   loop_sensor

CMP   R5, #0
BEQ   done
STRB  R4, [R2], #1

done:
    LDR   R1, =total_value
    STR   R3, [R1]
    B     done

AREA SmartMemData, DATA, READWRITE
sensor_data
    DCB   100,50,200,30,255,60,120,180,10,90,45,78,90,110,60,15,220,30,95,85,60,40,70,30,120,140,60,10,255,80,90,30
status_mem
    SPACE 8
total_value
    SPACE 4
END
