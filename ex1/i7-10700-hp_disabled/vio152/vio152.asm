.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EAX, CL 
TEST CL, -21 
TEST RAX, 1163453838 
CMOVZ RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RCX], ECX 
XOR RAX, 1484252622 
XOR EAX, 220889710 
MOVSX EDX, CX 
NOT BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RBX] 
CMOVNZ DX, BX 
SETNO DIL 
SETNS BL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], DL 
XOR AL, 73 
CMPXCHG BL, DIL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RCX] 
AND DIL, 47 # instrumentation
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -37 # instrumentation
MOV DL, 94 
CMOVNLE AX, CX 
MOVZX EAX, BX 
NOP  
CMPXCHG RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RAX] 
XOR AL, -22 
OR AX, 23723 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], BX 
CMOVP RBX, RCX 
CMOVS RBX, RSI 
CMOVNB ECX, EBX 
XADD DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
