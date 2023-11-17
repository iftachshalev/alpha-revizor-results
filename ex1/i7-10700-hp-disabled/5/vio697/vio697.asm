.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -99 # instrumentation
MOV AL, -64 
SETO AL 
MOV DL, 103 
CMOVNLE EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RAX] 
SETS AL 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -63 # instrumentation
BT RAX, 110 
CBW  
SETZ BL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RCX] 
XADD ESI, EDX 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RSI] 
OR CL, -110 
CMOVS CX, DX 
SETNB BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], 40 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 80 
CMOVNB EAX, EDI 
CMOVNZ RAX, RDX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST DIL, -96 
OR RAX, 1386282431 
BTS RAX, 17 
AND RBX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RBX], 0 
AND SIL, -60 # instrumentation
SETNP BL 
OR EAX, -1872309649 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RSI] 
CMOVNB RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDI] 
MOV RAX, -4892902253024557811 
CMOVZ EBX, EDI 
TEST CL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
