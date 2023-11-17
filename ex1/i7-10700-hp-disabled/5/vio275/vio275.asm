.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, AL 
CMOVL RBX, RDX 
CMOVNZ RDX, RCX 
CMOVS EDI, ECX 
OR AL, 114 
BTC EDX, ESI 
AND SIL, -83 # instrumentation
CMOVB DX, CX 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND SIL, -28 # instrumentation
CMOVP DX, BX 
BTS RAX, -12 
SETNZ DIL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 81 # instrumentation
SETL AL 
OR CX, BX 
SETNS BL 
CMOVNZ RDI, RDX 
MOVSX EDI, BX 
CMOVNBE BX, SI 
SETS AL 
JMP .bb_main.3 
.bb_main.3:
OR BX, 0b1000000000000000 # instrumentation
BSF DI, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RSI] 
CMOVNO SI, SI 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -103 # instrumentation
CMOVNO EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RCX] 
BTC RCX, RDX 
BTS SI, 37 
XOR CX, 117 
NOP  
CMOVNS RDX, RBX 
NOT BL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
MOVZX AX, SIL 
AND RAX, -851433153 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], 0 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
