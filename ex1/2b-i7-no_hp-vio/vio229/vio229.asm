.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
BSWAP RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RDX] 
CMPXCHG DL, SIL 
SETS CL 
LEA EBX, qword ptr [RSI + RSI + 36208] 
CMOVNB RAX, RAX 
CMOVL DX, DX 
OR ESI, -88 
BT EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], RAX 
AND RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], 114 
MOVZX EBX, DIL 
XCHG EAX, EAX 
CMOVLE EDI, EDX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SAHF  
AND RCX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RCX], 3 
MOVZX ESI, BX 
AND CL, BL 
CMPXCHG DX, DI 
CMOVNP AX, SI 
CWDE  
LEA EDX, qword ptr [RDX] 
XOR AL, 11 
XCHG EAX, EAX 
OR SIL, DL 
AND RAX, -2139753161 
BTS EDX, -103 
OR BX, 0b1000000000000000 # instrumentation
BSF SI, BX 
OR SI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
