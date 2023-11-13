.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RDX, RBX 
XOR CL, -115 
CMPXCHG DL, CL # instrumentation
CMOVBE RDI, RBX 
LAHF  
TEST EBX, -534567678 
AND RCX, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RCX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS DI, 43 
TEST DIL, DL 
CMPXCHG CX, AX 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], 110 
BSWAP RSI 
BTC SI, -37 
XOR BX, 112 
CBW  
SAHF  
MOVZX DX, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], ECX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -1106781306 
XCHG RAX, RAX 
CMPXCHG RDI, RSI 
BTC RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
XCHG BL, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDI] 
BTR RDI, 83 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RCX] 
MOVZX RAX, CL 
CMOVNZ RSI, RDX 
SETNS BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], SIL 
CMOVNL BX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
