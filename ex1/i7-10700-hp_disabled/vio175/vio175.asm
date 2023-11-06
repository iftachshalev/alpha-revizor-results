.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
CMPXCHG AL, CL 
TEST SIL, -112 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
OR CL, 30 
SETBE DL 
BTS EDX, 104 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -78 # instrumentation
CMOVNO SI, AX 
OR CX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RBX] 
AND SIL, DIL 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RCX] 
OR RDX, -1 
OR RDX, RDI 
CMOVL ESI, EBX 
TEST AX, -20972 
AND DIL, 119 
CMOVNL DI, CX 
AND RBX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RBX] 
CMOVNS BX, CX 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTC RBX, RSI 
BSWAP RSI 
MOVSX BX, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 4 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RAX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
