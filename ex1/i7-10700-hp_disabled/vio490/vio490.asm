.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], 100 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], -21 
XCHG CX, CX 
MOV RDI, RSI 
SETNBE CL 
CMOVNO ESI, EDX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR EAX, ECX 
CDQ  
STC  
MOVZX RSI, BX 
CMOVZ RBX, RAX 
XADD CX, AX 
XCHG DL, DL 
AND RSI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RSI], 5 
AND SIL, 32 # instrumentation
CMOVO RAX, RAX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD DL, BL 
CMPXCHG RBX, RAX 
CMOVL EDX, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDI] 
CMOVBE ECX, EDI 
XOR DI, -37 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 39 # instrumentation
CMOVNS EDX, ECX 
BTC RSI, 96 
SETNZ AL 
OR CX, SI 
JMP .bb_main.4 
.bb_main.4:
OR DX, 0b1000000000000000 # instrumentation
BSF AX, DX 
AND SIL, -128 # instrumentation
MOV RAX, RDX 
CMOVNS RDI, RCX 
LEA SI, qword ptr [RSI + RDX + 38918] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], EDI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
