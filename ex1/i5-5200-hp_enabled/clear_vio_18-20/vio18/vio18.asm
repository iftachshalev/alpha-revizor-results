.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT EDI, ESI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDI 
BTC RAX, 24 
NOT EDX 
SETB CL 
BTS CX, -12 
BTR ECX, -66 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 120 # instrumentation
CMOVS CX, CX 
AND AL, -6 
BT BX, 96 
AND DIL, 108 # instrumentation
CMOVNS SI, CX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR DL, SIL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], BX 
AND CL, DL 
AND RSI, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RSI] 
CMOVP BX, SI 
BTC RDX, RSI 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 108 # instrumentation
CMOVNB RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 66 
SETB BL 
BSWAP RBX 
XOR AL, 98 
CMOVO ESI, EBX 
JMP .bb_main.4 
.bb_main.4:
BTS RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], BX 
AND RDX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RSI] 
XOR AL, 119 
MOVSX DI, AL 
AND RDI, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RDI] 
SETNP DL 
NOT AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
