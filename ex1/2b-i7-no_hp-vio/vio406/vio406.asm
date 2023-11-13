.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AL, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], SI 
CLD  
XOR AL, -56 
CMOVS SI, BX 
OR EAX, -220425948 
CMPXCHG CL, BL # instrumentation
LAHF  
CMC  
AND RSI, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RSI] 
CMOVL SI, BX 
SETO BL 
CMOVNS DI, CX 
XOR CL, DIL 
SETNBE DIL 
CMOVZ EBX, ECX 
MOV RSI, 6903323052975961754 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV SIL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RSI 
SETNS AL 
NOT AL 
BT SI, DI 
AND DIL, 80 # instrumentation
SETNS CL 
XOR DIL, -7 
CMOVBE RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RDX] 
AND AX, -18687 
OR AL, 67 
TEST RSI, 1076242263 
OR RCX, -54 
CMOVNS RCX, RSI 
XADD RDI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
