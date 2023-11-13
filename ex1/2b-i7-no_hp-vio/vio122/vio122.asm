.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
AND DI, -81 
BTR AX, -6 
CMPXCHG RAX, RDI 
MOVZX RBX, DX 
NOP  
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDX] 
XCHG ECX, EBX 
BT CX, -2 
AND DIL, 78 # instrumentation
CMOVNL ECX, ESI 
SETLE AL 
MOV EDX, ESI 
MOVSX DI, CL 
XCHG AL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], 0 
CMOVNB SI, BX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 10 # instrumentation
SETNBE AL 
CMOVL EAX, EDX 
OR EAX, -1452628734 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RDX] 
MOVSX SI, AL 
AND RDX, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RDX] 
XOR DX, CX 
MOVZX SI, DL 
MOVZX CX, CL 
SETNZ CL 
CMOVLE RSI, RSI 
TEST DL, DL 
XADD RAX, RDI 
MOV RBX, RBX 
XCHG CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
