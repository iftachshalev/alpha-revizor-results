.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RAX, RDI 
MOV AX, 23962 
OR BX, 0b1000000000000000 # instrumentation
BSR BX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RBX] 
BTR ESI, -11 
AND DIL, 9 # instrumentation
MOVSX RBX, DIL 
JO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -68 # instrumentation
SETBE AL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EAX 
AND SIL, -45 # instrumentation
SETBE SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RCX] 
CMOVNLE RCX, RBX 
XADD CL, CL 
OR RBX, -9 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 52 # instrumentation
SETNLE AL 
CMOVL RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
OR RCX, 84 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], AL 
JMP .bb_main.3 
.bb_main.3:
XOR AL, 123 
AND EBX, 76 
MOVSX BX, DIL 
BTR SI, 127 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], ESI 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVSX EAX, DL 
XADD CL, DL 
BTC EAX, 59 
AND RCX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RCX], 2 
BT DI, 63 
TEST DI, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RSI] 
CMOVNS RAX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
