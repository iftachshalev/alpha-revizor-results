.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], -104 
LEA EDX, qword ptr [RDI + RBX] 
XOR DL, DL 
CMOVLE RSI, RSI 
SETBE SIL 
AND RAX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EDI 
TEST RAX, -740422432 
XCHG RDI, RCX 
BT ECX, EDX 
AND DIL, 112 # instrumentation
MOV BL, AL 
SETNZ CL 
CMOVL EDI, ECX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST CX, DI 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], -1289220254 
TEST EAX, EAX 
SETZ AL 
SETNBE CL 
TEST EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDX], 6 
AND DIL, 86 # instrumentation
CMOVNBE CX, BX 
SETNB DL 
SETL AL 
BT RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], BL 
OR AX, 0b1000000000000000 # instrumentation
BSF DI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RSI] 
XCHG ECX, EBX 
AND EAX, -35599636 
BTC DX, BX 
TEST DL, AL 
NOT DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
