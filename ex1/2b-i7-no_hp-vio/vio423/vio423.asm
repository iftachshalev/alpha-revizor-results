.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -99 # instrumentation
CBW  
MOV DIL, 45 
MOV RSI, 2025048727354807280 
SETNS CL 
CMOVBE DI, BX 
XCHG CX, AX 
CMOVNBE AX, DX 
BTC RBX, 51 
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
SETZ AL 
CMOVNP RBX, RDX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR CX, 58 
AND RBX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RBX] 
AND DIL, AL 
NOT DL 
SETNBE DL 
CMOVNZ DX, AX 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
TEST ECX, EDX 
SETNBE DL 
CMOVO CX, SI 
SETNS CL 
NOT ECX 
BTC RBX, 107 
TEST RCX, RDI 
BTR RAX, -90 
BTC ESI, 106 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG SIL, CL # instrumentation
LOCK NOT dword ptr [R14 + RSI] 
LAHF  
SETNS DL 
XOR CL, SIL 
AND AX, 32 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
