# Alpha revizor results
### Results of the first experiment in my alpha project, in which the revizor was executed on i7-10700k and violation 136 was examined.

Revizor is a security-oriented fuzzer for detecting information leaks in CPUs, such as [Spectre and Meltdown](https://meltdownattack.com/).
It tests CPUs against [Leakage Contracts](https://arxiv.org/abs/2006.03841) and searches for unexpected leaks.

For more details, see the revizor's [Paper](https://dl.acm.org/doi/10.1145/3503222.3507729) (open access [here](https://arxiv.org/abs/2105.06872)), and the [follow-up paper](https://arxiv.org/pdf/2301.07642.pdf).

Although, the results were taken on i7, the repo includes also i5 test run of the revizor.
the violations are separated in directories representing the amount of time the violation was successfully recreated.
