.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
MOVSX RBX, CL 
SETB AL 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTR dword ptr [R14 + RDI], EAX 
XCHG ESI, EAX 
BTR DI, BX 
AND RBX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDI], DI 
CMOVZ DI, BX 
MOV DL, BL 
MOVSX ECX, DL 
CMOVP DI, BX 
MOV BX, -28176 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG BX, SI 
XOR RDX, 75 
SETB BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], SI 
XOR RDI, RSI 
MOVZX ESI, DL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDX 
AND DIL, 127 # instrumentation
SETS CL 
OR BX, BX 
AND BL, BL 
MOVSX EDI, AL 
CMOVO ECX, EBX 
SETZ AL 
AND RSI, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RAX] 
CMOVNLE SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
