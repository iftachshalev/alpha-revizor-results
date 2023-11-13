.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RAX], 4 
XADD DI, AX 
SETNZ DL 
XOR AX, -7102 
SETP DL 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], SIL 
CMPXCHG AL, AL 
CMOVS DI, BX 
SETP DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RCX] 
CMOVLE ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RDX] 
XOR AL, 120 
SETLE DL 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], CL 
CMOVP RDX, RDX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RSI], 5 
NOT EAX 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], AL 
TEST ESI, -1000985913 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], DIL 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], RCX 
SETB AL 
CMOVO DX, BX 
TEST RAX, 731935478 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EBX 
MOVZX EBX, AL 
TEST EDX, 372083345 
XOR RSI, 2 
OR RBX, 15 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
