.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, 43 
CMOVNL EDI, ESI 
SETNZ DL 
AND RDI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BT word ptr [R14 + RSI], DI 
AND RAX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RAX], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], -102 
MOVZX EDI, BL 
CMOVNP DI, BX 
XADD DIL, DIL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 57 # instrumentation
CMC  
XCHG RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RCX] 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XOR BL, 69 
AND DX, SI 
CLD  
OR AX, -19682 
STD  
AND RBX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RBX], 6 
AND DIL, -38 # instrumentation
SETO BL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RSI 
MOV DX, 25284 
JMP .bb_main.3 
.bb_main.3:
CMPXCHG SIL, AL # instrumentation
AND DIL, 36 # instrumentation
SETL AL 
SETNZ DL 
LAHF  
MOVZX CX, DL 
JMP .bb_main.4 
.bb_main.4:
XOR AL, 102 
SETS SIL 
CMOVNO RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
