.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BX, AX 
AND BL, -101 
TEST EAX, -87418589 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RBX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RSI 
OR EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], 41 
BTC RSI, RCX 
AND SIL, -110 # instrumentation
CMOVNB RDX, RSI 
CMOVS RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RAX 
SETBE AL 
CMOVNS EDX, ESI 
BTS BX, DX 
MOV ECX, 19647596 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], SI 
TEST ECX, ECX 
CMOVLE RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], AL 
CMOVNO BX, CX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -66 # instrumentation
SETZ AL 
CMOVNLE EDX, EDI 
LEA RAX, qword ptr [RDX + RSI] 
CMOVNP CX, DX 
CMOVO DX, AX 
MOVZX RSI, DIL 
CMOVP ESI, ESI 
CMOVNP BX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], -61 
MOVSX RAX, AX 
BTC SI, -73 
CMOVNZ BX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
