.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], ECX 
CMOVBE RAX, RBX 
OR EDI, EDI 
AND EDI, ECX 
CMOVNL DX, DI 
XADD DL, BL 
SETNL DL 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND SIL, 5 # instrumentation
CMOVS DX, BX 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -7 # instrumentation
SETNZ BL 
SETNB DIL 
SETNBE AL 
CMPXCHG DX, AX 
CMOVNLE RDX, RAX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RSI 
AND SIL, -77 # instrumentation
CMOVB ECX, EBX 
CMOVNO DX, AX 
BT ECX, -84 
AND RCX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RCX], 1 
AND RCX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RCX] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND AX, 1258 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], EDX 
TEST EAX, EDI 
AND DX, 7 
OR RAX, -635722826 
SETO CL 
MOV RDX, -7521590946660653814 
JMP .bb_main.4 
.bb_main.4:
MOV CX, SI 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], 113 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -1880918496 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
