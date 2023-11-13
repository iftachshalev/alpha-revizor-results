.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 80 # instrumentation
SETNB AL 
TEST EBX, EBX 
TEST SIL, BL 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
BTC EDI, -83 
MOVZX EDI, DI 
AND SI, 35 
AND RSI, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RSI] 
SETNZ CL 
AND RDX, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RAX] 
BTC RSI, 81 
OR RSI, -23 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], 57 
XOR AL, -17 
XOR AL, BL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 11775 
BTR AX, AX 
AND SIL, -13 # instrumentation
CMOVNLE RBX, RCX 
CMOVNB RSI, RAX 
AND DX, DX 
CMOVNS DX, SI 
CMOVS DX, CX 
MOV AL, 119 
CMOVNP ESI, EBX 
XOR RBX, -107 
XOR RCX, -93 
AND RAX, 333009542 
CMOVP EDI, ESI 
SETO DL 
CMOVNZ DI, SI 
MOVSX ESI, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
