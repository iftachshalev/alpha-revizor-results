.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
SETNL BL 
SETNZ BL 
AND AL, AL 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
SETP SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RCX], ESI 
XOR AL, -109 
OR EDX, -12 
AND BX, -114 
SETO BL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -35 
BTR ESI, -68 
CDQ  
XOR AL, AL 
LEA RSI, qword ptr [RAX + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RCX] 
XOR CX, CX 
BTC SI, 77 
JMP .bb_main.3 
.bb_main.3:
XOR SIL, -127 
MOVSX EAX, AL 
SETB BL 
MOVZX ESI, CL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], SI 
CMOVL RBX, RSI 
BTR RCX, -38 
CMOVB RDX, RCX 
MOVZX RDI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RSI] 
OR DIL, -13 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
