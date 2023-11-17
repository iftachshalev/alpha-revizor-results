.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], BX 
SETNBE CL 
XOR CL, CL 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDX], 1 
AND DIL, 117 # instrumentation
CMOVP AX, AX 
CMOVBE ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
AND DIL, 38 
TEST AL, SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], -63 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XCHG EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDI] 
SETBE AL 
SETLE DL 
XOR EDI, EDI 
MOV CX, CX 
OR DIL, DL 
SETB BL 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RBX] 
TEST BL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
CMOVL ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
LEA CX, qword ptr [RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RCX] 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVZX RSI, SIL 
CMPXCHG DX, AX 
CMPXCHG DL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
