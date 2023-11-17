.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], SIL 
AND RDX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDX], 6 
TEST AX, 7341 
NOT BX 
CMPXCHG DX, CX 
CMOVBE DX, BX 
BTS RAX, 40 
SETZ CL 
AND RCX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTC dword ptr [R14 + RCX], EDX 
AND SIL, -112 # instrumentation
NOT RDX 
CMOVBE AX, CX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR CL, AL 
AND BL, BL 
CMOVLE DX, CX 
CMOVNO RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], -7 
SETS DIL 
CMOVS ESI, EBX 
XCHG RCX, RAX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], SIL 
AND RAX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RAX] 
OR RSI, 35 
AND RAX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RBX] 
XOR RAX, -341348188 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], -8 
STD  
BTS AX, 120 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], -125 
XOR CX, 64 
XCHG DI, AX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
