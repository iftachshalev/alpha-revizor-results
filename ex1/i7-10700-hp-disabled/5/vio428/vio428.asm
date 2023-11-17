.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -5 # instrumentation
CMOVNL EDI, EBX 
MOVSX EDX, BL 
BTR EDX, ECX 
BT EAX, 91 
AND SIL, 24 # instrumentation
SETNLE BL 
XCHG DX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], ESI 
SETNL AL 
SETNLE CL 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RDI] 
CMOVNP DX, SI 
CMOVNB EDX, EDI 
CMOVB RBX, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], BL 
BTR DX, -95 
AND SIL, -26 # instrumentation
MOVSX EBX, DL 
CMOVS RBX, RAX 
OR AX, 28160 
LEA DX, qword ptr [RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDX] 
AND DIL, DIL 
SETNS CL 
MOVSX AX, BL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 41 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
SETNL DL 
NOT DX 
XOR DL, -52 
CMOVNL CX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
