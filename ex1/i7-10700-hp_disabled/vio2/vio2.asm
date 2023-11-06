.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CBW  
BTS DI, SI 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RSI 
BTS EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG CL, DL # instrumentation
SETBE byte ptr [R14 + RDX] 
LAHF  
BTS EBX, 15 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -41 # instrumentation
SETNLE CL 
OR RDX, RCX 
CMOVNP RSI, RBX 
TEST EAX, 2103655230 
CMPXCHG BL, CL 
TEST DIL, 49 
AND DIL, 100 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], CX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD AL, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDI] 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 3 
AND DIL, 55 # instrumentation
SETNL CL 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR SI, AX 
XOR RCX, 99 
CLC  
CMOVNS ESI, ESI 
SETL AL 
SETNO DIL 
BSWAP RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
