---
title: "Note: Book of Proof"
description: My solutions for the exercises in the Book of Proof
date: 2026-05-06
tags: maths
---

## 2. Logic

DeMorgan's Laws:

$$ \neg (P \land Q) = (\neg P) \lor (\neg Q) $$

$$ \neg (P \lor Q) = (\neg P) \land (\neg Q) $$

### 2.9. Solutions "Translating English to Symbolic Logic"

1. $(P \land Q) \implies R$
2. $P(x) \land \neg P(y)$
3. $P \implies \neg Q$
4. $\forall \text{prime } p, \exists \text{prime } q, q > p$
5. $\forall \epsilon \in \mathbb{R}, \epsilon > 0, \exists \delta \in \mathbb{R}, \delta > 0, (|x - a| < \delta) \implies (|f(x) - f(a)| < \epsilon)$
6. $\forall \epsilon \in \mathbb{R}, \epsilon > 0, \exists M \in \mathbb{R}, M > 0, (x > M) \implies (|f(x) - b| < \epsilon)$
7. $\exists a \in \mathbb{R}, \forall x \in \mathbb{R}, a + x = x$
8. $\neg P$
9. $(x \in \mathbb{Q} \land x \neq 0) \implies \tan(x) \notin \mathbb{Q}$
10. $(\sin(x) < 0) \implies \neg (0 \le x \le \pi)$

### 2.10. Solutions "Negating Statements"

1. $x$ is not positive or $y$ is positive.
2. $x$ is prime, and $\sqrt{x}$ is rational.
3. There exists a prime number $p$, for every prime number $q$, such that $q \le p$.
5. There exists a positive number $\epsilon$, for every positive number $M$, such that $(x > M)$ and $(|f(x) - b| \ge \epsilon)$.
6. $\forall a \in \mathbb{R}, \exists x \in \mathbb{R}, a + x \neq x$
8. $P: x \in \mathbb{Q}$\
   $Q: x \neq 0$\
   $R: \tan(x) \in \mathbb{Q}$\
   $S: (P \land Q) \implies \neg R$\
   $\neg S: (P \land Q) \land R$
9. There exists a number $x$, such that $(\sin(x) < 0) \land (0 \le x \le \pi)$.
10. There exists a function $f$, where $f$ is a polynomial and its degree is greater than 2, and $f'$ is constant.

### 3.2. Solutions "The Multiplication Principle"

1. (a) $6 \cdot 6 \cdot 6 \cdot 6 = 1296$\
   (b) $6 \cdot 6 \cdot 6 = 216$\
   (c) $5 \cdot 6 \cdot 6 \cdot 6 = 1080$
2. $26 \cdot 26 \cdot 26 = 17576$
3. (a) $6 \cdot 6 \cdot 6 = 216$\
   (b) $6 \cdot 5 \cdot 4 = 120$\
   (c) $6 \cdot 5 = 30$\
   (d) $6 \cdot 6 = 36$
4. $2 \cdot 6 = 12$
5. (a) $2^8 = 256$\
   (b) $2^7 = 128$
