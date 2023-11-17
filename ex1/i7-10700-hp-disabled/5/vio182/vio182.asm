.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RCX, -108 
AND DIL, -89 # instrumentation
MOVSX BX, CL 
CMOVNBE EAX, ESI 
CMOVO CX, DI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], BX 
TEST AL, -86 
OR RCX, 89 
CMOVZ RCX, RDI 
OR DX, AX 
SETNZ SIL 
BTS RDI, 116 
AND SIL, 2 # instrumentation
SETP CL 
XOR AX, 8239 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RCX] 
MOVZX RAX, SIL 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XCHG SIL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RAX] 
TEST DIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], DIL 
SETL AL 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 97 # instrumentation
SETBE AL 
CMOVNBE RSI, RDI 
CMOVNLE EAX, ESI 
XOR DI, -49 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], EDX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -87 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BT DX, AX 
AND SIL, -43 # instrumentation
CMOVS ECX, EDX 
SETP BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RDI] 
CMOVP RDX, RDX 
XOR AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
