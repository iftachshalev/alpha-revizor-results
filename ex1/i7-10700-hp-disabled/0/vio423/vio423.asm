.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 107 # instrumentation
CMOVNO EAX, EBX 
AND DIL, 107 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDI] 
CMOVNB SI, AX 
AND DIL, 119 
AND RBX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RBX] 
CMPXCHG DI, BX 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -105 # instrumentation
CMOVNB RDI, RDX 
SETP BL 
XOR RAX, -656199018 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDX 
AND DIL, -105 # instrumentation
CMOVB EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], ECX 
OR DI, CX 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -94 # instrumentation
MOVSX RBX, DI 
SETNS CL 
BTC EAX, EBX 
AND SIL, 21 # instrumentation
CMOVL EDX, EAX 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], 123 
BTS EBX, 59 
CMOVNB EAX, EBX 
CMOVBE RSI, RBX 
TEST EDX, EDX 
CMOVNL RBX, RCX 
JMP .bb_main.4 
.bb_main.4:
AND SIL, -76 # instrumentation
CMOVNS EDX, EDX 
SETNP CL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RCX] 
TEST AL, CL 
AND RSI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RSI], 6 
MOV EAX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
