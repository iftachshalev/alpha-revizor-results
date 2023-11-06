.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 108 # instrumentation
CMOVNO SI, SI 
TEST BX, -8812 
XOR AX, -11706 
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
AND RAX, -1358329334 
SETO BL 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
NOT DL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 104 # instrumentation
SETNP BL 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], DIL 
MOVZX SI, SIL 
TEST EAX, 2067088440 
AND RDX, RAX 
CMOVNLE RBX, RBX 
TEST AL, 12 
XOR DL, 83 
CMOVNBE EBX, ESI 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 61 # instrumentation
CMOVNL AX, BX 
AND AX, SI 
AND RDX, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RDX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RCX 
AND SIL, 70 # instrumentation
CMOVNB RBX, RCX 
MOVZX ESI, SIL 
XADD ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], -46 
MOVSX EAX, BL 
JMP .bb_main.3 
.bb_main.3:
OR DX, 0b1000000000000000 # instrumentation
BSR DI, DX 
TEST RSI, RBX 
OR RAX, -867011883 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
CLC  
XOR DI, -119 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
