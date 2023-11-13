.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST SIL, -7 
CMOVBE EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTC qword ptr [R14 + RBX], RCX 
CDQ  
OR RCX, RBX 
SETNB DIL 
CMOVNB ECX, EDI 
OR ECX, EDI 
SETS CL 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDX 
AND RCX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RCX], 1 
XADD AL, CL 
OR RDX, 104 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -95 # instrumentation
CMOVS RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], RDI 
SETBE DL 
XADD DL, DL 
XCHG RDX, RBX 
SETO CL 
AND RSI, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RSI] 
MOV RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDI] 
XOR EDX, -11 
BTS EDX, EDI 
MOVSX DX, BL 
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
NOT AL 
AND RSI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RSI], BX 
AND DIL, 110 # instrumentation
SETNS DL 
CMOVNP RDI, RDI 
CMOVNL DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
