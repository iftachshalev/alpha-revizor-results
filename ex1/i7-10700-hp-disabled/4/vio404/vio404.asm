.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 121 # instrumentation
SETNLE DL 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ECX 
CMC  
AND EAX, 2052170200 
CDQ  
CMOVL EDI, EAX 
MOVSX RDX, DI 
JMP .bb_main.1 
.bb_main.1:
AND EAX, 460165886 
MOV DL, 32 
CMPXCHG EDX, EDI 
CWDE  
XCHG ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RSI] 
MOV EDI, -382453142 
BTR SI, 98 
MOVSX ESI, BL 
OR DI, CX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -64 # instrumentation
SETS DL 
CBW  
TEST RDX, RCX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
LEA CX, qword ptr [RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RAX] 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, 37 # instrumentation
CMOVNB EDI, ESI 
CMPXCHG SI, DX 
XOR BX, SI 
SETZ DL 
CMOVNL RSI, RDX 
MOV BX, CX 
BTC RDI, -102 
XADD ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
