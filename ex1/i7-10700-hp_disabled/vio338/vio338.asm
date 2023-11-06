.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RSI 
AND DIL, -108 # instrumentation
LEA SI, qword ptr [RAX + RDI + 47482] 
MOVZX EBX, AL 
CMOVL EBX, EDX 
OR CX, DI 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EDX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND CL, BL 
MOV ESI, 777881911 
MOVSX EBX, BL 
XCHG DI, AX 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], 28 
TEST DIL, CL 
TEST AX, -22095 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RAX], AX 
AND DIL, -35 # instrumentation
SETZ BL 
CWDE  
CMOVB RDI, RSI 
CMOVNL DX, DI 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -100 # instrumentation
CMOVNLE EDX, EDX 
TEST EDI, EBX 
MOVSX ESI, DI 
SETB BL 
MOV RAX, RDX 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTC RAX, RSI 
AND DIL, 114 # instrumentation
SETP DL 
AND AL, -108 
CMOVP RCX, RDX 
OR SI, SI 
CMOVNP ECX, ECX 
SETNS CL 
AND DIL, -17 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
