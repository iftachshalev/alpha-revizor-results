.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC AX, AX 
XADD CL, DL 
NOT RSI 
BTS RBX, -61 
MOV DX, 13947 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], 5 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
NOT RDI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
BTR ECX, 99 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RBX], 4 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS SI, BX 
TEST DL, DIL 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], RCX 
AND DIL, 101 # instrumentation
CMOVZ CX, DI 
CMOVNZ EDI, EDI 
SETL AL 
BSWAP EAX 
BTS DX, -58 
CLC  
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], ESI 
AND AX, DX 
AND RCX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RCX] 
CMOVNO RDI, RCX 
MOVZX CX, SIL 
CMOVNO ECX, EAX 
BT DI, 84 
AND RDX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RDX] 
CMOVS RBX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
