.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -20 # instrumentation
XCHG DI, BX 
SETNB CL 
BTS AX, 79 
XADD DIL, SIL 
NOT CX 
TEST RSI, RBX 
MOV CX, -17642 
SETNL BL 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RCX], RSI 
SETS BL 
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
CMOVBE EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
OR EAX, 48 
XCHG BL, AL 
CMOVLE RAX, RDI 
SETNB DIL 
XOR AX, 104 
CLD  
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RCX 
MOV CL, CL 
AND RSI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RSI], 2 
AND SIL, 25 # instrumentation
CMOVNLE RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTS qword ptr [R14 + RDX], RDI 
CMPXCHG DIL, BL 
CMOVNB RBX, RCX 
BSWAP RDX 
XADD RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 4 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
