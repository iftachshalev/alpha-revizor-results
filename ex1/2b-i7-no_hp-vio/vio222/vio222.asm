.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT SI, -63 
AND DIL, -126 # instrumentation
CMOVNO EAX, EDX 
OR BX, 0b1000000000000000 # instrumentation
BSF DI, BX 
MOVZX DI, AL 
BT AX, 123 
OR EAX, 2076434623 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], ESI 
MOV RCX, -1111006471005364237 
OR RDI, RSI 
BT EBX, 96 
MOV RAX, RSI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
AND SIL, 113 # instrumentation
CMOVNL CX, BX 
NOT CL 
CMOVNS DI, CX 
XOR BX, 83 
TEST AL, -93 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], 3 
AND DIL, -29 # instrumentation
CMOVNO RCX, RDI 
MOVZX ESI, CL 
TEST DL, CL 
CMOVNZ RDX, RBX 
BT SI, 59 
AND SIL, -58 # instrumentation
SETNL CL 
TEST ESI, 1876111036 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RAX] 
CMOVP RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], DL 
OR DI, 0b1000000000000000 # instrumentation
BSF DX, DI 
AND SIL, 102 # instrumentation
CMOVNP RDI, RCX 
CMOVNZ BX, DX 
SETNLE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
