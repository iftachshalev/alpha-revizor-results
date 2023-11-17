.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RDI] 
BTR EAX, EDI 
AND DIL, -58 # instrumentation
SETNO BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RCX] 
BTR EDI, 15 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RSI] 
BSWAP RBX 
XOR ESI, -14 
AND EDI, -45 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], CL 
XCHG EBX, EDX 
XOR EDX, -116 
NOT RDI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -89 # instrumentation
SETNP DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RAX] 
SAHF  
AND RAX, RDI 
SETNP AL 
CWD  
AND RSI, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RSI] 
CMOVO DX, DX 
XADD DL, AL 
BSWAP RBX 
OR EAX, ESI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
TEST BX, AX 
SETO SIL 
SETS CL 
CMOVNO SI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
