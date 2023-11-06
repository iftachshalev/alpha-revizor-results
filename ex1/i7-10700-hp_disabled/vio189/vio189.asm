.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -83 # instrumentation
SETZ AL 
BTC RDX, -74 
AND RDI, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RDI] 
CMOVNP DX, CX 
SETO DL 
MOV BL, BL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], 35 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], 76 
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
CMPXCHG AX, BX 
BTS DI, 122 
AND DIL, 9 # instrumentation
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -58 # instrumentation
SETNO CL 
OR CL, CL 
AND AL, 77 
TEST CL, CL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], EDX 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
CMOVB EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RSI], AX 
BTC RDI, RSI 
CMOVB RDX, RDX 
AND AL, -107 
OR CX, 0b1000000000000000 # instrumentation
BSF DX, CX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDI] 
CMOVP ECX, EDI 
XOR RSI, -30 
CMOVNB BX, SI 
CMOVL EDX, EAX 
SETNO BL 
CMOVLE DI, CX 
CMOVNLE RCX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
