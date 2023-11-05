.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
TEST EBX, 1815996105 
OR RDI, 75 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 1 # instrumentation
SETNO CL 
XOR AX, 2232 
TEST AL, 127 
XOR EBX, EDI 
CMOVZ AX, BX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RSI] 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDX] 
TEST CL, 75 
SETNL DL 
CMPXCHG EAX, EAX 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], DL 
CMOVL AX, DX 
CMOVNP BX, CX 
CMOVB RBX, RAX 
CMOVL SI, DI 
CMOVS RCX, RBX 
BTC EAX, 59 
AND SIL, -69 # instrumentation
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -58 # instrumentation
CMOVL SI, SI 
AND ESI, -8 
XCHG CX, AX 
SETP CL 
XOR RAX, 98 
CMOVNZ RSI, RDI 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RSI 
LEA RSI, qword ptr [RDX + RBX] 
AND AX, SI 
XADD EBX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
