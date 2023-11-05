.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 87 
SETNBE SIL 
XOR EDI, -47 
CMOVB BX, AX 
SETNL BL 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], DL 
MOVZX RAX, DX 
BSWAP RSI 
CMOVNO RBX, RCX 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], SIL 
CMOVS RDX, RSI 
SETNL AL 
SETNZ DL 
MOV AL, -29 
MOV RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EAX 
TEST ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], ESI 
CMOVNS EDX, ESI 
SETNBE CL 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -5 # instrumentation
CMOVNP RBX, RDI 
SETBE AL 
SETNZ BL 
XOR BL, BL 
SAHF  
AND RBX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RBX] 
BTR SI, DX 
AND RAX, 990348927 
STD  
AND DIL, -105 
BT EAX, -87 
MOV EAX, -970637676 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
