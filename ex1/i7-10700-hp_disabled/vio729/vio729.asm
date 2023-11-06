.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RAX] 
CMOVNL EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], 6 
XOR BL, 124 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], 7 
AND SIL, 119 # instrumentation
CMOVNLE RCX, RDX 
CMOVNLE EAX, ECX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR DIL, 30 
CMOVP DX, SI 
XOR RAX, -617936084 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RDI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDI], RAX 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], 60 
MOVSX CX, DL 
AND SIL, CL 
AND RDX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDX], 3 
MOVZX EDI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDI] 
CMOVNLE AX, CX 
STD  
XCHG CX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RDI] 
XOR RAX, -733673076 
AND RSI, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RSI] 
AND EBX, ESI 
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
BT EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
