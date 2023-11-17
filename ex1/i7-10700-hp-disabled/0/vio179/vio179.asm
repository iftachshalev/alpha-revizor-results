.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 124 # instrumentation
SETNB CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], DI 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
CMOVNL RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDX] 
STD  
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RCX] 
XCHG DL, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RSI] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RBX 
AND SIL, -30 # instrumentation
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 67 # instrumentation
SETB BL 
AND AX, 101 
XCHG SI, CX 
MOVZX DI, DL 
CMPXCHG BL, CL 
XADD DL, BL 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDI] 
CMOVBE DX, DI 
SETNB SIL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RBX] 
SETNP CL 
AND CX, 80 
MOVZX EDX, AL 
BTR EDI, EBX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 3 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], RDI 
AND ESI, 58 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
