.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR DI, -102 
CMOVNLE ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RSI] 
XCHG RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RBX] 
SETO BL 
CMOVS BX, BX 
SETNB BL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EAX 
AND DIL, 124 # instrumentation
SETBE DL 
OR SIL, 115 
BSWAP RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RBX], 5 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV BX, -14011 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RSI] 
XOR DX, -97 
BTC DI, AX 
XADD SI, AX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], -64 
BT RDX, -88 
AND RDX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], 4 
OR BX, 0b1000000000000000 # instrumentation
BSF SI, BX 
CWD  
MOVSX SI, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], EAX 
XCHG CL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RBX] 
CMOVNB EDX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
