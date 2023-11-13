.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD EDI, EAX 
SETO AL 
SETNO AL 
AND EAX, 1552940974 
CMOVNO BX, BX 
CMOVNZ RDI, RBX 
MOVSX SI, DL 
SETNBE AL 
BTS BX, 53 
AND DIL, -118 # instrumentation
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR EDI, dword ptr [R14 + RAX] 
CMPXCHG CL, DIL # instrumentation
LAHF  
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RDX] 
CMOVNP RAX, RDX 
AND DL, 35 
AND EDX, EAX 
CMOVO BX, AX 
OR AX, 26517 
CMOVB EBX, EAX 
SAHF  
MOVSX SI, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], BL 
MOV EAX, EBX 
OR CX, -105 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], -51 
AND RDI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDI] 
MOVZX EDI, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], 1 
CMPXCHG DL, AL 
SETS BL 
MOVSX RDI, SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], 116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
