.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RBX, RAX 
XOR DL, SIL 
XOR AL, 115 
SETS DL 
CMOVBE CX, DI 
SETNP BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], AX 
SETNS DL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -108 # instrumentation
MOVSX EDX, AL 
CWDE  
CMOVL EDI, EBX 
AND RBX, 8 
AND RBX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RBX] 
BTS RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RDX] 
BTC CX, BX 
AND RSI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RSI], 0 
AND RDX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDX] 
SETS CL 
CMOVNLE RDX, RDI 
JMP .bb_main.2 
.bb_main.2:
BT EAX, EBX 
AND DIL, 77 # instrumentation
SETNLE AL 
MOVZX RBX, BX 
AND RDI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDI] 
CMOVBE RCX, RCX 
CMOVNL EBX, EDI 
BTS RCX, 12 
AND DIL, 17 # instrumentation
SETNB CL 
CMOVNL RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], 88 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 3 
XADD EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
