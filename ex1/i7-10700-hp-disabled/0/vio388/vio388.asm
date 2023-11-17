.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RBX] 
XOR RCX, RDI 
XADD CL, BL 
AND EBX, 91 
OR AL, AL 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], 86 
MOV CL, BL 
NOT DL 
BTC CX, -23 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDX] 
BSWAP ESI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RBX] 
MOVSX RCX, DX 
TEST EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], RSI 
JMP .bb_main.2 
.bb_main.2:
MOV ECX, EBX 
XCHG RCX, RAX 
XADD RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
BTC DI, DX 
AND SIL, -123 # instrumentation
XCHG ESI, EAX 
CMOVNZ DX, BX 
CMOVNO EAX, ECX 
SETNO CL 
SETNO CL 
SETNBE AL 
JMP .bb_main.4 
.bb_main.4:
AND DIL, -35 # instrumentation
SETNL SIL 
SETNP DIL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], BL 
CMOVL AX, BX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
