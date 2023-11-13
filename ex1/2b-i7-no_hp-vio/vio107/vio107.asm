.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -78 # instrumentation
SETLE CL 
AND CL, -81 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 34 
BTC RDI, RSI 
CMOVNBE EDI, ESI 
CMOVNBE RAX, RAX 
BT ESI, ECX 
AND BL, AL 
SETNZ BL 
CMOVNB BX, DX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG RDI, RDX 
OR BX, SI 
NOT BL 
MOV SIL, 107 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RBX] 
AND EAX, -1242340881 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDX] 
SETNB SIL 
NOT BL 
TEST CL, AL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RAX] 
CMOVP RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RCX] 
CMOVO ESI, EDI 
MOVSX CX, SIL 
MOVZX BX, DL 
CMOVNO DX, DI 
AND RAX, 1989598159 
XADD RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDI] 
BT SI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
