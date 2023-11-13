.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND BL, CL 
CMOVLE EAX, EDX 
SETNLE AL 
CMOVNLE RCX, RAX 
SETL BL 
CMOVS RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RCX], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], DL 
XADD DX, AX 
AND RSI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RSI] 
TEST DIL, -121 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG DL, DL # instrumentation
CMOVL ESI, dword ptr [R14 + RDI] 
XCHG SI, DX 
LAHF  
BT ESI, 71 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], 2 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -59 # instrumentation
MOV EDI, -2137280014 
SETNS DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RSI], 2 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RBX] 
MOV RDX, RDX 
XOR RDI, 21 
TEST CL, -107 
CMC  
CMOVL SI, SI 
CMOVS DX, CX 
BSWAP RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RCX] 
NOT RDX 
CMOVNZ EDI, ECX 
OR RCX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
