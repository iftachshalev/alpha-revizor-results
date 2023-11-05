.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 127 # instrumentation
CMOVNZ DI, CX 
SAHF  
STC  
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
XCHG CL, DL 
TEST EDX, 628059214 
JMP .bb_main.1 
.bb_main.1:
OR BX, 29 
SETNP BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RCX] 
CMOVNZ RDX, RCX 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], -1933588428 
XCHG SI, AX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], -48 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -11329 
CMOVBE RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RBX] 
MOV RBX, RBX 
CMOVNLE BX, DI 
CMPXCHG RSI, RSI 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -126 # instrumentation
CMOVZ RDX, RDX 
SETNO DL 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], AL 
CMC  
MOVSX RDI, AX 
CMOVZ RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], CL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RBX] 
AND SIL, 88 # instrumentation
CMOVNB EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RCX] 
OR AX, 0b1000000000000000 # instrumentation
BSR SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
