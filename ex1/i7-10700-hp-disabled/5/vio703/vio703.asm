.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDX 
CMOVNO ECX, EDX 
LEA RCX, qword ptr [RSI] 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], CX 
BTS RDX, 61 
OR EAX, 919207609 
SETNZ DL 
XCHG ECX, EAX 
CMOVNL RSI, RCX 
JMP .bb_main.2 
.bb_main.2:
TEST RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDX] 
BT RCX, 31 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], RBX 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR CL, CL 
NOT SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDI] 
LEA RDX, qword ptr [RCX] 
NOT RAX 
MOV RAX, RDX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RDX] 
CMOVL RAX, RDI 
CMOVP RBX, RCX 
CMOVO EDI, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
BTC SI, -75 
AND SIL, 32 # instrumentation
SETL CL 
OR DX, -20 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BT dword ptr [R14 + RAX], EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], CX 
CMOVNO CX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
