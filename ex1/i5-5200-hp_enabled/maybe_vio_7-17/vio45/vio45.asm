.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -66 # instrumentation
CMOVS CX, BX 
XOR DL, 95 
AND AL, 105 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
XOR RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], EDI 
AND SIL, 26 # instrumentation
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR DX, 0b1000000000000000 # instrumentation
BSF AX, DX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
AND DIL, 108 # instrumentation
CMOVS ESI, EDI 
CMOVNS RCX, RDI 
OR EDI, ECX 
BTC EDX, -58 
BT RCX, 127 
AND DIL, 85 # instrumentation
CMOVNS RDX, RBX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDX], 2 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BTS EDI, EAX 
XADD SI, SI 
XCHG RSI, RAX 
CMOVL CX, DX 
AND RDI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDI], BX 
CMOVP RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 4 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 11 # instrumentation
CMOVS RDX, RBX 
XOR EAX, -47896571 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDI] 
TEST EAX, -602357078 
SETB BL 
MOVSX ESI, AL 
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RDX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
