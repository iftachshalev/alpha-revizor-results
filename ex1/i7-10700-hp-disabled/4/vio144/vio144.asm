.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 35 # instrumentation
CMOVNS RDX, RSI 
OR RAX, -1025687908 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], 3 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], ESI 
TEST AX, 25303 
BTC SI, 65 
AND DIL, 88 # instrumentation
CMOVLE ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], AL 
BSWAP RSI 
JZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], SI 
XOR DX, DX 
AND CL, BL 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
MOVSX EDX, AX 
CWD  
JMP .bb_main.2 
.bb_main.2:
AND DL, AL 
CMPXCHG EDX, ESI 
CMOVP RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], 92 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDX] 
OR AX, -11346 
NOT RDX 
OR AL, -18 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], 118 
CMOVO EDI, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDX] 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTS qword ptr [R14 + RAX], RSI 
XCHG ESI, EAX 
XADD CL, DL 
CMOVO EDI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
