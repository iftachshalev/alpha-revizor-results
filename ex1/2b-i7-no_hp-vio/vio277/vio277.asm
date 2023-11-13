.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EBX, EDI 
CMOVS RDX, RBX 
TEST BL, DL 
MOVZX ESI, AX 
XOR AL, -76 
AND RDI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RDI] 
TEST RAX, -397325467 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RBX] 
AND ECX, 77 
CMPXCHG RAX, RCX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RBX] 
MOVSX AX, AL 
AND RAX, 1123868648 
AND BX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RAX 
BT AX, DI 
CMOVZ RBX, RDI 
BT BX, DI 
MOVSX RDX, DL 
CLC  
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RCX 
XADD EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 6 
OR AX, DX 
MOVSX SI, DIL 
MOVSX EAX, CL 
BTS ECX, ESI 
CMPXCHG AL, BL 
CMOVNZ RSI, RDI 
MOVSX RDX, BX 
SETNL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
