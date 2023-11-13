.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA SI, qword ptr [RCX + RAX + 60174] 
BTS RCX, 74 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
XCHG RBX, RAX 
OR RCX, 122 
NOP  
MOVZX AX, CL 
SETL AL 
BTR RBX, 48 
AND DIL, 49 # instrumentation
SETO DL 
XOR AX, -30841 
XOR RSI, RCX 
CMOVL EBX, EDI 
TEST ESI, 2114273548 
CMOVNP BX, CX 
SETNZ SIL 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], BL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
CMOVB EAX, EAX 
OR AL, -118 
CMPXCHG CL, CL 
TEST AX, -26790 
CMOVP RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RCX], CX 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RDX 
CMOVNLE EDX, ECX 
CMOVNZ RAX, RSI 
TEST EDI, EBX 
BT RDX, -115 
AND DIL, 82 # instrumentation
SETP CL 
TEST AL, 30 
OR EAX, -1182812119 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
