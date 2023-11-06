.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
XCHG EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDI] 
XOR RAX, -1671753754 
MOV DI, -20997 
XCHG EDX, EAX 
BT EAX, EAX 
BT RSI, RBX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RSI] 
MOV DI, 18442 
BT EAX, 19 
AND SIL, 17 # instrumentation
CMOVNL EAX, ESI 
AND AL, AL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RCX], 6 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
TEST RAX, 1255418582 
BTR DI, -38 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 82 
BT RSI, 24 
XOR RAX, 895817772 
BSWAP EDX 
LEA RCX, qword ptr [RSI] 
CWDE  
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVZX RDX, DI 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], 119 
AND RDX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDX], 7 
MOV EAX, 2332738 
MOV DL, 127 
OR CL, DL 
MOVZX RSI, AX 
CMOVNL ESI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
