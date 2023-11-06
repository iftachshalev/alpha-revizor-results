.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
OR AX, 24445 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RBX] 
XOR RAX, -79 
OR RCX, RDX 
SETZ BL 
XOR RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], DX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, 9122 
SETP DIL 
OR AX, -14609 
BTC RCX, -120 
AND DIL, -90 # instrumentation
SETO DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 6 
AND SIL, 125 # instrumentation
SETNS AL 
SETBE DL 
CMOVLE SI, SI 
XCHG RSI, RDI 
BT EDI, -39 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 24 # instrumentation
CMOVNB EBX, EBX 
CWDE  
CMOVNLE RDI, RCX 
MOV RDI, 1170997134766804731 
OR AL, DL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], BL 
TEST BL, DIL 
LEA EAX, qword ptr [RDX] 
XOR CL, DL 
CMOVB BX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RSI] 
CMOVNS DI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
