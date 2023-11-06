.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, RCX 
CMOVL AX, DX 
BTR DX, DI 
XCHG EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], CL 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], RBX 
XOR RCX, RDI 
XCHG CL, DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RCX], 2 
OR DI, CX 
AND RAX, -799328346 
OR AX, -107 
BT BX, DX 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, 20 # instrumentation
SETLE DL 
TEST BL, 102 
CMPXCHG RBX, RDI 
XADD CL, AL 
MOVZX EBX, AL 
XCHG RCX, RAX 
XCHG EDI, EAX 
SETL CL 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 4 # instrumentation
SETNP CL 
SETB AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RBX] 
XOR AX, 29084 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], ECX 
CMOVNLE AX, CX 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], 117 
NOP  
JMP .bb_main.4 
.bb_main.4:
AND SIL, 61 # instrumentation
MOV CL, CL 
SETNZ BL 
CMOVZ RDI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
