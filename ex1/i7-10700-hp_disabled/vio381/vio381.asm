.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST EAX, 1236112867 
XCHG RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], EDX 
SETZ AL 
SETNS BL 
TEST BX, -13557 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DX, CX 
XOR AX, -18823 
TEST RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RAX] 
LEA CX, qword ptr [RAX + RSI + 41270] 
JMP .bb_main.2 
.bb_main.2:
MOV BL, 57 
XOR RCX, -16 
CMOVP EDX, ESI 
CLC  
CMOVP ESI, ECX 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDX] 
AND DIL, 114 # instrumentation
SETP BL 
TEST CX, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], EDI 
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVSX DX, AL 
XOR RCX, RAX 
CMOVZ DX, BX 
SETNLE BL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], ECX 
SETNZ DL 
AND RAX, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RAX] 
CMOVO RSI, RDI 
MOVZX ECX, DX 
CMOVNBE RSI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
