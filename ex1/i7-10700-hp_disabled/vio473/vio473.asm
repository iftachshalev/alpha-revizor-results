.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], 31879 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RSI] 
SETL CL 
XOR BL, 48 
BT RDX, -18 
CBW  
NOT DIL 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RCX 
CMOVS RBX, RBX 
AND DL, BL 
AND SIL, -109 
SETNBE AL 
XOR BX, AX 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDX] 
CMOVO RBX, RSI 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], 48 
AND RAX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RAX], 2 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDI] 
STD  
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], CX 
BTS RAX, -123 
AND SIL, -1 # instrumentation
SETNL AL 
SETLE DL 
JMP .bb_main.4 
.bb_main.4:
MOV DL, CL 
NOT BL 
AND SI, SI 
AND RBX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RBX] 
AND CL, DL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RSI] 
XOR DX, 73 
CMOVS EAX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
