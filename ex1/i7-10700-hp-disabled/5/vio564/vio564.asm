.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, 54 
CMOVL SI, BX 
AND RDX, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
OR EAX, -9 
CMOVNZ EAX, ESI 
CMOVNS RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RBX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RBX], 6 
BTS EAX, 60 
AND SIL, -79 # instrumentation
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SI, 30 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RAX] 
BT ECX, 35 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], SIL 
NOT AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 5 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], EBX 
BSWAP RDI 
AND AX, -747 
MOV SIL, -119 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RAX] 
BTR RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], -30 
MOVSX EDX, BL 
CMOVNS RAX, RSI 
MOV BX, -12095 
CMOVB ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
