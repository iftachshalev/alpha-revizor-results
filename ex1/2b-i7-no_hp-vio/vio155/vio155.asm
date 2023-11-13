.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTS word ptr [R14 + RDI], SI 
AND SIL, 62 # instrumentation
SETNL AL 
CMOVNO DX, AX 
XCHG CL, DIL 
TEST AL, -113 
SETS DL 
CMOVNO RSI, RDI 
MOV EBX, -1806864575 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
XOR AL, -67 
BTR RDX, RAX 
OR EAX, 98878676 
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
AND RCX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RCX], DI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -351721612 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], 28 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTR qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], -84 
SETP DL 
MOV EDX, ECX 
SETB CL 
MOVSX EDX, BX 
XADD EDI, EBX 
XCHG DL, BL 
XOR EAX, 845269373 
XCHG RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RCX] 
SETNS DL 
OR RAX, 547698864 
OR RBX, 125 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDI], 0 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
