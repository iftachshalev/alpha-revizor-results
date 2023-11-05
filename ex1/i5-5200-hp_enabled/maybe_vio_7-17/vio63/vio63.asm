.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -48 # instrumentation
SETLE CL 
XADD SI, BX 
AND EAX, -1535815084 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
MOVZX BX, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 73 
CMOVNBE RSI, RSI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RAX] 
CMOVBE BX, DX 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], -118 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
TEST AL, -74 
SETNO DL 
XOR DL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], BL 
CMPXCHG CL, BL # instrumentation
CMOVNP DI, SI 
CMOVL EBX, EDI 
LAHF  
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -52 # instrumentation
CMOVNP DX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RSI] 
XOR CL, CL 
AND RCX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RCX] 
CMOVLE RAX, RDI 
NOP  
CMOVBE RAX, RAX 
XADD CL, CL 
AND RDX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDX], 5 
AND RAX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RAX] 
BT RDX, RDI 
BTR RAX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
