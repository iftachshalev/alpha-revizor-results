.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP ESI 
BTS EBX, EDI 
CMOVNB ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RDX 
CMOVP RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], CL 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND DIL, -102 # instrumentation
SETNL CL 
OR AL, CL 
BTS CX, 126 
AND RBX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTS word ptr [R14 + RBX], AX 
SETBE CL 
CWD  
CMPXCHG RAX, RBX 
BTS RSI, RBX 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -12 # instrumentation
MOVZX RSI, SI 
MOV AX, CX 
SETS BL 
OR RAX, -812445769 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -125 # instrumentation
MOV AL, -124 
SETNP AL 
XOR DIL, 60 
CMOVNP ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDI] 
SETNO CL 
XOR SI, DI 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RCX] 
OR AL, 103 
XADD ESI, EBX 
LEA AX, qword ptr [RDX + RBX + 59730] 
CMOVNBE EDI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
