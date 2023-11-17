.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT ESI 
MOVZX EBX, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], EBX 
OR EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], 24628 
BTS SI, -72 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RAX] 
AND CL, AL 
TEST RAX, 1546169810 
XCHG ESI, ECX 
TEST SI, 12996 
SETNS SIL 
BT DI, CX 
LOOPNE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDX] 
CLC  
SETNZ AL 
XCHG RDX, RAX 
CMOVNO EAX, EDX 
JMP .bb_main.3 
.bb_main.3:
BT RAX, RBX 
AND SIL, -67 # instrumentation
CMOVNO DI, CX 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RBX 
CMOVL SI, BX 
XOR ESI, 77 
CMOVB EDI, EDX 
TEST EDI, -936163249 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR AL, 94 
STC  
TEST ECX, ESI 
BT SI, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RAX] 
CWDE  
CMOVLE RSI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
