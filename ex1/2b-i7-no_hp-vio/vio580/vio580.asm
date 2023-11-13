.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, RSI 
AND RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
OR RDX, RDI 
SETNS BL 
CMPXCHG RDX, RDI 
SETLE DIL 
SETNLE AL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], ESI 
TEST SI, 6431 
CMOVZ RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RAX] 
BTR ESI, EDX 
MOVZX EDX, BL 
XADD AL, CL 
BTS SI, -61 
AND RAX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTC word ptr [R14 + RAX], AX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 47 # instrumentation
SETZ DL 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], -71 
SETB SIL 
MOVSX EDI, AL 
LEA RDX, qword ptr [RBX + RSI] 
BSWAP RAX 
AND AL, 88 
CDQ  
CMOVLE DI, BX 
BTC SI, DI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDI] 
AND SIL, 31 # instrumentation
CMOVNL RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDI] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RAX 
AND DIL, 68 # instrumentation
SETS DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
