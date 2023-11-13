.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], 0 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 6 
MOVZX AX, SIL 
MOVZX EDI, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], 1 
CMPXCHG DI, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], 1 
AND SIL, -15 # instrumentation
CMOVP EBX, EDX 
XOR BL, 120 
AND RAX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RAX] 
OR EAX, -1366389150 
MOV DI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], DIL 
CMOVNL DI, AX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], 97 
BSWAP RDX 
AND RAX, -1413052676 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], 87 
MOVSX EDI, DI 
CMOVL EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RCX] 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTR dword ptr [R14 + RSI], EAX 
XOR AX, -17406 
SETB CL 
SETBE DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDI] 
CWD  
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
