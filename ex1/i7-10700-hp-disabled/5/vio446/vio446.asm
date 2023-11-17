.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT CL 
MOV EAX, 1851859094 
MOV EDI, 2065989062 
AND DIL, 78 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], 44 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], 5 
NOP  
MOVSX RBX, DL 
MOVSX DI, BL 
LOOPE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XOR EDI, EBX 
CMPXCHG CX, SI 
XCHG ESI, EAX 
CMOVNZ EDX, ESI 
CMOVNL RDI, RBX 
LEA EBX, qword ptr [RDX + RBX + 17579] 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RAX] 
TEST BX, CX 
LEA DX, qword ptr [RDX + RCX + 45430] 
TEST DIL, 61 
MOV RDI, RDX 
NOT RDI 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -66 # instrumentation
SETNZ AL 
OR DL, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
SETNZ AL 
CMOVNBE RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], -76 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XCHG CL, AL 
AND RSI, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 4 
AND DIL, -75 # instrumentation
SETNO CL 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
