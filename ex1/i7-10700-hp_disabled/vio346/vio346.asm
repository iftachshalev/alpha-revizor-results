.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RDX, RSI 
AND DIL, -118 # instrumentation
MOV EDI, EAX 
CMOVS RBX, RBX 
BSWAP RCX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SAHF  
AND AL, -114 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], -51 
MOV CX, 9863 
BTR ECX, EDI 
JMP .bb_main.2 
.bb_main.2:
BTC BX, DI 
AND DIL, -52 # instrumentation
SETNLE AL 
CMOVNO RDI, RDI 
CMOVS DX, DI 
BT RAX, RDX 
MOVZX EDI, CL 
BTC EAX, -111 
AND SIL, 123 # instrumentation
MOVSX RDX, DX 
CLD  
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, 20 # instrumentation
MOV RSI, -4251445241632488438 
SETS AL 
AND RSI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RDX] 
BTC SI, AX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], DX 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], BL 
CMOVLE CX, SI 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], DL 
CMOVP DX, AX 
CMOVB RAX, RBX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RBX 
OR CL, -121 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
