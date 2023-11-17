.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -64 # instrumentation
SETL BL 
CMOVB RSI, RBX 
OR CX, AX 
CMOVNZ RBX, RAX 
SETS BL 
JMP .bb_main.1 
.bb_main.1:
MOV DX, DX 
BT SI, CX 
AND AX, 33 
AND DI, SI 
BTC RAX, RAX 
CMOVB EDX, ESI 
JMP .bb_main.2 
.bb_main.2:
BTR CX, SI 
AND DIL, -13 # instrumentation
CMOVO EAX, EDX 
CMPXCHG EBX, ECX 
BTR RAX, -92 
AND DIL, -59 # instrumentation
CMOVB EAX, EBX 
CMOVL RAX, RAX 
BTR BX, DI 
XADD AL, BL 
BTS EDX, EAX 
MOVZX ECX, AL 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
TEST BX, AX 
CMOVNLE DX, DX 
AND RSI, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RSI] 
SETS DL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
OR RSI, RSI 
SETNBE DL 
AND RBX, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RBX] 
XADD DIL, DIL 
MOV EDX, -1813704811 
NOT BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
