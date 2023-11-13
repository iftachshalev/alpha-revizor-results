.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -75 # instrumentation
SETL SIL 
MOVSX EBX, CL 
XCHG EAX, EAX 
CMOVS BX, AX 
BTC ECX, EBX 
BT EAX, ECX 
XOR AL, -24 
SETNB DL 
SETNZ BL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EAX, -211877410 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], -44 
CWDE  
BTR RCX, -76 
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 7 
OR AX, -5158 
BTS DX, -58 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], DL 
OR SIL, 110 
AND RDI, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDI] 
OR ECX, -88 
AND RDI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDI], BX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDX] 
BTC ECX, -116 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], EDX 
XADD EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], AX 
SETS BL 
BTS RAX, -27 
CMOVB EDI, EDI 
AND SIL, SIL 
SETNS BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
