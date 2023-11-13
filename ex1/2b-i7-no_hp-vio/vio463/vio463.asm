.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX ECX, DL 
CWD  
CMPXCHG CL, AL 
MOVSX RSI, SIL 
MOVZX RDX, BL 
CMPXCHG RCX, RBX 
MOV AL, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG CL, AL # instrumentation
CMOVB SI, word ptr [R14 + RDX] 
NOP  
LAHF  
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
AND DIL, 107 # instrumentation
XCHG RDX, RBX 
SETNZ BL 
SETL DL 
SETNL DL 
OR EDI, EAX 
CMOVNZ EDI, EAX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
NOT RBX 
OR SI, 0b1000000000000000 # instrumentation
BSF CX, SI 
TEST BX, -1755 
XADD EBX, EDI 
SETNP BL 
CMOVNBE EDI, ESI 
TEST ECX, -650303000 
NOT RDI 
MOVSX RAX, DX 
BT SI, 11 
CWD  
CMPXCHG CL, BL 
XOR BX, 121 
SETNBE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
