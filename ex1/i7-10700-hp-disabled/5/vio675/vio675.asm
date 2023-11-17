.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], 89 
BSWAP RDI 
AND AL, 66 
CMOVZ EDI, EAX 
NOT CL 
OR RAX, 94 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RSI] 
CMOVNS EDI, EDI 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -22 # instrumentation
MOVSX EDX, CL 
BSWAP EDX 
SETNLE CL 
AND RCX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RCX] 
MOV RDX, RBX 
CMPXCHG DI, DI 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], AX 
TEST AL, -60 
XOR RCX, 23 
BTC RSI, -7 
AND DIL, -7 # instrumentation
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR BL, AL 
AND RBX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RBX] 
XCHG AL, DL 
CMOVNB EDX, EDX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDX] 
MOVSX RDX, CL 
TEST BX, 6498 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], -22 
TEST BL, AL 
CMOVNO AX, SI 
NOT RSI 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
