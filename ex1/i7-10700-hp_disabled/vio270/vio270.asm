.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RCX], AX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -101 # instrumentation
XCHG BL, DL 
SETB DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -105 
XOR DX, 115 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BT dword ptr [R14 + RCX], EAX 
TEST RAX, RCX 
CMOVS DX, DI 
SETB CL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EBX 
AND CX, -119 
BT EDX, ECX 
AND DIL, -81 # instrumentation
CMOVLE EBX, ESI 
BT EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], -30 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], CL 
CMOVL RCX, RSI 
CMOVS RCX, RAX 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RSI] 
CWD  
CMOVNBE ESI, EDX 
XADD BL, AL 
XOR RAX, 89 
XOR RBX, RSI 
OR AL, 29 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], DIL 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BTC DX, -98 
SETB DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDX] 
CMOVO AX, SI 
BTR RAX, -15 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
