.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], 122 
XOR RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RBX] 
BTR DX, -105 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], -33 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], 33 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
AND EAX, -455437509 
OR RDX, RDI 
CMOVNZ DX, CX 
XOR BX, AX 
JMP .bb_main.1 
.bb_main.1:
MOVSX SI, AL 
OR EAX, 1135386684 
AND RDX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDX] 
CMOVB AX, CX 
BTR EBX, -4 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RSI] 
MOVSX ESI, DL 
XOR EAX, -157392857 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], 88 
SETNB BL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMPXCHG BL, DL 
SETB DIL 
SETZ SIL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RAX] 
XADD DL, CL 
AND RAX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTS word ptr [R14 + RAX], DX 
OR AX, 21415 
OR SIL, 38 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RSI] 
XOR RAX, -411726083 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
