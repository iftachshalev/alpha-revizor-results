.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DL, BL 
XCHG BX, BX 
AND RSI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BT dword ptr [R14 + RSI], EDI 
BTS DI, 102 
AND SIL, -107 # instrumentation
SETP BL 
CMOVLE BX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
SETZ CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RSI], CX 
CWDE  
SETB BL 
MOVSX RSI, AL 
SETNZ CL 
MOV RCX, 7974931723899913643 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], BX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RBX] 
OR AL, 4 
BTC DI, CX 
CMPXCHG AL, AL 
AND AL, 8 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
AND DX, SI 
OR CX, SI 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 110 
CMOVNP RAX, RDI 
CMOVNLE RAX, RCX 
CMPXCHG CL, BL 
SETB BL 
CMOVLE AX, DX 
XOR AX, 16297 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
