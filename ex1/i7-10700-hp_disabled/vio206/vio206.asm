.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST DIL, -50 
XADD DL, DL 
MOVZX ESI, AX 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
AND SIL, -51 # instrumentation
XCHG RSI, RAX 
SETNBE CL 
MOV AL, AL 
CMOVNZ EDX, EDX 
NOT BL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDX] 
AND DIL, 67 # instrumentation
SETO BL 
MOVZX RSI, SI 
TEST AX, DX 
CMC  
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC EDI, 5 
AND DIL, 37 # instrumentation
CMOVNLE EDX, ECX 
SETLE DL 
BTS DX, 9 
XCHG EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RCX] 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 52 # instrumentation
XCHG CL, CL 
SETB CL 
AND RAX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BT dword ptr [R14 + RAX], ECX 
TEST AX, 32615 
SAHF  
BTR SI, SI 
AND SIL, -71 # instrumentation
CMOVP RDI, RBX 
AND CL, -12 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RAX] 
TEST ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
BTS ECX, -72 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
