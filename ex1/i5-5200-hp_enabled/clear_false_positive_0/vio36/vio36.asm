.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CL, 48 
CMPXCHG BL, AL 
MOV AL, CL 
SETNP AL 
MOV CX, SI 
TEST BL, AL 
XOR EAX, EBX 
BTR RBX, -84 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RBX] 
CMOVNO RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RDX] 
CLD  
XCHG BX, BX 
TEST AL, 8 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RAX] 
MOVZX RDX, AX 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -28 # instrumentation
CMOVBE RCX, RSI 
CMOVO RCX, RBX 
CMOVB EBX, EDI 
BTR RCX, 31 
AND DIL, 65 # instrumentation
CMOVO SI, SI 
MOVZX EDX, BL 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -19 # instrumentation
SETP CL 
AND RAX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RAX] 
CMOVLE RBX, RBX 
NOT ESI 
SETNL BL 
CMOVO ECX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDX] 
SETP DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
