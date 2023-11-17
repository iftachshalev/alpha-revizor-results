.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 7 
BTS RAX, RBX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV CX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDX] 
CMOVB RDI, RCX 
XCHG AL, DL 
CBW  
CMOVLE ESI, ECX 
OR RSI, RAX 
MOVZX EDX, AX 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
STD  
BTC EBX, EDX 
TEST SIL, -115 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RCX] 
MOVSX ESI, BX 
AND BL, -115 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDI], CX 
NOT BL 
XOR AL, CL 
BTR EDX, ESI 
JMP .bb_main.4 
.bb_main.4:
TEST AL, -83 
SETNBE AL 
AND RDX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RDX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDI 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RCX 
AND DIL, -15 # instrumentation
CMOVP EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 8 
SETNO CL 
AND RDI, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RDI] 
XCHG DX, AX 
OR RAX, 1076187407 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
