.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EAX, AL 
AND ESI, EDX 
XADD BL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], -79 
AND RDX, -43 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], 2 
AND SIL, -97 # instrumentation
CMOVNL RDI, RDX 
CMPXCHG BL, CL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], AL 
AND DL, BL 
AND EDX, EAX 
AND AL, 34 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], -123 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], EDI 
BTS DX, -44 
AND AX, -19620 
XOR EAX, -1753113703 
TEST EDI, ESI 
BSWAP RDI 
AND CL, -76 
OR DX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDI], RDX 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDX] 
NOT AL 
CMOVL RSI, RAX 
CMOVS ESI, ESI 
SETLE CL 
BT RSI, 112 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
