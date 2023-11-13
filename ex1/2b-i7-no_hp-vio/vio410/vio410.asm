.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
AND SIL, 51 # instrumentation
SETB CL 
SETZ CL 
OR AX, 69 
STC  
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
TEST DI, -18188 
TEST BL, CL 
AND RBX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTC word ptr [R14 + RBX], CX 
CMOVBE RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], BL 
XOR CL, 61 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
BT EDI, EBX 
AND SIL, -65 # instrumentation
CBW  
SETNO CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RSI] 
CMOVLE CX, SI 
XADD BX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDI] 
CWD  
BT AX, -104 
XCHG BX, AX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RCX] 
AND DIL, 6 # instrumentation
CMOVL AX, BX 
LEA DI, qword ptr [RBX + RDI + 27172] 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
BTR DX, 69 
XCHG BL, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
