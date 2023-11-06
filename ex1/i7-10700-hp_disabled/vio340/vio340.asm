.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RBX] 
CLD  
AND RSI, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RSI] 
BT ESI, -63 
BT EBX, -125 
AND BX, BX 
AND AL, -127 
SETNP DL 
SAHF  
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVSX RDX, DIL 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RBX 
CMOVNS EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RSI] 
SETNO CL 
CMOVL RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RDI 
TEST RDX, -1394217230 
AND RAX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RAX], 6 
XOR EDI, -48 
NOT SI 
AND EBX, ESI 
NOT DI 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], EDX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDI], AX 
CMOVNZ RDX, RSI 
SETNB CL 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
XOR BL, AL 
TEST DI, 16733 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
