.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RSI 
MOVSX BX, CL 
LEA EBX, qword ptr [RAX + RCX + 35062] 
CMOVNZ EDI, EAX 
SETO AL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RBX] 
AND SIL, 62 # instrumentation
SETB DL 
SETNBE BL 
CMOVNP EBX, EBX 
MOVSX EDX, DIL 
CBW  
CMOVNZ RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], EBX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -19 # instrumentation
CMOVL BX, CX 
AND BL, AL 
SETP DIL 
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], CX 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], RAX 
AND DIL, 48 # instrumentation
LEA RCX, qword ptr [RCX + RAX + 5530] 
LEA EDX, qword ptr [RAX + RCX] 
SETNO SIL 
OR SI, -99 
BTR RSI, -63 
BT RBX, 61 
AND DIL, 127 # instrumentation
SETNO DL 
BT ESI, 16 
AND SIL, 26 # instrumentation
CMOVL DX, BX 
CMOVNS EBX, EDX 
MOVSX EBX, AL 
AND AL, 47 
CMOVO RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
