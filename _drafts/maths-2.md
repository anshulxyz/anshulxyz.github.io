# Maths-2

## Vectors and Matrix

We denote the set on $n$-dimensional vectors with real coefficients as
$\mathbb{R}^n$. A vector $\vec{v}\in \mathbb{R}^n$ is a $n$-tuple of
real numbers. For example, a three-dimensional vector is defined as a
triple of numbers: $$\vec{v}\stackrel{\text{def}}{=} (v_1, v_2, v_3)$$

A matrix $A \in \mathbb{R}^{m \times n}$ is a rectangular array of real
numbers with $m$ rows and $n$ columns.[@savov2021 Chapter 1]
$$\begin{aligned}
  A_{3 \times 2}\stackrel{\text{def}}{=}\begin{bmatrix}
    a_{11} & a_{12}\\
    a_{21} & a_{22}\\
    a_{31} & a_{32}
\end{bmatrix}
\end{aligned}$$

## Determinant

The determinant of a matrix, denoted $\text{det}(A)$ or $|A|$, is a
particular way to multiply the entries of a matrix to produce a single
number.[@savov2021 Chapter 3]

$$\begin{aligned}
  A_{1 \times 1} &= \begin{bmatrix}
    a
  \end{bmatrix},\enspace
  \text{det}(A) = a\\
  A_{2 \times 2} &= \begin{bmatrix}
    a & b\\
    c & d
  \end{bmatrix},\enspace
  \text{det}(A) = ad - bc\\
  A_{3 \times 3} &= \begin{bmatrix}
    a & b & c\\
    d & e & f\\
    g & h & i
  \end{bmatrix},\enspace
  \text{det}(A) = a\cdot \text{det}\left(\begin{bmatrix}
      e & f\\
      h & i
  \end{bmatrix}\right) -
      b\cdot \text{det} \left(\begin{bmatrix}
          d & f\\
          g & i
      \end{bmatrix}\right)
  + c\cdot \text{det}\left(\begin{bmatrix}
      d & e\\
      g & h
  \end{bmatrix}\right)
\end{aligned}$$

### Minors and Cofactors

If $A$ is a square matrix of order $n \times n$, where $n \leq 4$, then
the **minor** of the entry in the $i$-th row and $j$-th column, is the
determinant of the sub-matrix formed by omitting the $i$-th row and
$j$-th column.

$$\begin{aligned}
  A_{3 \times 3} &= \begin{bmatrix}
    a_{11} & a_{12} & a_{13}\\
    a_{21} & a_{22} & a_{23}\\
    a_{31} & a_{32} & a_{33}
  \end{bmatrix},\enspace
  M_{11} = \text{det} \left( \begin{bmatrix}
    a_{22} & a_{23}\\
    a_{32} & a_{33}
  \end{bmatrix} \right)
\end{aligned}$$

And the $ij$-th **cofactor** is defined as $$\begin{aligned}
  C_{ij} = {(-1)}^{i+j} \times M_{ij}
\end{aligned}$$

Rewriting determinants in the form of *minors* and *cofactors*.
$$\begin{aligned}
  A_{3 \times 3} &= \begin{bmatrix}
    a_{11} & a_{12} & a_{13}\\
    a_{21} & a_{22} & a_{23}\\
    a_{31} & a_{32} & a_{33}
  \end{bmatrix}\\
    \text{det}(A) &= a_{11} M_{11} - a_{12} M_{12} + a_{13} M_{13}\\
    \text{det}(A) &= a_{11} C_{11} + a_{12} C_{12} + a_{13} C_{13}
\end{aligned}$$

Generalizing this for $A_{n \times n}$ $$\begin{aligned}
  \text{det}(A) = \sum_{j=1}^{n} (-1^{1+j}) a_{1j} M_{1j} = \sum_{j=1}^{n} a_{1j} C_{1j}
\end{aligned}$$