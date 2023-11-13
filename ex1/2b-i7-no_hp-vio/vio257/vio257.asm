.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], -77 
XOR RAX, -615759546 
AND RCX, RAX 
BTC RBX, RBX 
AND SIL, -48 # instrumentation
XCHG ECX, EAX 
SETP AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], CX 
MOVSX EDX, AL 
MOV DX, -1110 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RAX] 
XOR AL, -64 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], 33 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, -31219 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RBX] 
NOT DI 
BTC SI, SI 
BTR EDX, -78 
AND SIL, -89 # instrumentation
SETNO DL 
XOR RBX, -80 
BTR RCX, -77 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
TEST EDI, EAX 
CMOVO SI, DI 
MOV EDX, EDX 
BTC DI, DI 
AND RAX, 905840866 
BSWAP RSI 
MOVZX SI, DL 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ESI 
CMOVLE RCX, RBX 
NOT DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
