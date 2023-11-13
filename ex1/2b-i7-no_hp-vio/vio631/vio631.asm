.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RSI, -6 
AND DIL, -48 # instrumentation
CMOVLE CX, DI 
BT RBX, RDX 
AND DIL, -114 # instrumentation
CMOVL EDX, EAX 
CMOVO DI, DX 
BTR DX, BX 
AND SIL, -66 # instrumentation
CMOVNLE EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
CWD  
MOVZX EDI, AL 
TEST RSI, -546898416 
CMOVLE EBX, EBX 
SETNLE CL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], RDI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG DI, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RCX] 
TEST AL, -109 
XCHG CL, AL 
AND ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTC dword ptr [R14 + RDX], EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RSI] 
CMOVL CX, DX 
BTS ESI, EAX 
XCHG RCX, RSI 
NOP  
AND RSI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
SETLE BL 
XADD AL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RAX] 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
