.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RBX, RBX 
BSWAP ESI 
OR RAX, -1171424594 
SETNZ BL 
AND RSI, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RSI] 
XOR BL, -33 
NOT BL 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -40 # instrumentation
CMOVNZ RDI, RDX 
SETNP CL 
CMOVNS RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTR dword ptr [R14 + RDX], EDI 
OR RDX, RAX 
OR DX, 0b1000000000000000 # instrumentation
BSF AX, DX 
XOR AX, -17412 
AND RDI, 91 
MOVZX RDI, CX 
CMPXCHG ECX, EDX 
AND ECX, 61 
CMOVP RDI, RCX 
CMOVLE RSI, RCX 
MOVZX CX, CL 
JMP .bb_main.2 
.bb_main.2:
AND SI, -128 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], CX 
MOVZX ECX, BL 
CMOVS RDI, RAX 
AND DIL, 28 
CMOVZ RDX, RDI 
SETNO BL 
CBW  
MOVSX DI, BL 
CMOVNO ESI, EAX 
OR AX, -21951 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
