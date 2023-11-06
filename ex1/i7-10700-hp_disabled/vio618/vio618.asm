.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -40 # instrumentation
CMOVS RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RAX] 
SETNS BL 
AND RSI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RSI], 2 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], RDX 
XCHG RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], AL 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], 64 
MOV AL, CL 
CDQ  
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ESI 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -75 # instrumentation
MOV EDX, 2067066090 
XCHG DI, AX 
CMOVL SI, AX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 56 
OR EAX, 1303368141 
SETS DL 
BT EBX, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDX] 
OR EAX, -147075777 
JMP .bb_main.3 
.bb_main.3:
BTS EDI, -74 
BTC CX, AX 
AND SIL, -15 # instrumentation
XCHG ECX, EDI 
CMOVNL EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RDX] 
CMOVNL RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
CMOVS RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
