.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDX] 
XCHG BL, AL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], 98 
CMOVZ DI, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RAX] 
NOT RDI 
SETBE DL 
SETNLE AL 
CMOVP DX, SI 
SETZ BL 
AND RAX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RBX], 1 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND CL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RAX 
SETBE BL 
MOVSX ECX, DL 
CMOVS ECX, EBX 
CMPXCHG BL, AL 
CMOVNS EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], EAX 
AND EAX, -1964055673 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -85 # instrumentation
CMOVL AX, BX 
AND DIL, -57 
AND RSI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RSI] 
TEST AX, -29238 
BTR ESI, 4 
AND DIL, 48 # instrumentation
CMOVP RDI, RDX 
TEST DIL, -42 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG BL, DL # instrumentation
SETNB byte ptr [R14 + RDI] 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
