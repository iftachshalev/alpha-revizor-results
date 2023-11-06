.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 78 # instrumentation
CMOVO EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RCX] 
SETNZ AL 
BTR AX, DX 
BTS EAX, ESI 
MOVZX EBX, DL 
LEA ECX, qword ptr [RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDX] 
MOVSX SI, AL 
AND AL, BL 
JZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BT qword ptr [R14 + RSI], RBX 
XOR DX, SI 
STD  
CMOVNS RSI, RDI 
CMOVNP RCX, RDX 
MOVSX RDI, CX 
JMP .bb_main.2 
.bb_main.2:
BTS DX, 29 
XADD RAX, RDX 
CMPXCHG AL, AL 
CBW  
MOV AL, -71 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
OR BL, 13 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -87 # instrumentation
SETB DL 
BTC DI, -110 
AND DIL, 104 # instrumentation
SETNS SIL 
CMOVNO DI, DI 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDI] 
AND DIL, -50 # instrumentation
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 115 # instrumentation
SETNLE DL 
BTC RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], DL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
