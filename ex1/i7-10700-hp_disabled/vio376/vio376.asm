.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 79 # instrumentation
CMOVBE CX, SI 
MOVSX ESI, SI 
CMOVNL RAX, RDX 
AND RAX, 664292901 
TEST CX, DX 
MOV RCX, -948603840349154781 
XADD ESI, ECX 
CMOVS AX, DX 
CMOVZ RAX, RAX 
MOVZX RDI, DI 
SETNS SIL 
SETBE AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], -113 
SETO AL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XADD BL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDI] 
XOR CL, 38 
AND RCX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RCX] 
MOVZX EDX, CL 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
TEST AL, 28 
XOR RDX, RCX 
AND RCX, RAX 
NOT DL 
SETP BL 
BTC AX, -61 
MOVSX EBX, CL 
MOV EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
XOR ESI, 64 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RDX 
MOVZX EDI, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
