.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RCX, -34 
BTC BX, -14 
MOVSX EAX, SIL 
AND RDI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDI], SI 
CMOVNLE CX, DI 
SETNBE SIL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -40 # instrumentation
MOV AL, BL 
CMOVNS RAX, RAX 
CMOVNO EDX, ECX 
TEST RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDI], 4 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XOR SI, AX 
CMOVNB RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RCX] 
NOP  
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], -65 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RSI], 7 
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
XOR AL, -63 
JMP .bb_main.3 
.bb_main.3:
NOT BL 
AND RCX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RCX] 
BTR RSI, RDI 
TEST DI, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RBX] 
CMOVNZ RCX, RAX 
CMOVNB DX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
MOVZX RSI, DIL 
AND DIL, 105 
MOV BL, DIL 
AND RDX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTC qword ptr [R14 + RDX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
