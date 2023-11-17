.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 73 # instrumentation
CLC  
CMOVNS ESI, ECX 
CMOVNBE ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], -103 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, -40 # instrumentation
CMOVNBE RCX, RSI 
TEST RDI, RCX 
XCHG CL, BL 
TEST DL, BL 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], CX 
AND RBX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], SIL 
XOR RAX, 27 
JMP .bb_main.2 
.bb_main.2:
AND BL, BL 
CMOVNL RDI, RSI 
MOVZX EDX, SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -865906097 
XCHG AL, SIL 
OR EAX, -1041695882 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], DL 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 117 # instrumentation
SETNP CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RCX] 
CMPXCHG DL, SIL 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
CMOVL DX, AX 
MOV CL, CL 
BTS RAX, RDX 
AND DIL, -122 # instrumentation
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], 4 
CMOVNBE RBX, RBX 
CMOVNLE ESI, EDI 
XCHG BL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
