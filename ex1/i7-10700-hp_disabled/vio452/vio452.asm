.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, RBX 
MOV CL, BL 
CMOVNZ RDI, RDI 
MOVZX EAX, BL 
XOR RDI, 110 
SETO BL 
AND ESI, 29 
SETNLE CL 
MOVSX SI, BL 
MOVZX EAX, AL 
MOV SI, -21304 
SETO CL 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR CX, 0b1000000000000000 # instrumentation
BSF AX, CX 
AND CL, -124 
CMOVNL RAX, RAX 
TEST BL, -33 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], 78 
CMOVL EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RBX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 25 # instrumentation
CMOVNZ CX, BX 
SETNLE BL 
CMPXCHG AL, DIL 
BTR DX, 45 
LEA EDX, qword ptr [RCX + RSI + 21120] 
CMPXCHG RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], 69 
STD  
SAHF  
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], DL 
OR DL, BL 
XOR BX, 97 
TEST RAX, 1143246494 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
