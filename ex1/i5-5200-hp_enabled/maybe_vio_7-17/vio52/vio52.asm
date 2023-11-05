.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AL, -38 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDI] 
CMOVZ RBX, RBX 
BTR ESI, -36 
CBW  
AND RBX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], SI 
XCHG ECX, EAX 
CMOVNO SI, SI 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], 6 
AND AL, 56 
MOVSX ECX, DL 
TEST RAX, 1541338062 
SETNS BL 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -116 # instrumentation
SETNLE BL 
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
CMOVBE DI, AX 
AND DIL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], EAX 
XOR EAX, 713644769 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], RAX 
XOR DL, BL 
TEST RAX, 1668257193 
CMOVP BX, CX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RCX] 
STC  
BTS SI, SI 
AND SIL, -40 # instrumentation
CMOVNLE RCX, RDX 
CMOVNBE RDI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
