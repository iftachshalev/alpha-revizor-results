.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 48 # instrumentation
CMOVNLE EAX, ECX 
CMOVNBE DI, SI 
CMOVNS EAX, ECX 
MOVSX RDI, SI 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
CMOVZ ESI, ESI 
CMOVB RBX, RAX 
SETNS CL 
AND RAX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], -118 
CMOVNS RAX, RSI 
SETO SIL 
SETNL DIL 
CMOVNS AX, DX 
SETNO DL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], 97 
CMPXCHG SIL, DL # instrumentation
LAHF  
TEST EAX, EDX 
SETLE DL 
MOV ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], EAX 
SETNO AL 
OR RAX, 1251801656 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RBX] 
NOP  
MOV DIL, 56 
AND CX, 120 
SETNL AL 
OR AX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
