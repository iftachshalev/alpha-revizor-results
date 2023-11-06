.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -84 # instrumentation
CMOVNLE ECX, ESI 
CMOVL SI, SI 
OR RAX, 250041025 
SETO DL 
CMOVBE EBX, EDX 
OR AX, -25371 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RAX] 
CMOVNS ECX, EBX 
XOR EAX, 364151628 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, -94 # instrumentation
CMOVNLE AX, SI 
XOR DI, 18 
CLD  
BTS DX, DI 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], BL 
BSWAP RAX 
MOVSX RDI, BL 
JMP .bb_main.2 
.bb_main.2:
MOVZX BX, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
BTR RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDI], 3 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTS qword ptr [R14 + RAX], RDX 
XCHG ECX, EBX 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -8 # instrumentation
STD  
SETP DIL 
SETLE DL 
XOR DX, -120 
CMOVS RDI, RSI 
XCHG SI, SI 
CMOVNZ RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], ECX 
CMOVNP DX, AX 
BT RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
