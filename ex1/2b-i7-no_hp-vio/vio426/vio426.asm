.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -94 # instrumentation
SETNLE BL 
SAHF  
SETBE BL 
SETS DIL 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
CMPXCHG CL, DL # instrumentation
AND DIL, 53 # instrumentation
NOT RSI 
LAHF  
SETZ BL 
CMOVZ CX, DI 
SETLE DL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], AL 
SETO DIL 
BTR EDX, ECX 
AND SIL, -62 # instrumentation
CMOVBE EBX, ESI 
CMOVLE EDX, ESI 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDI] 
SETB SIL 
MOVZX RAX, SIL 
CMOVNB DX, BX 
NOT DX 
AND RCX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RCX], 6 
OR EBX, EDI 
CMOVNO RCX, RBX 
CMOVNP ESI, EAX 
LEA EAX, qword ptr [RBX + RCX + 776] 
NOT BL 
OR DIL, -84 
AND RDI, 12 
CMOVP EBX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
