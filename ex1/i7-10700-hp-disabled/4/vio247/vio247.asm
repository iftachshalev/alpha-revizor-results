.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND CL, -12 
AND RSI, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RSI] 
CMPXCHG AL, SIL 
XOR EDX, -10 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], -28393 
OR AX, 23132 
XOR RDX, RDX 
XOR AX, 14789 
CMOVZ RDI, RSI 
XADD RSI, RAX 
LEA RAX, qword ptr [RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RBX] 
OR AL, 68 
OR ESI, -103 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -8 # instrumentation
CMOVS SI, BX 
MOVZX RSI, SIL 
AND EAX, 93 
CMPXCHG AL, BL 
CMOVNO DX, SI 
XOR RAX, 32194690 
SETNP AL 
AND EDX, 51 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDI] 
SETNS CL 
OR RBX, RAX 
SAHF  
XOR AL, -49 
SETBE CL 
SETB CL 
MOV CL, 7 
BT SI, 38 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
