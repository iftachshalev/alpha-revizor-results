.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT CX, 127 
SETB AL 
OR DI, BX 
BT EDI, -91 
AND DIL, -128 # instrumentation
NOT ECX 
SETNL AL 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOV EDX, EDX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EBX 
AND DIL, 117 # instrumentation
MOVZX CX, BL 
MOV BX, 7195 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -113 # instrumentation
SETNP DIL 
OR DIL, 62 
CMOVB DX, SI 
SETNBE BL 
CMOVS AX, BX 
BTR ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RSI], 7 
AND DIL, 117 # instrumentation
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOVZX RDI, CX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
MOVSX EBX, BL 
MOVSX EDX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RSI] 
CMOVNBE ESI, EAX 
XOR RAX, 1965857940 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -68 # instrumentation
CWDE  
MOV EAX, 1531819317 
XCHG AX, AX 
SETS AL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
BT RCX, 29 
XCHG RDI, RAX 
BT ESI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
