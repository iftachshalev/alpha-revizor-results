.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RDI 
AND RSI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RSI], 4 
AND SIL, -115 # instrumentation
CMOVS DI, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EDX 
CMOVO RSI, RBX 
CMOVNO DI, AX 
SETNL BL 
NOT CX 
BT BX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], 47 
BSWAP EAX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV CX, CX 
OR AX, -11480 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
BTR BX, -124 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], AX 
MOV CL, CL 
OR EDI, -16 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RAX] 
OR EBX, -6 
BTR EDX, 54 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], DI 
CDQ  
XCHG ECX, EAX 
SETNBE SIL 
BT DI, 20 
AND AL, -19 
CMOVNB BX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
