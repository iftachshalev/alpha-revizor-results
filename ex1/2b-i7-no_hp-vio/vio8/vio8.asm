.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA DX, qword ptr [RBX + RBX] 
BTR CX, CX 
AND AL, 9 
OR AX, 16738 
CMOVLE RDX, RAX 
XADD DL, BL 
MOVSX SI, SIL 
OR AL, CL 
AND RCX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RCX] 
AND AX, 19246 
CMOVZ AX, AX 
CDQ  
CMPXCHG EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RBX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], CL 
TEST CX, AX 
XCHG CL, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
BT ESI, EDX 
CMPXCHG RAX, RAX 
AND DL, AL 
NOT AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RSI], 0 
MOV EDX, EBX 
BT SI, BX 
AND SIL, -111 # instrumentation
CMOVNL CX, SI 
CMOVNO ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 51 
CMOVP ESI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
