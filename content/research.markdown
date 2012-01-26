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
J(q,\psi) - \nu_1 \Delta q = f , \, q = -\nu_2 \Delta \psi + \beta y
\end{equation}
$$

They closely resemble the two-dimensional Navier Stokes equations and
techniques that work for one equation tend to work well for the other.

Our particular formulation uses the *stream function vorticity* approach, where
instead of solving for the velocity we find a function \\( \psi \\) such that

$$
\begin{equation}
v_{x} = -\dfrac{d\psi}{dy}, v_{y} = \dfrac{d\psi}{dx}
\end{equation}
$$

which automatically satisfies incompressibility. Similarly, vorticity is
defined as \\( \omega := \nabla \times v \\). The two are closely related as the
Laplacian of the stream function is just the vorticity.


