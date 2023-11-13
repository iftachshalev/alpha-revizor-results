.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RBX], 5 
MOV AX, 22912 
AND AX, 12402 
BT SI, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDI] 
OR RAX, -2061913316 
SETB AL 
CMOVP EDX, EBX 
BTS EAX, EDI 
MOV RBX, -8963607101606403378 
AND RAX, 60 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTC dword ptr [R14 + RDX], EDX 
AND RDX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RDX], BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], EDX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -8 # instrumentation
MOVZX RDI, CL 
SETL BL 
TEST CL, 92 
SETLE CL 
CMOVBE RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
BTR RAX, -86 
XCHG EBX, EAX 
CMOVNZ BX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDI] 
XOR RBX, 3 
XCHG RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], ECX 
SETNB DL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
OR DX, BX 
CWD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
