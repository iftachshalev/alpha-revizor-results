.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, 523634275 
CMOVLE ESI, EBX 
XCHG EBX, EBX 
OR DL, CL 
CBW  
BTC AX, 41 
MOV EAX, ESI 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RDX], 2 
AND DIL, -78 # instrumentation
CWD  
CMOVNP EBX, EDI 
XOR AL, 67 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDX] 
CMOVNS RAX, RDX 
SETO DL 
CMOVZ EAX, EDI 
JMP .bb_main.2 
.bb_main.2:
BTR EDI, EBX 
BTR EDI, 91 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -222481504 
NOT EDI 
SETP BL 
CMOVO RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
XOR RAX, 2038364268 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], CL 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, 53 # instrumentation
SETNL BL 
SETNO CL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EAX 
AND SIL, 72 # instrumentation
MOV CL, 52 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -78 # instrumentation
SETNL AL 
CMOVLE EAX, ECX 
MOV RDI, RSI 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
