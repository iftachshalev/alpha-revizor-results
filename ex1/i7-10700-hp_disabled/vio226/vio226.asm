.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 92 # instrumentation
CMOVL RDX, RAX 
BTC ESI, -107 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ECX 
BT CX, 82 
AND DIL, 15 # instrumentation
CMOVS EDI, EDI 
MOVZX ECX, AL 
SETLE AL 
CMOVNBE RCX, RDI 
OR RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RBX] 
BSWAP EBX 
CMOVLE AX, CX 
BTS DI, AX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDX], 6 
OR AL, AL 
STC  
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
SETNS DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RAX] 
CMOVP ESI, ECX 
AND RAX, -823834696 
BTC SI, SI 
CMOVNZ EDX, EDX 
CMOVZ CX, DI 
SAHF  
BTR CX, -20 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], EDX 
OR EAX, -1597663825 
SETO DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RDX 
MOVSX RCX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
