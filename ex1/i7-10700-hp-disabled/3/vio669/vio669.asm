.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR RAX, -70 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RBX] 
TEST AX, -16606 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
MOVZX EAX, CL 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RBX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RSI] 
TEST AL, 6 
AND EDI, ECX 
MOVSX DX, AL 
XOR DL, CL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 91 # instrumentation
SETP AL 
AND RBX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RCX] 
MOVZX DI, AL 
OR SI, -66 
SETL DL 
OR SIL, -86 
CMOVS EBX, EAX 
CMOVLE ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDI] 
XOR AX, -117 
XOR AL, -79 
OR BX, 0b1000000000000000 # instrumentation
BSR BX, BX 
AND RSI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RSI], ECX 
AND SIL, -107 # instrumentation
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 109 # instrumentation
CLC  
SETNB DL 
CMOVNZ EDX, EDX 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RSI 
SETNB DL 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], EAX 
OR EAX, 343869071 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
