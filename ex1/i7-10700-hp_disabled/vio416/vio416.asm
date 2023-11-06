.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 115 # instrumentation
SETNBE AL 
TEST RAX, -1087876199 
OR SI, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RSI] 
OR RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RAX] 
CMOVP EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RCX], DX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 71 # instrumentation
BTC SI, CX 
CMOVNZ RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 50 
SETNBE AL 
SETNB AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], CL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 16 # instrumentation
SETB AL 
SETB AL 
XOR SIL, SIL 
CMOVNL BX, DX 
CMOVNS RDX, RDI 
AND AL, 48 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], AL 
MOV SIL, CL 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RCX 
BT RAX, RSI 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -14 # instrumentation
CMOVBE RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
SETNS DIL 
SAHF  
CMOVNZ BX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
