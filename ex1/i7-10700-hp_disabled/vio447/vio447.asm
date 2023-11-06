.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, 28379 
AND RSI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RSI], SI 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -1958506855 
AND EAX, 1397987405 
BTC CX, -95 
CLD  
XOR DI, -100 
OR AX, -6600 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RSI 
BTC EBX, EDI 
AND SIL, -65 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR AL, -124 
CMOVNS RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1315501554 
JMP .bb_main.2 
.bb_main.2:
TEST AX, 2183 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
AND DIL, 112 # instrumentation
MOVZX BX, AL 
CMOVNO EAX, ESI 
SETO SIL 
AND AX, 24697 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
AND DIL, -113 # instrumentation
CMOVL RDI, RSI 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR SIL, -39 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], DX 
CMOVP EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
CMOVNP BX, DX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RAX] 
XCHG RAX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
