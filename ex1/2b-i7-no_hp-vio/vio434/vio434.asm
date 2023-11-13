.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -52 # instrumentation
CMOVNO EBX, EBX 
MOVSX EDX, DX 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], 929317924 
AND RBX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RCX] 
OR RDX, RBX 
TEST RDI, -597576492 
BTS ESI, EBX 
CMOVZ RAX, RSI 
OR RAX, 701259098 
OR AX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RAX] 
NOT DL 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], ESI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG AL, SIL # instrumentation
AND SIL, 97 # instrumentation
LAHF  
AND RDI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BT word ptr [R14 + RDI], DX 
TEST AL, CL 
NOT BL 
BT EDX, EDX 
AND DIL, 93 # instrumentation
CMOVLE RDX, RBX 
CMOVNB EDI, ECX 
CMOVNB CX, CX 
XCHG AX, AX 
CMOVNBE EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], 2108743191 
OR RAX, 188730744 
AND RBX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RSI] 
SETNZ CL 
CMOVNB ESI, EBX 
MOVSX RDX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
