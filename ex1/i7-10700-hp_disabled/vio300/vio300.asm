.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RCX] 
MOV EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], 68 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVSX DX, BL 
CDQ  
MOVSX RSI, DL 
BTR RCX, -36 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], 121 
XOR RDX, RCX 
OR AL, 106 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG RSI, RSI 
CMOVBE EBX, ESI 
SETB DL 
CMOVNB ECX, ECX 
CMOVB DI, DX 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], ESI 
MOV AX, -5137 
AND RBX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], DL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 701148997 
BT RSI, 66 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RAX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BT ESI, EDX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
OR RAX, -1619644685 
AND AL, -103 
CMOVBE SI, DI 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RSI], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
