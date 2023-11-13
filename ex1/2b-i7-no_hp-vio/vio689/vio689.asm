.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -114 # instrumentation
CMOVO RBX, RCX 
CMOVNS DI, BX 
MOVSX RCX, DIL 
CMOVBE RSI, RDI 
AND BL, CL 
BTS AX, -41 
LEA CX, qword ptr [RBX + RAX + 34078] 
BTR RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RSI] 
AND SIL, -101 # instrumentation
CMOVS EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RCX 
AND RBX, 15 
MOVSX RDX, DX 
SETNLE DL 
AND RCX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDX] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -21 # instrumentation
CMOVNO RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RDI] 
CMOVP RCX, RBX 
LEA EDI, qword ptr [RDI] 
MOV RDI, 5742811370310642544 
XADD ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], AL 
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
MOVZX DX, SIL 
MOVSX AX, SIL 
MOV BL, -53 
XOR BX, SI 
CMPXCHG DX, BX 
CMOVNBE RDX, RCX 
CMOVNL EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
