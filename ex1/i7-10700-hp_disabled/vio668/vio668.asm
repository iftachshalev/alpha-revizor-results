.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 99 # instrumentation
CMOVNLE RBX, RDI 
AND AL, 75 
TEST ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], 57 
CMOVNS AX, CX 
AND RDX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDX], 2 
STD  
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RDI 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR DIL, -98 
CMOVL DI, DI 
OR RAX, 83139024 
AND RDX, 11 
AND RCX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RAX] 
AND ESI, 4 
JMP .bb_main.2 
.bb_main.2:
XOR AX, 23185 
CMOVNL RBX, RAX 
CMOVLE AX, AX 
NOT RCX 
SETNBE BL 
AND RCX, 0b1111111111111 # instrumentation
OR CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], AL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
OR CX, word ptr [R14 + RSI] 
BTS EAX, EDX 
AND SIL, -9 # instrumentation
CMOVNP BX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RBX] 
SETZ DL 
XCHG RSI, RBX 
SETZ AL 
SETNS SIL 
XCHG EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
