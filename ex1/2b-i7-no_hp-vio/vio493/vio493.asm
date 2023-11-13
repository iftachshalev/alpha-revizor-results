.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 42 # instrumentation
CMOVNLE EDX, ESI 
TEST SI, DX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 81 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
SETNL CL 
OR AL, 11 
TEST SIL, 10 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RAX] 
AND SIL, 113 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
CMOVB EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], CX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 60 # instrumentation
BTS EDX, 54 
CMOVNZ DX, DI 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 122 
MOVZX RAX, DIL 
XCHG ECX, EAX 
CMOVS BX, CX 
BTS RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], DI 
AND RBX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], EDI 
BTS EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
MOV CL, -50 
CMOVLE EAX, EDX 
SETNZ DL 
TEST AX, 1354 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
