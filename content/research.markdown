---
title: Current Research
---

Current Research
================

Quasi-Geostrophic Equations
---------------------------

The Quasi-Geostrophic Equations are a simple model of planet-scale fluid
flows:

$$
\begin{equation}
J(q,\psi) - \dfrac{1}{Re} \Delta q = f , \, q = Ro \Delta \psi + y
\end{equation}
$$

where \\(Re\\) and \\(Ro\\) are the Reynolds and Rossby numbers and \\(J\\) is
the determinant of the Jacobi matrix:

$$
\begin{equation}
J(u,v) = \dfrac{\partial u}{\partial x}\dfrac{\partial v}{\partial y} -
\dfrac{\partial u}{\partial y}\dfrac{\partial v}{\partial x}
\end{equation}
$$

This formulation uses the *stream function vorticity* approach, where instead
of solving for the velocity we find a function \\( \psi \\) such that

$$
\begin{equation}
v_{x} = -\dfrac{d\psi}{dy}, v_{y} = \dfrac{d\psi}{dx}
\end{equation}
$$

which automatically satisfies incompressibility. Similarly, vorticity is
defined as \\( \omega := \nabla \times v \\). The two are closely related as the
Laplacian of the stream function is just the vorticity.

This pair of equations closely resemble the two-dimensional Navier Stokes
equations and techniques that work for one equation tend to work well for the
other.


\\( C^1 \\) Finite Element Spaces
---------------------------------
The formulation of the quasigeostrophic equation I am interested in removes the
potential vorticity term by substitution:

$$
\begin{equation}
\dfrac{1}{Re} \Delta^2 \psi + J(\Delta \psi, \psi) - \dfrac{1}{Ro}
\dfrac{\partial \psi}{\partial x} = \dfrac{1}{Ro} f
\end{equation}
$$

The equation now resembles a nonlinear transport equation with a
hyper-diffusion term, a nonlinear term, and a destabilizing convective term
(the lone \\(x\\) derivative is the final form of the coriolis force which
tends to create boundary layers).  This reduction to a single scalar quantity
makes the equation more suitable for Petrov-Galerkin type stabilization
methods. Additionally, it is easier (at least I found it so!) to prove
optimality of error estimates with the quasigeostrophic equation in this form.

Reduction to one variable comes with a price; the biharmonic (\\(\Delta^2
\psi\\)) term requires high-order finite elements. Our group opted to use the
Argyris-5 (sometimes known as TUBA-21) 5th-degree finite element with 21
degrees of freedom, which has continuous derivatives (and hence a jump
discontinuity in the second derivative, meaning that the weak form of the
discretized biharmonic operator is 'nice').
