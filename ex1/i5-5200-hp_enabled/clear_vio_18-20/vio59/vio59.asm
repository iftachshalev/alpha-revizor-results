.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DX, AX 
NOT EBX 
AND SI, CX 
CMOVP BX, DI 
XADD DIL, AL 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], ESI 
MOV RSI, 7653788852462772379 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX DI, DL 
BTR RSI, -80 
BTR EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RBX] 
OR RAX, RDX 
AND EDI, 69 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], SI 
CMOVP RDI, RBX 
BT DX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RCX] 
AND RAX, -62888253 
CMOVNB DX, DI 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 120 # instrumentation
SETS CL 
BTR CX, DX 
BTS CX, CX 
LEA RCX, qword ptr [RAX + RCX] 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BT dword ptr [R14 + RDI], EDX 
XCHG EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RBX] 
CMC  
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], ECX 
MOV RBX, 1781556147000441765 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RAX], DI 
TEST EAX, -211920938 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
