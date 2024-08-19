export usetup,
  csetup,
  udimen,
  udimsh,
  udimse,
  uvartype,
  unames,
  ureport,
  cdimen,
  cdimsj,
  cdimsh,
  cdimchp,
  cdimse,
  cstats,
  cvartype,
  cnames,
  creport,
  connames,
  pname,
  probname,
  varnames,
  ufn,
  ugr,
  uofg,
  udh,
  ushp,
  ush,
  ueh,
  ugrdh,
  ugrsh,
  ugreh,
  uhprod,
  ushprod,
  ubandh,
  cfn,
  cofg,
  cofsg,
  ccfg,
  clfg,
  cgr,
  csgr,
  ccfsg,
  ccifg,
  ccifsg,
  cgrdh,
  cdh,
  cdhc,
  cshp,
  csh,
  cshc,
  ceh,
  cidh,
  cish,
  csgrsh,
  csgreh,
  chprod,
  cshprod,
  chcprod,
  cshcprod,
  cjprod,
  csjprod,
  cchprods,
  cchprodsp,
  uterminate,
  cterminate,
  cifn,
  cisgr,
  csgrp,
  cigr,
  csgrshp,
  csjp

"""# usetup
The usetup subroutine sets up the correct data structures for
subsequent computations in the case where the only possible
constraints are bound constraints. The problem under consideration is
to minimize or maximize an objective function f(x) over all x ∈ Rn
subject to the simple bounds xl≤x≤xu. The objective function is group-
partially separable.

For more information, run the shell command

    man cutest_usetup

Usage:

    usetup(status, input, out, io_buffer, n, x, x_l, x_u)

  - status:    [OUT] Vector{Cint}
  - input:     [IN] Vector{Cint}
  - out:       [IN] Vector{Cint}
  - io_buffer: [IN] Vector{Cint}
  - n:         [IN] Vector{Cint}
  - x:         [OUT] Vector{Cdouble}
  - x_l:       [OUT] Vector{Cdouble}
  - x_u:       [OUT] Vector{Cdouble}
"""
function usetup end

for (cutest_usetup, T) in ((:cutest_usetup_, :Float64),)
  @eval begin
    function usetup(
      status::StrideOneVector{Cint},
      input::StrideOneVector{Cint},
      out::StrideOneVector{Cint},
      io_buffer::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      x_l::StrideOneVector{Cdouble},
      x_u::StrideOneVector{Cdouble},
    )
      $cutest_usetup(status, input, out, io_buffer, n, x, x_l, x_u)
    end
  end
end

"""# csetup
The csetup subroutine sets up the correct data structures for
subsequent computations on the problem decoded from a SIF file by the
script sifdecoder. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_csetup

Usage:

    csetup(status, input, out, io_buffer, n, m, x, x_l, x_u, y, c_l, c_u, equatn,
linear, e_order, l_order, v_order)

  - status:    [OUT] Vector{Cint}
  - input:     [IN] Vector{Cint}
  - out:       [IN] Vector{Cint}
  - io_buffer: [IN] Vector{Cint}
  - n:         [IN] Vector{Cint}
  - m:         [IN] Vector{Cint}
  - x:         [OUT] Vector{Cdouble}
  - x_l:       [OUT] Vector{Cdouble}
  - x_u:       [OUT] Vector{Cdouble}
  - y:         [OUT] Vector{Cdouble}
  - c_l:       [OUT] Vector{Cdouble}
  - c_u:       [OUT] Vector{Cdouble}
  - equatn:    [OUT] Vector{Bool}
  - linear:    [OUT] Vector{Bool}
  - e_order:   [IN] Vector{Cint}
  - l_order:   [IN] Vector{Cint}
  - v_order:   [IN] Vector{Cint}
"""
function csetup end

for (cutest_cint_csetup, T) in ((:cutest_cint_csetup_, :Float64),)
  @eval begin
    function csetup(
      status::StrideOneVector{Cint},
      input::StrideOneVector{Cint},
      out::StrideOneVector{Cint},
      io_buffer::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      x_l::StrideOneVector{Cdouble},
      x_u::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      c_l::StrideOneVector{Cdouble},
      c_u::StrideOneVector{Cdouble},
      equatn::StrideOneVector{Bool},
      linear::StrideOneVector{Bool},
      e_order::StrideOneVector{Cint},
      l_order::StrideOneVector{Cint},
      v_order::StrideOneVector{Cint},
    )
      $cutest_cint_csetup(
        status,
        input,
        out,
        io_buffer,
        n,
        m,
        x,
        x_l,
        x_u,
        y,
        c_l,
        c_u,
        equatn,
        linear,
        e_order,
        l_order,
        v_order,
      )
    end
  end
end

"""# udimen
The udimen subroutine discovers how many variables are involved in the
problem decoded from a SIF file by the script sifdecoder. The problem
under consideration is to minimize or maximize an objective function
f(x) over all x ∈ Rn subject to the simple bounds xl≤x≤xu. The
objective function is group-partially separable.

For more information, run the shell command

    man cutest_udimen

Usage:

    udimen(status, input, n)

  - status:  [OUT] Vector{Cint}
  - input:   [IN] Vector{Cint}
  - n:       [OUT] Vector{Cint}
"""
function udimen end

for (cutest_udimen, T) in ((:cutest_udimen_, :Float64),)
  @eval begin
    function udimen(
      status::StrideOneVector{Cint},
      input::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
    )
      $cutest_udimen(status, input, n)
    end
  end
end

"""# udimsh
The udimsh subroutine determine the number of nonzeros required to
store the Hessian matrix of the objective function of the problem
decoded from a SIF file by the script sifdecoder at the point X. This
Hessian matrix is stored as a sparse matrix in coordinate format. The
problem under consideration is to minimize or maximize an objective
function f(x) over all x ∈ Rn subject to the simple bounds xl≤x≤xu.
The objective function is group-partially separable.

For more information, run the shell command

    man cutest_udimsh

Usage:

    udimsh(status, nnzh)

  - status:  [OUT] Vector{Cint}
  - nnzh:    [OUT] Vector{Cint}
"""
function udimsh end

for (cutest_udimsh, T) in ((:cutest_udimsh_, :Float64),)
  @eval begin
    function udimsh(status::StrideOneVector{Cint}, nnzh::StrideOneVector{Cint})
      $cutest_udimsh(status, nnzh)
    end
  end
end

"""# udimse
The udimse subroutine determine the number of nonzeros required to
store the Hessian matrix of the objective function of the problem
decoded from a SIF file by the script sifdecoder at the point X. This
Hessian matrix is stored as a sparse matrix in finite element format
H=eΣ1He, where each square symmetric element H_i involves a small
subset of the rows of the Hessian matrix. The problem under
consideration is to minimize or maximize an objective function f(x)
over all x ∈ Rn subject to the simple bounds xl≤x≤xu. The objective
function is group-partially separable.

For more information, run the shell command

    man cutest_udimse

Usage:

    udimse(status, ne, he_val_ne, he_row_ne)

  - status:    [OUT] Vector{Cint}
  - ne:        [OUT] Vector{Cint}
  - he_val_ne: [OUT] Vector{Cint}
  - he_row_ne: [OUT] Vector{Cint}
"""
function udimse end

for (cutest_udimse, T) in ((:cutest_udimse_, :Float64),)
  @eval begin
    function udimse(
      status::StrideOneVector{Cint},
      ne::StrideOneVector{Cint},
      he_val_ne::StrideOneVector{Cint},
      he_row_ne::StrideOneVector{Cint},
    )
      $cutest_udimse(status, ne, he_val_ne, he_row_ne)
    end
  end
end

"""# uvartype
The uvartype subroutine determines the type (continuous, 0-1, integer)
of each variable involved in the problem decoded from a SIF file by
the script sifdecoder. The problem under consideration is to minimize
or maximize an objective function f(x) over all x ∈ Rn subject to the
simple bounds xl≤x≤xu. The objective function is group-partially
separable.

For more information, run the shell command

    man cutest_uvartype

Usage:

    uvartype(status, n, x_type)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x_type:  [OUT] Vector{Cint}
"""
function uvartype end

for (cutest_uvartype, T) in ((:cutest_uvartype_, :Float64),)
  @eval begin
    function uvartype(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x_type::StrideOneVector{Cint},
    )
      $cutest_uvartype(status, n, x_type)
    end
  end
end

"""# unames
The unames subroutine obtains the names of the problem and its
variables. The problem under consideration is to minimize or maximize
an objective function f(x) over all x ∈ Rn subject to the simple
bounds xl≤x≤xu. The objective function is group-partially separable.

For more information, run the shell command

    man cutest_unames

Usage:

    unames(status, n, pname, vname)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - pname:   [OUT] Vector{UInt8}
  - vname:   [OUT] Vector{UInt8}

To get useful names, use `String(x)` where `x` can be `pname` or `vname[:,i]`.
"""
function unames end

for (cutest_unames, T) in ((:cutest_unames_, :Float64),)
  @eval begin
    function unames(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      pname::StrideOneVector{UInt8},
      vname::Matrix{UInt8},
    )
      $cutest_unames(status, n, pname, vname)
    end
  end
end

"""# ureport
The ureport subroutine obtains statistics concerning function
evaluation and CPU time used for unconstrained or bound-constrained
optimization in a standardized format. The problem under consideration
is to minimize or maximize an objective function f(x) over all x ∈ Rn
subject to the simple bounds xl≤x≤xu. The objective function is group-
partially separable.

For more information, run the shell command

    man cutest_ureport

Usage:

    ureport(status, calls, time)

  - status:  [OUT] Vector{Cint}
  - calls:   [OUT] Vector{Cdouble}
  - time:    [OUT] Vector{Cdouble}
"""
function ureport end

for (cutest_ureport, T) in ((:cutest_ureport_, :Float64),)
  @eval begin
    function ureport(
      status::StrideOneVector{Cint},
      calls::StrideOneVector{Cdouble},
      time::StrideOneVector{Cdouble},
    )
      $cutest_ureport(status, calls, time)
    end
  end
end

"""# cdimen
The cdimen subroutine discovers how many variables and constraints are
involved in the problem decoded from a SIF file by the script
sifdecoder. The problem under consideration is to minimize or maximize
an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_cdimen

Usage:

    cdimen(status, input, n, m)

  - status:  [OUT] Vector{Cint}
  - input:   [IN] Vector{Cint}
  - n:       [OUT] Vector{Cint}
  - m:       [OUT] Vector{Cint}
"""
function cdimen end

for (cutest_cdimen, T) in ((:cutest_cdimen_, :Float64),)
  @eval begin
    function cdimen(
      status::StrideOneVector{Cint},
      input::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
    )
      $cutest_cdimen(status, input, n, m)
    end
  end
end

"""# cdimsj
The cdimsj subroutine determines the number of nonzero elements
required to store the matrix of gradients of the objective function
and constraint functions for the problem decoded into OUTSDIF.d in the
constrained minimization case. The matrix is stored in sparse format.
The problem under consideration is to minimize or maximize an
objective function f(x) over all x ∈ Rn subject to general equations
ci(x)=0, (i ∈ 1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈
mE+1,...,m), and simple bounds xl≤x≤xu. The objective function is
group-partially separable and all constraint functions are partially
separable.

For more information, run the shell command

    man cutest_cdimsj

Usage:

    cdimsj(status, nnzj)

  - status:  [OUT] Vector{Cint}
  - nnzj:    [OUT] Vector{Cint}
"""
function cdimsj end

for (cutest_cdimsj, T) in ((:cutest_cdimsj_, :Float64),)
  @eval begin
    function cdimsj(status::StrideOneVector{Cint}, nnzj::StrideOneVector{Cint})
      $cutest_cdimsj(status, nnzj)
    end
  end
end

"""# cdimsh
The cdimsh subroutine determines the number of nonzero elements
required to store the Hessian matrix of the Lagrangian function for
the problem decoded into OUTSDIF.d in the constrained minimization
case. The matrix is stored in sparse "coordinate" format. The problem
under consideration is to minimize or maximize an objective function
f(x) over all x ∈ Rn subject to general equations ci(x)=0, (i ∈
1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m),
and simple bounds xl≤x≤xu. The objective function is group-partially
separable and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_cdimsh

Usage:

    cdimsh(status, nnzh)

  - status:  [OUT] Vector{Cint}
  - nnzh:    [OUT] Vector{Cint}
"""
function cdimsh end

for (cutest_cdimsh, T) in ((:cutest_cdimsh_, :Float64),)
  @eval begin
    function cdimsh(status::StrideOneVector{Cint}, nnzh::StrideOneVector{Cint})
      $cutest_cdimsh(status, nnzh)
    end
  end
end

"""# cdimchp
The cdimchp subroutine determines the number of nonzero elements
required to store the products of the Hessian matrices of the
constraint functions with a specified vector for the problem decoded
into OUTSDIF.d in the constrained minimization case. The problem under
consideration is to minimize or maximize an objective function f(x)
over all x ∈ Rn subject to general equations ci(x)=0, (i ∈ 1,...,mE),
general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple
bounds xl≤x≤xu. The objective function is group-partially separable
and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_cdimchp

Usage:

    cdimchp(status, nnzchp)

  - status:  [OUT] Vector{Cint}
  - nnzchp:  [OUT] Vector{Cint}
"""
function cdimchp end

for (cutest_cdimchp, T) in ((:cutest_cdimchp_, :Float64),)
  @eval begin
    function cdimchp(status::StrideOneVector{Cint}, nnzchp::StrideOneVector{Cint})
      $cutest_cdimchp(status, nnzchp)
    end
  end
end

"""# cdimse
The cdimse subroutine determines the number of nonzero elements
required to store the Hessian matrix of the Lagrangian function for
the problem decoded from a SIF file by the script sifdecoder. The
matrix is stored in sparse "finite element" format H=eΣ1He, where each
square symmetric element He involves a small subset of the rows of the
Hessian matrix. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_cdimse

Usage:

    cdimse(status, ne, he_val_ne, he_row_ne)

  - status:    [OUT] Vector{Cint}
  - ne:        [OUT] Vector{Cint}
  - he_val_ne: [OUT] Vector{Cint}
  - he_row_ne: [OUT] Vector{Cint}
"""
function cdimse end

for (cutest_cdimse, T) in ((:cutest_cdimse_, :Float64),)
  @eval begin
    function cdimse(
      status::StrideOneVector{Cint},
      ne::StrideOneVector{Cint},
      he_val_ne::StrideOneVector{Cint},
      he_row_ne::StrideOneVector{Cint},
    )
      $cutest_cdimse(status, ne, he_val_ne, he_row_ne)
    end
  end
end

"""# cstats
    cstats(status, nonlinear_variables_objective,
nonlinear_variables_constraints, equality_constraints,
linear_constraints)

  - status:                          [OUT] Vector{Cint}
  - nonlinear_variables_objective:   [OUT] Vector{Cint}
  - nonlinear_variables_constraints: [OUT] Vector{Cint}
  - equality_constraints:            [OUT] Vector{Cint}
  - linear_constraints:              [OUT] Vector{Cint}
"""
function cstats end

for (cutest_cstats, T) in ((:cutest_cstats_, :Float64),)
  @eval begin
    function cstats(
      status::StrideOneVector{Cint},
      nonlinear_variables_objective::StrideOneVector{Cint},
      nonlinear_variables_constraints::StrideOneVector{Cint},
      equality_constraints::StrideOneVector{Cint},
      linear_constraints::StrideOneVector{Cint},
    )
      $cutest_cstats(
        status,
        nonlinear_variables_objective,
        nonlinear_variables_constraints,
        equality_constraints,
        linear_constraints,
      )
    end
  end
end

"""# cvartype
The cvartype subroutine determines the type (continuous, 0-1, integer)
of each variable involved in the problem decoded from a SIF file by
the script sifdecoder. The problem under consideration is to minimize
or maximize an objective function f(x) over all x ∈ Rn subject to
general equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_cvartype

Usage:

    cvartype(status, n, x_type)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x_type:  [OUT] Vector{Cint}
"""
function cvartype end

for (cutest_cvartype, T) in ((:cutest_cvartype_, :Float64),)
  @eval begin
    function cvartype(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x_type::StrideOneVector{Cint},
    )
      $cutest_cvartype(status, n, x_type)
    end
  end
end

"""# cnames
The cnames subroutine obtains the names of the problem, its variables
and general constraints. The problem under consideration is to
minimize or maximize an objective function f(x) over all x ∈ Rn
subject to general equations ci(x)=0, (i ∈ 1,...,mE), general
inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds
xl≤x≤xu. The objective function is group-partially separable and all
constraint functions are partially separable.

For more information, run the shell command

    man cutest_cnames

Usage:

    cnames(status, n, m, pname, vname, cname)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - pname:   [OUT] Vector{UInt8}
  - vname:   [OUT] Vector{UInt8}
  - cname:   [OUT] Vector{UInt8}

To get useful names, use `String(x)` where `x` can be `pname`, `vname[:,i]`,
or `cname[:,i]`.
"""
function cnames end

for (cutest_cnames, T) in ((:cutest_cnames_, :Float64),)
  @eval begin
    function cnames(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      pname::StrideOneVector{UInt8},
      vname::Matrix{UInt8},
      cname::Matrix{UInt8},
    )
      $cutest_cnames(status, n, m, pname, vname, cname)
    end
  end
end

"""# creport
The creport subroutine obtains statistics concerning function
evaluation and CPU time used for constrained optimization in a
standardized format. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_creport

Usage:

    creport(status, calls, time)

  - status:  [OUT] Vector{Cint}
  - calls:   [OUT] Vector{Cdouble}
  - time:    [OUT] Vector{Cdouble}
"""
function creport end

for (cutest_creport, T) in ((:cutest_creport_, :Float64),)
  @eval begin
    function creport(
      status::StrideOneVector{Cint},
      calls::StrideOneVector{Cdouble},
      time::StrideOneVector{Cdouble},
    )
      $cutest_creport(status, calls, time)
    end
  end
end

"""# connames
The connames subroutine obtains the names of the general constraints
of the problem. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_connames

Usage:

    connames(status, m, cname)

  - status:  [OUT] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - cname:   [OUT] Vector{UInt8}

To get useful names, use `String(cname[:,i])`.
"""
function connames end

for (cutest_connames, T) in ((:cutest_connames_, :Float64),)
  @eval begin
    function connames(status::StrideOneVector{Cint}, m::StrideOneVector{Cint}, cname::Matrix{UInt8})
      $cutest_connames(status, m, cname)
    end
  end
end

"""# pname
The pname subroutine obtains the name of the problem directly from the
datafile OUTSDIF.d that was created by the script sifdecoder when
decoding a SIF file. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_pname

Usage:

    pname(status, input, pname)

  - status:  [OUT] Vector{Cint}
  - input:   [IN] Vector{Cint}
  - pname:   [OUT] Vector{UInt8}
"""
function pname end

for (cutest_pname, T) in ((:cutest_pname_, :Float64),)
  @eval begin
    function pname(
      status::StrideOneVector{Cint},
      input::StrideOneVector{Cint},
      pname::StrideOneVector{UInt8},
    )
      $cutest_pname(status, input, pname)
    end
  end
end

"""# probname
The probname subroutine obtains the name of the problem. The problem
under consideration is to minimize or maximize an objective function
f(x) over all x ∈ Rn subject to general equations ci(x)=0, (i ∈
1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m),
and simple bounds xl≤x≤xu. The objective function is group-partially
separable and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_probname

Usage:

    probname(status, pname)

  - status:  [OUT] Vector{Cint}
  - pname:   [OUT] Vector{UInt8}

To get a useful name, use `String(pname)`.
"""
function probname end

for (cutest_probname, T) in ((:cutest_probname_, :Float64),)
  @eval begin
    function probname(status::StrideOneVector{Cint}, pname::StrideOneVector{UInt8})
      $cutest_probname(status, pname)
    end
  end
end

"""# varnames
The varnames subroutine obtains the names of the problem variables.
The problem under consideration is to minimize or maximize an
objective function f(x) over all x ∈ Rn subject to general equations
ci(x)=0, (i ∈ 1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈
mE+1,...,m), and simple bounds xl≤x≤xu. The objective function is
group-partially separable and all constraint functions are partially
separable.

For more information, run the shell command

    man cutest_varnames

Usage:

    varnames(status, n, vname)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - vname:   [OUT] Vector{UInt8}

To get useful names, use `String(vname[:, i])`.
"""
function varnames end

for (cutest_varnames, T) in ((:cutest_varnames_, :Float64),)
  @eval begin
    function varnames(status::StrideOneVector{Cint}, n::StrideOneVector{Cint}, vname::Matrix{UInt8})
      $cutest_varnames(status, n, vname)
    end
  end
end

"""# ufn
The ufn subroutine evaluates the value of the objective function of
the problem decoded from a SIF file by the script sifdecoder at the
point X. The problem under consideration is to minimize or maximize an
objective function f(x) over all x ∈ Rn subject to the simple bounds
xl≤x≤xu. The objective function is group-partially separable.

For more information, run the shell command

    man cutest_ufn

Usage:

    ufn(status, n, x, f)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - f:       [OUT] Vector{Cdouble}
"""
function ufn end

for (cutest_ufn, T) in ((:cutest_ufn_, :Float64),)
  @eval begin
    function ufn(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      f::StrideOneVector{Cdouble},
    )
      $cutest_ufn(status, n, x, f)
    end
  end
end

"""# ugr
The ugr subroutine evaluates the gradient of the objective function of
the problem decoded from a SIF file by the script sifdecoder at the
point X. The problem under consideration is to minimize or maximize an
objective function f(x) over all x ∈ Rn subject to the simple bounds
xl≤x≤xu. The objective function is group-partially separable.

For more information, run the shell command

    man cutest_ugr

Usage:

    ugr(status, n, x, g)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - g:       [OUT] Vector{Cdouble}
"""
function ugr end

for (cutest_ugr, T) in ((:cutest_ugr_, :Float64),)
  @eval begin
    function ugr(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      g::StrideOneVector{Cdouble},
    )
      $cutest_ugr(status, n, x, g)
    end
  end
end

"""# uofg
The uofg subroutine evaluates the value of the objective function of
the problem decoded from a SIF file by the script sifdecoder at the
point X, and possibly its gradient. The problem under consideration is
to minimize or maximize an objective function f(x) over all x ∈ Rn
subject to the simple bounds xl≤x≤xu. The objective function is group-
partially separable.

For more information, run the shell command

    man cutest_uofg

Usage:

    uofg(status, n, x, f, g, grad)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - f:       [OUT] Vector{Cdouble}
  - g:       [OUT] Vector{Cdouble}
  - grad:    [IN] Vector{Bool}
"""
function uofg end

for (cutest_cint_uofg, T) in ((:cutest_cint_uofg_, :Float64),)
  @eval begin
    function uofg(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      f::StrideOneVector{Cdouble},
      g::StrideOneVector{Cdouble},
      grad::StrideOneVector{Bool},
    )
      $cutest_cint_uofg(status, n, x, f, g, grad)
    end
  end
end

"""# udh
The udh subroutine evaluates the Hessian matrix of the objective
function of the problem decoded from a SIF file by the script
sifdecoder at the point X. This Hessian matrix is stored as a dense
matrix. The problem under consideration is to minimize or maximize an
objective function f(x) over all x ∈ Rn subject to the simple bounds
xl≤x≤xu. The objective function is group-partially separable.

For more information, run the shell command

    man cutest_udh

Usage:

    udh(status, n, x, lh1, h)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - lh1:     [IN] Vector{Cint}
  - h:       [OUT] Matrix{Cdouble}
"""
function udh end

for (cutest_udh, T) in ((:cutest_udh_, :Float64),)
  @eval begin
    function udh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      lh1::StrideOneVector{Cint},
      h::Matrix{Cdouble},
    )
      $cutest_udh(status, n, x, lh1, h)
    end
  end
end

"""# ushp
The ushp subroutine evaluates the sparsity pattern of the Hessian
matrix of the objective function of the problem, decoded from a SIF
file by the script sifdecoder, in coordinate format. The problem under
consideration is to minimize or maximize an objective function f(x)
over all x ∈ Rn subject to the simple bounds xl≤x≤xu. The objective
function is group-partially separable.

For more information, run the shell command

    man cutest_ushp

Usage:

    ushp(status, n, nnzh, lh, h_row, h_col)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - nnzh:    [OUT] Vector{Cint}
  - lh:      [IN] Vector{Cint}
  - h_row:   [OUT] Vector{Cint}
  - h_col:   [OUT] Vector{Cint}
"""
function ushp end

for (cutest_ushp, T) in ((:cutest_ushp_, :Float64),)
  @eval begin
    function ushp(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      nnzh::StrideOneVector{Cint},
      lh::StrideOneVector{Cint},
      h_row::StrideOneVector{Cint},
      h_col::StrideOneVector{Cint},
    )
      $cutest_ushp(status, n, nnzh, lh, h_row, h_col)
    end
  end
end

"""# ush
The ush subroutine evaluates the Hessian matrix of the objective
function of the problem decoded from a SIF file by the script
sifdecoder at the point X. This Hessian matrix is stored as a sparse
matrix in coordinate format. The problem under consideration is to
minimize or maximize an objective function f(x) over all x ∈ Rn
subject to the simple bounds xl≤x≤xu. The objective function is group-
partially separable.

For more information, run the shell command

    man cutest_ush

Usage:

    ush(status, n, x, nnzh, lh, h_val, h_row, h_col)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - nnzh:    [OUT] Vector{Cint}
  - lh:      [IN] Vector{Cint}
  - h_val:   [OUT] Vector{Cdouble}
  - h_row:   [OUT] Vector{Cint}
  - h_col:   [OUT] Vector{Cint}
"""
function ush end

for (cutest_ush, T) in ((:cutest_ush_, :Float64),)
  @eval begin
    function ush(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      nnzh::StrideOneVector{Cint},
      lh::StrideOneVector{Cint},
      h_val::StrideOneVector{Cdouble},
      h_row::StrideOneVector{Cint},
      h_col::StrideOneVector{Cint},
    )
      $cutest_ush(status, n, x, nnzh, lh, h_val, h_row, h_col)
    end
  end
end

"""# ueh
The ueh subroutine evaluates the Hessian matrix of the objective
function of the problem decoded from a SIF file by the script
sifdecoder at the point X. This Hessian matrix is stored as a sparse
matrix in finite element format H=eΣ1He, where each square symmetric
element He involves a small subset of the rows of the Hessian matrix.
The problem under consideration is to minimize or maximize an
objective function f(x) over all x ∈ Rn subject to the simple bounds
xl≤x≤xu. The objective function is group-partially separable.

For more information, run the shell command

    man cutest_ueh

Usage:

    ueh(status, n, x, ne, lhe_ptr, he_row_ptr, he_val_ptr, lhe_row, he_row,
lhe_val, he_val, byrows)

  - status:     [OUT] Vector{Cint}
  - n:          [IN] Vector{Cint}
  - x:          [IN] Vector{Cdouble}
  - ne:         [OUT] Vector{Cint}
  - lhe_ptr:    [IN] Vector{Cint}
  - he_row_ptr: [OUT] Vector{Cint}
  - he_val_ptr: [OUT] Vector{Cint}
  - lhe_row:    [IN] Vector{Cint}
  - he_row:     [OUT] Vector{Cint}
  - lhe_val:    [IN] Vector{Cint}
  - he_val:     [OUT] Vector{Cdouble}
  - byrows:     [IN] Vector{Bool}
"""
function ueh end

for (cutest_cint_ueh, T) in ((:cutest_cint_ueh_, :Float64),)
  @eval begin
    function ueh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      ne::StrideOneVector{Cint},
      lhe_ptr::StrideOneVector{Cint},
      he_row_ptr::StrideOneVector{Cint},
      he_val_ptr::StrideOneVector{Cint},
      lhe_row::StrideOneVector{Cint},
      he_row::StrideOneVector{Cint},
      lhe_val::StrideOneVector{Cint},
      he_val::StrideOneVector{Cdouble},
      byrows::StrideOneVector{Bool},
    )
      $cutest_cint_ueh(
        status,
        n,
        x,
        ne,
        lhe_ptr,
        he_row_ptr,
        he_val_ptr,
        lhe_row,
        he_row,
        lhe_val,
        he_val,
        byrows,
      )
    end
  end
end

"""# ugrdh
The ugrdh subroutine evaluates the gradient and Hessian matrix of the
objective function of the problem decoded from a SIF file by the
script sifdecoder at the point X. This Hessian matrix is stored as a
dense matrix. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to the
simple bounds xl≤x≤xu. The objective function is group-partially
separable.

For more information, run the shell command

    man cutest_ugrdh

Usage:

    ugrdh(status, n, x, g, lh1, h)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - g:       [OUT] Vector{Cdouble}
  - lh1:     [IN] Vector{Cint}
  - h:       [OUT] Matrix{Cdouble}
"""
function ugrdh end

for (cutest_ugrdh, T) in ((:cutest_ugrdh_, :Float64),)
  @eval begin
    function ugrdh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      g::StrideOneVector{Cdouble},
      lh1::StrideOneVector{Cint},
      h::Matrix{Cdouble},
    )
      $cutest_ugrdh(status, n, x, g, lh1, h)
    end
  end
end

"""# ugrsh
The ugrsh subroutine evaluates the gradient and Hessian matrix of the
objective function of the problem decoded from a SIF file by the
script sifdecoder at the point X. This Hessian matrix is stored as a
sparse matrix in coordinate format. The problem under consideration is
to minimize or maximize an objective function f(x) over all x ∈ Rn
subject to the simple bounds xl≤x≤xu. The objective function is group-
partially separable.

For more information, run the shell command

    man cutest_ugrsh

Usage:

    ugrsh(status, n, x, g, nnzh, lh, h_val, h_row, h_col)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - g:       [OUT] Vector{Cdouble}
  - nnzh:    [OUT] Vector{Cint}
  - lh:      [IN] Vector{Cint}
  - h_val:   [OUT] Vector{Cdouble}
  - h_row:   [OUT] Vector{Cint}
  - h_col:   [OUT] Vector{Cint}
"""
function ugrsh end

for (cutest_ugrsh, T) in ((:cutest_ugrsh_, :Float64),)
  @eval begin
    function ugrsh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      g::StrideOneVector{Cdouble},
      nnzh::StrideOneVector{Cint},
      lh::StrideOneVector{Cint},
      h_val::StrideOneVector{Cdouble},
      h_row::StrideOneVector{Cint},
      h_col::StrideOneVector{Cint},
    )
      $cutest_ugrsh(status, n, x, g, nnzh, lh, h_val, h_row, h_col)
    end
  end
end

"""# ugreh
The ugreh subroutine evaluates the gradient and Hessian matrix of the
objective function of the problem decoded from a SIF file by the
script sifdecoder at the point X. This Hessian matrix is stored as a
sparse matrix in finite element format H=eΣ1He, where each square
symmetric element H sub e involves a small subset of the rows of the
Hessian matrix. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to the
simple bounds xl≤x≤xu. The objective function is group-partially
separable.

For more information, run the shell command

    man cutest_ugreh

Usage:

    ugreh(status, n, x, g, ne, lhe_ptr, he_row_ptr, he_val_ptr, lhe_row, he_row,
lhe_val, he_val, byrows)

  - status:     [OUT] Vector{Cint}
  - n:          [IN] Vector{Cint}
  - x:          [IN] Vector{Cdouble}
  - g:          [OUT] Vector{Cdouble}
  - ne:         [OUT] Vector{Cint}
  - lhe_ptr:    [IN] Vector{Cint}
  - he_row_ptr: [OUT] Vector{Cint}
  - he_val_ptr: [OUT] Vector{Cint}
  - lhe_row:    [IN] Vector{Cint}
  - he_row:     [OUT] Vector{Cint}
  - lhe_val:    [IN] Vector{Cint}
  - he_val:     [OUT] Vector{Cdouble}
  - byrows:     [IN] Vector{Bool}
"""
function ugreh end

for (cutest_cint_ugreh, T) in ((:cutest_cint_ugreh_, :Float64),)
  @eval begin
    function ugreh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      g::StrideOneVector{Cdouble},
      ne::StrideOneVector{Cint},
      lhe_ptr::StrideOneVector{Cint},
      he_row_ptr::StrideOneVector{Cint},
      he_val_ptr::StrideOneVector{Cint},
      lhe_row::StrideOneVector{Cint},
      he_row::StrideOneVector{Cint},
      lhe_val::StrideOneVector{Cint},
      he_val::StrideOneVector{Cdouble},
      byrows::StrideOneVector{Bool},
    )
      $cutest_cint_ugreh(
        status,
        n,
        x,
        g,
        ne,
        lhe_ptr,
        he_row_ptr,
        he_val_ptr,
        lhe_row,
        he_row,
        lhe_val,
        he_val,
        byrows,
      )
    end
  end
end

"""# uhprod
The uhprod subroutine forms the product of a vector with the Hessian
matrix of the objective function of the problem decoded from a SIF
file by the script sifdecoder at the point X. The problem under
consideration is to minimize or maximize an objective function f(x)
over all x ∈ Rn subject to the simple bounds xl≤x≤xu. The objective
function is group-partially separable.

For more information, run the shell command

    man cutest_uhprod

Usage:

    uhprod(status, n, goth, x, vector, result)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - goth:    [IN] Vector{Bool}
  - x:       [IN] Vector{Cdouble}
  - vector:  [IN] Vector{Cdouble}
  - result:  [OUT] Vector{Cdouble}
"""
function uhprod end

for (cutest_cint_uhprod, T) in ((:cutest_cint_uhprod_, :Float64),)
  @eval begin
    function uhprod(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      goth::StrideOneVector{Bool},
      x::StrideOneVector{Cdouble},
      vector::StrideOneVector{Cdouble},
      result::StrideOneVector{Cdouble},
    )
      $cutest_cint_uhprod(status, n, goth, x, vector, result)
    end
  end
end

"""# ushprod
The ushprod subroutine forms the product of a sparse vector with the
Hessian matrix of the objective function of the problem decoded from a
SIF file by the script sifdecoder at the point X. The problem under
consideration is to minimize or maximize an objective function f(x)
over all x ∈ Rn subject to the simple bounds xl≤x≤xu. The objective
function is group-partially separable.

For more information, run the shell command

    man cutest_ushprod

Usage:

    ushprod(status, n, goth, x, nnz_vector, index_nz_vector, vector, nnz_result,
index_nz_result, result)

  - status:          [OUT] Vector{Cint}
  - n:               [IN] Vector{Cint}
  - goth:            [IN] Vector{Bool}
  - x:               [IN] Vector{Cdouble}
  - nnz_vector:      [IN] Vector{Cint}
  - index_nz_vector: [IN] Vector{Cint}
  - vector:          [IN] Vector{Cdouble}
  - nnz_result:      [OUT] Vector{Cint}
  - index_nz_result: [OUT] Vector{Cint}
  - result:          [OUT] Vector{Cdouble}

Notice that `vector` and `result` should have allocated dimension of `n`.
"""
function ushprod end

for (cutest_cint_ushprod, T) in ((:cutest_cint_ushprod_, :Float64),)
  @eval begin
    function ushprod(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      goth::StrideOneVector{Bool},
      x::StrideOneVector{Cdouble},
      nnz_vector::StrideOneVector{Cint},
      index_nz_vector::StrideOneVector{Cint},
      vector::StrideOneVector{Cdouble},
      nnz_result::StrideOneVector{Cint},
      index_nz_result::StrideOneVector{Cint},
      result::StrideOneVector{Cdouble},
    )
      $cutest_cint_ushprod(
        status,
        n,
        goth,
        x,
        nnz_vector,
        index_nz_vector,
        vector,
        nnz_result,
        index_nz_result,
        result,
      )
    end
  end
end

"""# ubandh
The ubandh subroutine extracts the elements which lie within a band of
given semi-bandwidth out of the Hessian matrix of the objective
function of the problem decoded from a SIF file by the script
sifdecoder at the point X. The problem under consideration is to
minimize or maximize an objective function f(x) over all x ∈ Rn
subject to the simple bounds xl≤x≤xu. The objective function is group-
partially separable.

For more information, run the shell command

    man cutest_ubandh

Usage:

    ubandh(status, n, x, semibandwidth, h_band, lbandh, max_semibandwidth)

  - status:            [OUT] Vector{Cint}
  - n:                 [IN] Vector{Cint}
  - x:                 [IN] Vector{Cdouble}
  - semibandwidth:     [IN] Vector{Cint}
  - h_band:            [OUT] Matrix{Cdouble}
  - lbandh:            [IN] Vector{Cint}
  - max_semibandwidth: [OUT] Vector{Cint}
"""
function ubandh end

for (cutest_ubandh, T) in ((:cutest_ubandh_, :Float64),)
  @eval begin
    function ubandh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      semibandwidth::StrideOneVector{Cint},
      h_band::Matrix{Cdouble},
      lbandh::StrideOneVector{Cint},
      max_semibandwidth::StrideOneVector{Cint},
    )
      $cutest_ubandh(status, n, x, semibandwidth, h_band, lbandh, max_semibandwidth)
    end
  end
end

"""# cfn
The cfn subroutine evaluates the value of the objective function and
general constraint functions of the problem decoded from a SIF file by
the script sifdecoder at the point X. The problem under consideration
is to minimize or maximize an objective function f(x) over all x ∈ Rn
subject to general equations ci(x)=0, (i ∈ 1,...,mE), general
inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds
xl≤x≤xu. The objective function is group-partially separable and all
constraint functions are partially separable.

For more information, run the shell command

    man cutest_cfn

Usage:

    cfn(status, n, m, x, f, c)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - f:       [OUT] Vector{Cdouble}
  - c:       [OUT] Vector{Cdouble}
"""
function cfn end

for (cutest_cfn, T) in ((:cutest_cfn_, :Float64),)
  @eval begin
    function cfn(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      f::StrideOneVector{Cdouble},
      c::StrideOneVector{Cdouble},
    )
      $cutest_cfn(status, n, m, x, f, c)
    end
  end
end

"""# cofg
The cofg subroutine evaluates the value of the objective function of
the problem decoded from a SIF file by the script sifdecoder at the
point X, and possibly its gradient. The problem under consideration is
to minimize or maximize an objective function f(x) over all x ∈ Rn
subject to general equations ci(x)=0, (i ∈ 1,...,mE), general
inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds
xl≤x≤xu. The objective function is group-partially separable and all
constraint functions are partially separable.

For more information, run the shell command

    man cutest_cofg

Usage:

    cofg(status, n, x, f, g, grad)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - f:       [OUT] Vector{Cdouble}
  - g:       [OUT] Vector{Cdouble}
  - grad:    [IN] Vector{Bool}
"""
function cofg end

for (cutest_cint_cofg, T) in ((:cutest_cint_cofg_, :Float64),)
  @eval begin
    function cofg(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      f::StrideOneVector{Cdouble},
      g::StrideOneVector{Cdouble},
      grad::StrideOneVector{Bool},
    )
      $cutest_cint_cofg(status, n, x, f, g, grad)
    end
  end
end

"""# cofsg
The cofsg subroutine evaluates the value of the objective function of
the problem decoded from a SIF file by the script sifdecoder at the
point X, and possibly its gradient in sparse format. The problem under
consideration is to minimize or maximize an objective function f(x)
over all x ∈ Rn subject to general equations ci(x)=0, (i ∈ 1,...,mE),
general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple
bounds xl≤x≤xu. The objective function is group-partially separable
and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_cofsg

Usage:

    cofsg(status, n, x, f, nnzg, lg, g_val, g_var, grad)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - f:       [OUT] Vector{Cdouble}
  - nnzg:    [OUT] Vector{Cint}
  - lg:      [IN] Vector{Cint}
  - g_val:   [OUT] Vector{Cdouble}
  - g_var:   [OUT] Vector{Cint}
  - grad:    [IN] Vector{Bool}
"""
function cofsg end

for (cutest_cint_cofsg, T) in ((:cutest_cint_cofsg_, :Float64),)
  @eval begin
    function cofsg(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      f::StrideOneVector{Cdouble},
      nnzg::StrideOneVector{Cint},
      lg::StrideOneVector{Cint},
      g_val::StrideOneVector{Cdouble},
      g_var::StrideOneVector{Cint},
      grad::StrideOneVector{Bool},
    )
      $cutest_cint_cofsg(status, n, x, f, nnzg, lg, g_val, g_var, grad)
    end
  end
end

"""# ccfg
The ccfg subroutine evaluates the values of the constraint functions
of the problem decoded from a SIF file by the script sifdecoder at the
point X, and possibly their gradients. The problem under consideration
is to minimize or maximize an objective function f(x) over all x ∈ Rn
subject to general equations ci(x)=0, (i ∈ 1,...,mE), general
inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds
xl≤x≤xu. The objective function is group-partially separable and all
constraint functions are partially separable.

For more information, run the shell command

    man cutest_ccfg

Usage:

    ccfg(status, n, m, x, c, jtrans, lcjac1, lcjac2, cjac, grad)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - c:       [OUT] Vector{Cdouble}
  - jtrans:  [IN] Vector{Bool}
  - lcjac1:  [IN] Vector{Cint}
  - lcjac2:  [IN] Vector{Cint}
  - cjac:    [OUT] Matrix{Cdouble}
  - grad:    [IN] Vector{Bool}
"""
function ccfg end

for (cutest_cint_ccfg, T) in ((:cutest_cint_ccfg_, :Float64),)
  @eval begin
    function ccfg(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      c::StrideOneVector{Cdouble},
      jtrans::StrideOneVector{Bool},
      lcjac1::StrideOneVector{Cint},
      lcjac2::StrideOneVector{Cint},
      cjac::Matrix{Cdouble},
      grad::StrideOneVector{Bool},
    )
      $cutest_cint_ccfg(status, n, m, x, c, jtrans, lcjac1, lcjac2, cjac, grad)
    end
  end
end

"""# clfg
The clfg subroutine evaluates the value of the Lagrangian function
l(x,y)=f(x)+yTc(x) for the problem decoded from a SIF file by the
script sifdecoder at the point (X,Y), and possibly its gradient. The
problem under consideration is to minimize or maximize an objective
function f(x) over all x ∈ Rn subject to general equations ci(x)=0, (i
∈ 1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m),
and simple bounds xl≤x≤xu. The objective function is group-partially
separable and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_clfg

Usage:

    clfg(status, n, m, x, y, f, g, grad)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - y:       [IN] Vector{Cdouble}
  - f:       [OUT] Vector{Cdouble}
  - g:       [OUT] Vector{Cdouble}
  - grad:    [IN] Vector{Bool}
"""
function clfg end

for (cutest_cint_clfg, T) in ((:cutest_cint_clfg_, :Float64),)
  @eval begin
    function clfg(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      f::StrideOneVector{Cdouble},
      g::StrideOneVector{Cdouble},
      grad::StrideOneVector{Bool},
    )
      $cutest_cint_clfg(status, n, m, x, y, f, g, grad)
    end
  end
end

"""# cgr
The cgr subroutine evaluates the gradients of the general constraints
and of either the objective function f(x) or the Lagrangian function
l(x,y)=f(x)+yTc(x) corresponding to the problem decoded from a SIF
file by the script sifdecoder at the point (x,y)= (X,Y). The problem
under consideration is to minimize or maximize an objective function
f(x) over all x ∈ Rn subject to general equations ci(x)=0, (i ∈
1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m),
and simple bounds xl≤x≤xu. The objective function is group-partially
separable and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_cgr

Usage:

    cgr(status, n, m, x, y, grlagf, g, jtrans, lj1, lj2, j_val)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - y:       [IN] Vector{Cdouble}
  - grlagf:  [IN] Vector{Bool}
  - g:       [OUT] Vector{Cdouble}
  - jtrans:  [IN] Vector{Bool}
  - lj1:     [IN] Vector{Cint}
  - lj2:     [IN] Vector{Cint}
  - j_val:   [OUT] Matrix{Cdouble}
"""
function cgr end

for (cutest_cint_cgr, T) in ((:cutest_cint_cgr_, :Float64),)
  @eval begin
    function cgr(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      grlagf::StrideOneVector{Bool},
      g::StrideOneVector{Cdouble},
      jtrans::StrideOneVector{Bool},
      lj1::StrideOneVector{Cint},
      lj2::StrideOneVector{Cint},
      j_val::Matrix{Cdouble},
    )
      $cutest_cint_cgr(status, n, m, x, y, grlagf, g, jtrans, lj1, lj2, j_val)
    end
  end
end

"""# csgr
The csgr subroutine evaluates the gradients of the general constraints
and of either the objective function or the Lagrangian function
l(x,y)=f(x)+yTc(x) corresponding to the problem decoded from a SIF
file by the script sifdecoder at the point (x,y)= (X,Y). It also
evaluates the Hessian matrix of the Lagrangian function at (x,y). The
gradients are stored in a sparse format. The problem under
consideration is to minimize or maximize an objective function f(x)
over all x ∈ Rn subject to general equations ci(x)=0, (i ∈ 1,...,mE),
general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple
bounds xl≤x≤xu. The objective function is group-partially separable
and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_csgr

Usage:

    csgr(status, n, m, x, y, grlagf, nnzj, lj, j_val, j_var, j_fun)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - y:       [IN] Vector{Cdouble}
  - grlagf:  [IN] Vector{Bool}
  - nnzj:    [OUT] Vector{Cint}
  - lj:      [IN] Vector{Cint}
  - j_val:   [OUT] Vector{Cdouble}
  - j_var:   [OUT] Vector{Cint}
  - j_fun:   [OUT] Vector{Cint}
"""
function csgr end

for (cutest_cint_csgr, T) in ((:cutest_cint_csgr_, :Float64),)
  @eval begin
    function csgr(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      grlagf::StrideOneVector{Bool},
      nnzj::StrideOneVector{Cint},
      lj::StrideOneVector{Cint},
      j_val::StrideOneVector{Cdouble},
      j_var::StrideOneVector{Cint},
      j_fun::StrideOneVector{Cint},
    )
      $cutest_cint_csgr(status, n, m, x, y, grlagf, nnzj, lj, j_val, j_var, j_fun)
    end
  end
end

"""# ccfsg
The ccfsg subroutine evaluates the values of the constraint functions
of the problem decoded from a SIF file by the script sifdecoder at the
point X, and possibly their gradients in the constrained minimization
case. The gradients are stored in sparse format. The problem under
consideration is to minimize or maximize an objective function f(x)
over all x ∈ Rn subject to general equations ci(x)=0, (i ∈ 1,...,mE),
general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple
bounds xl≤x≤xu. The objective function is group-partially separable
and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_ccfsg

Usage:

    ccfsg(status, n, m, x, c, nnzj, lj, j_val, j_var, j_fun, grad)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - c:       [OUT] Vector{Cdouble}
  - nnzj:    [OUT] Vector{Cint}
  - lj:      [IN] Vector{Cint}
  - j_val:   [OUT] Vector{Cdouble}
  - j_var:   [OUT] Vector{Cint}
  - j_fun:   [OUT] Vector{Cint}
  - grad:    [IN] Vector{Bool}
"""
function ccfsg end

for (cutest_cint_ccfsg, T) in ((:cutest_cint_ccfsg_, :Float64),)
  @eval begin
    function ccfsg(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      c::StrideOneVector{Cdouble},
      nnzj::StrideOneVector{Cint},
      lj::StrideOneVector{Cint},
      j_val::StrideOneVector{Cdouble},
      j_var::StrideOneVector{Cint},
      j_fun::StrideOneVector{Cint},
      grad::StrideOneVector{Bool},
    )
      $cutest_cint_ccfsg(status, n, m, x, c, nnzj, lj, j_val, j_var, j_fun, grad)
    end
  end
end

"""# ccifg
The ccifg subroutine evaluates the value of a particular constraint
function of the problem decoded from a SIF file by the script
sifdecoder at the point X, and possibly its gradient in the
constrained minimization case. The problem under consideration is to
minimize or maximize an objective function f(x) over all x ∈ Rn
subject to general equations ci(x)=0, (i ∈ 1,...,mE), general
inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds
xl≤x≤xu. The objective function is group-partially separable and all
constraint functions are partially separable.

For more information, run the shell command

    man cutest_ccifg

Usage:

    ccifg(status, n, icon, x, ci, gci, grad)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - icon:    [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - ci:      [OUT] Vector{Cdouble}
  - gci:     [OUT] Vector{Cdouble}
  - grad:    [IN] Vector{Bool}
"""
function ccifg end

for (cutest_cint_ccifg, T) in ((:cutest_cint_ccifg_, :Float64),)
  @eval begin
    function ccifg(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      icon::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      ci::StrideOneVector{Cdouble},
      gci::StrideOneVector{Cdouble},
      grad::StrideOneVector{Bool},
    )
      $cutest_cint_ccifg(status, n, icon, x, ci, gci, grad)
    end
  end
end

"""# ccifsg
The ccifsg subroutine evaluates the value of a particular constraint
function of the problem decoded from a SIF file by the script
sifdecoder at the point X, and possibly its gradient in the
constrained minimization case. The gradient is stored in sparse
format. The problem under consideration is to minimize or maximize an
objective function f(x) over all x ∈ Rn subject to general equations
ci(x)=0, (i ∈ 1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈
mE+1,...,m), and simple bounds xl≤x≤xu. The objective function is
group-partially separable and all constraint functions are partially
separable.

For more information, run the shell command

    man cutest_ccifsg

Usage:

    ccifsg(status, n, icon, x, ci, nnzgci, lgci, gci_val, gci_var, grad)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - icon:    [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - ci:      [OUT] Vector{Cdouble}
  - nnzgci:  [OUT] Vector{Cint}
  - lgci:    [IN] Vector{Cint}
  - gci_val: [OUT] Vector{Cdouble}
  - gci_var: [OUT] Vector{Cint}
  - grad:    [IN] Vector{Bool}
"""
function ccifsg end

for (cutest_cint_ccifsg, T) in ((:cutest_cint_ccifsg_, :Float64),)
  @eval begin
    function ccifsg(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      icon::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      ci::StrideOneVector{Cdouble},
      nnzgci::StrideOneVector{Cint},
      lgci::StrideOneVector{Cint},
      gci_val::StrideOneVector{Cdouble},
      gci_var::StrideOneVector{Cint},
      grad::StrideOneVector{Bool},
    )
      $cutest_cint_ccifsg(status, n, icon, x, ci, nnzgci, lgci, gci_val, gci_var, grad)
    end
  end
end

"""# cgrdh
The cgrdh subroutine evaluates the gradients of the general
constraints and of either the objective function f(x) or the
Lagrangian function l(x,y)=f(x)+yTc(x) corresponding to the problem
decoded from a SIF file by the script sifdecoder at the point (x,y)=
(X,Y). It also evaluates the Hessian matrix of the Lagrangian function
at (x,y). The gradients and matrices are stored in a dense format. The
problem under consideration is to minimize or maximize an objective
function f(x) over all x ∈ Rn subject to general equations ci(x)=0, (i
∈ 1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m),
and simple bounds xl≤x≤xu. The objective function is group-partially
separable and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_cgrdh

Usage:

    cgrdh(status, n, m, x, y, grlagf, g, jtrans, lj1, lj2, j_val, lh1, h_val)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - y:       [IN] Vector{Cdouble}
  - grlagf:  [IN] Vector{Bool}
  - g:       [OUT] Vector{Cdouble}
  - jtrans:  [IN] Vector{Bool}
  - lj1:     [IN] Vector{Cint}
  - lj2:     [IN] Vector{Cint}
  - j_val:   [OUT] Matrix{Cdouble}
  - lh1:     [IN] Vector{Cint}
  - h_val:   [OUT] Matrix{Cdouble}
"""
function cgrdh end

for (cutest_cint_cgrdh, T) in ((:cutest_cint_cgrdh_, :Float64),)
  @eval begin
    function cgrdh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      grlagf::StrideOneVector{Bool},
      g::StrideOneVector{Cdouble},
      jtrans::StrideOneVector{Bool},
      lj1::StrideOneVector{Cint},
      lj2::StrideOneVector{Cint},
      j_val::Matrix{Cdouble},
      lh1::StrideOneVector{Cint},
      h_val::Matrix{Cdouble},
    )
      $cutest_cint_cgrdh(status, n, m, x, y, grlagf, g, jtrans, lj1, lj2, j_val, lh1, h_val)
    end
  end
end

"""# cdh
The cdh subroutine evaluates the Hessian matrix of the Lagrangian
function l(x,y)=f(x)+yTc(x) for the problem decoded from a SIF file by
the script sifdecoder at the point (x,y)= (X,Y). The matrix is stored
as a dense matrix. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_cdh

Usage:

    cdh(status, n, m, x, y, lh1, h_val)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - y:       [IN] Vector{Cdouble}
  - lh1:     [IN] Vector{Cint}
  - h_val:   [OUT] Matrix{Cdouble}
"""
function cdh end

for (cutest_cdh, T) in ((:cutest_cdh_, :Float64),)
  @eval begin
    function cdh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      lh1::StrideOneVector{Cint},
      h_val::Matrix{Cdouble},
    )
      $cutest_cdh(status, n, m, x, y, lh1, h_val)
    end
  end
end

"""# cdhc
The cdhc subroutine evaluates the Hessian matrix of the constraint
part of the Lagrangian function yTc(x) for the problem decoded from a
SIF file by the script sifdecoder at the point (x,y)= (X,Y). The
matrix is stored as a dense matrix. The problem under consideration is
to minimize or maximize an objective function f(x) over all x ∈ Rn
subject to general equations ci(x)=0, (i ∈ 1,...,mE), general
inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds
xl≤x≤xu. The objective function is group-partially separable and all
constraint functions are partially separable.

For more information, run the shell command

    man cutest_cdhc

Usage:

    cdhc(status, n, m, x, y, lh1, h_val)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - y:       [IN] Vector{Cdouble}
  - lh1:     [IN] Vector{Cint}
  - h_val:   [OUT] Matrix{Cdouble}
"""
function cdhc end

for (cutest_cdhc, T) in ((:cutest_cdhc_, :Float64),)
  @eval begin
    function cdhc(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      lh1::StrideOneVector{Cint},
      h_val::Matrix{Cdouble},
    )
      $cutest_cdhc(status, n, m, x, y, lh1, h_val)
    end
  end
end

"""# cshp
The cshp subroutine evaluates the sparsity pattern of the Hessian of
the Lagrangian function l(x,y)=f(x)+yTc(x) for the problem, decoded
from a SIF file by the script sifdecoder, in coordinate format. The
problem under consideration is to minimize or maximize an objective
function f(x) over all x ∈ Rn subject to general equations ci(x)=0, (i
∈ 1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m),
and simple bounds xl≤x≤xu. The objective function is group-partially
separable and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_cshp

Usage:

    cshp(status, n, nnzh, lh, h_row, h_col)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - nnzh:    [OUT] Vector{Cint}
  - lh:      [IN] Vector{Cint}
  - h_row:   [OUT] Vector{Cint}
  - h_col:   [OUT] Vector{Cint}
"""
function cshp end

for (cutest_cshp, T) in ((:cutest_cshp_, :Float64),)
  @eval begin
    function cshp(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      nnzh::StrideOneVector{Cint},
      lh::StrideOneVector{Cint},
      h_row::StrideOneVector{Cint},
      h_col::StrideOneVector{Cint},
    )
      $cutest_cshp(status, n, nnzh, lh, h_row, h_col)
    end
  end
end

"""# csh
The csh subroutine evaluates the Hessian of the Lagrangian function
l(x,y)=f(x)+yTc(x) for the problem decoded from a SIF file by the
script sifdecoder at the point (x,y)= (X,Y). The matrix is stored in
sparse format. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_csh

Usage:

    csh(status, n, m, x, y, nnzh, lh, h_val, h_row, h_col)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - y:       [IN] Vector{Cdouble}
  - nnzh:    [OUT] Vector{Cint}
  - lh:      [IN] Vector{Cint}
  - h_val:   [OUT] Vector{Cdouble}
  - h_row:   [OUT] Vector{Cint}
  - h_col:   [OUT] Vector{Cint}
"""
function csh end

for (cutest_csh, T) in ((:cutest_csh_, :Float64),)
  @eval begin
    function csh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      nnzh::StrideOneVector{Cint},
      lh::StrideOneVector{Cint},
      h_val::StrideOneVector{Cdouble},
      h_row::StrideOneVector{Cint},
      h_col::StrideOneVector{Cint},
    )
      $cutest_csh(status, n, m, x, y, nnzh, lh, h_val, h_row, h_col)
    end
  end
end

"""# cshc
The cshc subroutine evaluates the Hessian matrix of the constraint
part of the Lagrangian function yTc(x) for the problem decoded from a
SIF file by the script sifdecoder at the point (x,y)= (X,Y). The
matrix is stored in sparse format. The problem under consideration is
to minimize or maximize an objective function f(x) over all x ∈ Rn
subject to general equations ci(x)=0, (i ∈ 1,...,mE), general
inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds
xl≤x≤xu. The objective function is group-partially separable and all
constraint functions are partially separable.

For more information, run the shell command

    man cutest_cshc

Usage:

    cshc(status, n, m, x, y, nnzh, lh, h_val, h_row, h_col)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - y:       [IN] Vector{Cdouble}
  - nnzh:    [OUT] Vector{Cint}
  - lh:      [IN] Vector{Cint}
  - h_val:   [OUT] Vector{Cdouble}
  - h_row:   [OUT] Vector{Cint}
  - h_col:   [OUT] Vector{Cint}
"""
function cshc end

for (cutest_cshc, T) in ((:cutest_cshc_, :Float64),)
  @eval begin
    function cshc(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      nnzh::StrideOneVector{Cint},
      lh::StrideOneVector{Cint},
      h_val::StrideOneVector{Cdouble},
      h_row::StrideOneVector{Cint},
      h_col::StrideOneVector{Cint},
    )
      $cutest_cshc(status, n, m, x, y, nnzh, lh, h_val, h_row, h_col)
    end
  end
end

"""# ceh
The ceh subroutine evaluates the Hessian matrix of the Lagrangian
function l(x,y)=f(x)+yTc(x) for the problem decoded into OUTSDIF.d at
the point (x,y)= (X,Y). This Hessian matrix is stored as a sparse
matrix in finite element format H=eΣ1He, where each square symmetric
element He involves a small subset of the rows of the Hessian matrix.
The problem under consideration consists in minimizing (or maximizing)
an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_ceh

Usage:

    ceh(status, n, m, x, y, ne, lhe_ptr, he_row_ptr, he_val_ptr, lhe_row,
he_row, lhe_val, he_val, byrows)

  - status:     [OUT] Vector{Cint}
  - n:          [IN] Vector{Cint}
  - m:          [IN] Vector{Cint}
  - x:          [IN] Vector{Cdouble}
  - y:          [IN] Vector{Cdouble}
  - ne:         [OUT] Vector{Cint}
  - lhe_ptr:    [IN] Vector{Cint}
  - he_row_ptr: [OUT] Vector{Cint}
  - he_val_ptr: [OUT] Vector{Cint}
  - lhe_row:    [IN] Vector{Cint}
  - he_row:     [OUT] Vector{Cint}
  - lhe_val:    [IN] Vector{Cint}
  - he_val:     [OUT] Vector{Cdouble}
  - byrows:     [IN] Vector{Cint}
"""
function ceh end

for (cutest_ceh, T) in ((:cutest_ceh_, :Float64),)
  @eval begin
    function ceh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      ne::StrideOneVector{Cint},
      lhe_ptr::StrideOneVector{Cint},
      he_row_ptr::StrideOneVector{Cint},
      he_val_ptr::StrideOneVector{Cint},
      lhe_row::StrideOneVector{Cint},
      he_row::StrideOneVector{Cint},
      lhe_val::StrideOneVector{Cint},
      he_val::StrideOneVector{Cdouble},
      byrows::StrideOneVector{Cint},
    )
      $cutest_ceh(
        status,
        n,
        m,
        x,
        y,
        ne,
        lhe_ptr,
        he_row_ptr,
        he_val_ptr,
        lhe_row,
        he_row,
        lhe_val,
        he_val,
        byrows,
      )
    end
  end
end

"""# cidh
The cidh subroutine evaluates the Hessian matrix of either the
objective function or a constraint function for the problem decoded
from a SIF file by the script sifdecoder at the point X, and possibly
its gradient. The matrix is stored as a dense matrix. The problem
under consideration is to minimize or maximize an objective function
f(x) over all x ∈ Rn subject to general equations ci(x)=0, (i ∈
1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m),
and simple bounds xl≤x≤xu. The objective function is group-partially
separable and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_cidh

Usage:

    cidh(status, n, x, iprob, lh1, h)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - iprob:   [IN] Vector{Cint}
  - lh1:     [IN] Vector{Cint}
  - h:       [OUT] Matrix{Cdouble}
"""
function cidh end

for (cutest_cidh, T) in ((:cutest_cidh_, :Float64),)
  @eval begin
    function cidh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      iprob::StrideOneVector{Cint},
      lh1::StrideOneVector{Cint},
      h::Matrix{Cdouble},
    )
      $cutest_cidh(status, n, x, iprob, lh1, h)
    end
  end
end

"""# cish
The cish subroutine evaluates the Hessian of a particular constraint
function or the objective function for the problem decoded from a SIF
file by the script sifdecoder at the point X, and possibly its
gradient. The matrix is stored in sparse format. The problem under
consideration is to minimize or maximize an objective function f(x)
over all x ∈ Rn subject to general equations ci(x)=0, (i ∈ 1,...,mE),
general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple
bounds xl≤x≤xu. The objective function is group-partially separable
and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_cish

Usage:

    cish(status, n, x, iprob, nnzh, lh, h_val, h_row, h_col)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - iprob:   [IN] Vector{Cint}
  - nnzh:    [OUT] Vector{Cint}
  - lh:      [IN] Vector{Cint}
  - h_val:   [OUT] Vector{Cdouble}
  - h_row:   [OUT] Vector{Cint}
  - h_col:   [OUT] Vector{Cint}
"""
function cish end

for (cutest_cish, T) in ((:cutest_cish_, :Float64),)
  @eval begin
    function cish(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      iprob::StrideOneVector{Cint},
      nnzh::StrideOneVector{Cint},
      lh::StrideOneVector{Cint},
      h_val::StrideOneVector{Cdouble},
      h_row::StrideOneVector{Cint},
      h_col::StrideOneVector{Cint},
    )
      $cutest_cish(status, n, x, iprob, nnzh, lh, h_val, h_row, h_col)
    end
  end
end

"""# csgrsh
The csgrsh subroutine evaluates the gradients of the general
constraints, the Hessian matrix of the Lagrangian function
l(x,y)=f(x)+yTc(x) and the gradient of either the objective function
or the Lagrangian corresponding to the problem decoded from a SIF file
by the script sifdecoder at the point (x,y)= (X,Y). The data is stored
in sparse format. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_csgrsh

Usage:

    csgrsh(status, n, m, x, y, grlagf, nnzj, lj, j_val, j_var, j_fun, nnzh, lh,
h_val, h_row, h_col)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - y:       [IN] Vector{Cdouble}
  - grlagf:  [IN] Vector{Bool}
  - nnzj:    [OUT] Vector{Cint}
  - lj:      [IN] Vector{Cint}
  - j_val:   [OUT] Vector{Cdouble}
  - j_var:   [OUT] Vector{Cint}
  - j_fun:   [OUT] Vector{Cint}
  - nnzh:    [OUT] Vector{Cint}
  - lh:      [IN] Vector{Cint}
  - h_val:   [OUT] Vector{Cdouble}
  - h_row:   [OUT] Vector{Cint}
  - h_col:   [OUT] Vector{Cint}
"""
function csgrsh end

for (cutest_cint_csgrsh, T) in ((:cutest_cint_csgrsh_, :Float64),)
  @eval begin
    function csgrsh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      grlagf::StrideOneVector{Bool},
      nnzj::StrideOneVector{Cint},
      lj::StrideOneVector{Cint},
      j_val::StrideOneVector{Cdouble},
      j_var::StrideOneVector{Cint},
      j_fun::StrideOneVector{Cint},
      nnzh::StrideOneVector{Cint},
      lh::StrideOneVector{Cint},
      h_val::StrideOneVector{Cdouble},
      h_row::StrideOneVector{Cint},
      h_col::StrideOneVector{Cint},
    )
      $cutest_cint_csgrsh(
        status,
        n,
        m,
        x,
        y,
        grlagf,
        nnzj,
        lj,
        j_val,
        j_var,
        j_fun,
        nnzh,
        lh,
        h_val,
        h_row,
        h_col,
      )
    end
  end
end

"""# csgreh
The csgreh subroutine evaluates both the gradients of the general
constraint functions and the Hessian matrix of the Lagrangian function
l(x,y)=f(x)+yTc(x) for the problem decoded into OUTSDIF.d at the point
(x,y)= (X,Y). This Hessian matrix is stored as a sparse matrix in
finite element format H=eΣ1He, where each square symmetric element He
involves a small subset of the rows of the Hessian matrix. The
subroutine also obtains the gradient of either the objective function
or the Lagrangian function, stored in a sparse format. The problem
under consideration consists in minimizing (or maximizing) an
objective function f(x) over all x ∈ Rn subject to general equations
ci(x)=0, (i ∈ 1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈
mE+1,...,m), and simple bounds xl≤x≤xu. The objective function is
group-partially separable and all constraint functions are partially
separable.

For more information, run the shell command

    man cutest_csgreh

Usage:

    csgreh(status, n, m, x, y, grlagf, nnzj, lj, j_val, j_var, j_fun, ne,
lhe_ptr, he_row_ptr, he_val_ptr, lhe_row, he_row, lhe_val, he_val,
byrows)

  - status:     [OUT] Vector{Cint}
  - n:          [IN] Vector{Cint}
  - m:          [IN] Vector{Cint}
  - x:          [IN] Vector{Cdouble}
  - y:          [IN] Vector{Cdouble}
  - grlagf:     [IN] Vector{Bool}
  - nnzj:       [OUT] Vector{Cint}
  - lj:         [IN] Vector{Cint}
  - j_val:      [OUT] Vector{Cdouble}
  - j_var:      [OUT] Vector{Cint}
  - j_fun:      [OUT] Vector{Cint}
  - ne:         [OUT] Vector{Cint}
  - lhe_ptr:    [IN] Vector{Cint}
  - he_row_ptr: [OUT] Vector{Cint}
  - he_val_ptr: [OUT] Vector{Cint}
  - lhe_row:    [IN] Vector{Cint}
  - he_row:     [OUT] Vector{Cint}
  - lhe_val:    [IN] Vector{Cint}
  - he_val:     [OUT] Vector{Cdouble}
  - byrows:     [IN] Vector{Bool}
"""
function csgreh end

for (cutest_cint_csgreh, T) in ((:cutest_cint_csgreh_, :Float64),)
  @eval begin
    function csgreh(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      grlagf::StrideOneVector{Bool},
      nnzj::StrideOneVector{Cint},
      lj::StrideOneVector{Cint},
      j_val::StrideOneVector{Cdouble},
      j_var::StrideOneVector{Cint},
      j_fun::StrideOneVector{Cint},
      ne::StrideOneVector{Cint},
      lhe_ptr::StrideOneVector{Cint},
      he_row_ptr::StrideOneVector{Cint},
      he_val_ptr::StrideOneVector{Cint},
      lhe_row::StrideOneVector{Cint},
      he_row::StrideOneVector{Cint},
      lhe_val::StrideOneVector{Cint},
      he_val::StrideOneVector{Cdouble},
      byrows::StrideOneVector{Bool},
    )
      $cutest_cint_csgreh(
        status,
        n,
        m,
        x,
        y,
        grlagf,
        nnzj,
        lj,
        j_val,
        j_var,
        j_fun,
        ne,
        lhe_ptr,
        he_row_ptr,
        he_val_ptr,
        lhe_row,
        he_row,
        lhe_val,
        he_val,
        byrows,
      )
    end
  end
end

"""# chprod
The chprod subroutine forms the product of a vector with the Hessian
matrix of the Lagrangian function l(x,y)=f(x)+yTc(x) corresponding to
the problem decoded from a SIF file by the script sifdecoder at the
point (x,y)= (X,Y). The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_chprod

Usage:

    chprod(status, n, m, goth, x, y, vector, result)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - goth:    [IN] Vector{Bool}
  - x:       [IN] Vector{Cdouble}
  - y:       [IN] Vector{Cdouble}
  - vector:  [IN] Vector{Cdouble}
  - result:  [OUT] Vector{Cdouble}
"""
function chprod end

for (cutest_cint_chprod, T) in ((:cutest_cint_chprod_, :Float64),)
  @eval begin
    function chprod(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      goth::StrideOneVector{Bool},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      vector::StrideOneVector{Cdouble},
      result::StrideOneVector{Cdouble},
    )
      $cutest_cint_chprod(status, n, m, goth, x, y, vector, result)
    end
  end
end

"""# cshprod
The cshprod subroutine forms the product of a sparse vector with the
Hessian matrix of the Lagrangian function l(x,y)=f(x)+yTc(x)
corresponding to the problem decoded from a SIF file by the script
sifdecoder at the point (x,y)= (X,Y). The problem under consideration
is to minimize or maximize an objective function f(x) over all x ∈ Rn
subject to general equations ci(x)=0, (i ∈ 1,...,mE), general
inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds
xl≤x≤xu. The objective function is group-partially separable and all
constraint functions are partially separable.

For more information, run the shell command

    man cutest_cshprod

Usage:

    cshprod(status, n, m, goth, x, y, nnz_vector, index_nz_vector, vector,
nnz_result, index_nz_result, result)

  - status:          [OUT] Vector{Cint}
  - n:               [IN] Vector{Cint}
  - m:               [IN] Vector{Cint}
  - goth:            [IN] Vector{Cint}
  - x:               [IN] Vector{Cdouble}
  - y:               [IN] Vector{Cdouble}
  - nnz_vector:      [IN] Vector{Cint}
  - index_nz_vector: [IN] Vector{Cint}
  - vector:          [IN] Vector{Cdouble}
  - nnz_result:      [OUT] Vector{Cint}
  - index_nz_result: [OUT] Vector{Cint}
  - result:          [OUT] Vector{Cdouble}

Notice that `vector` and `result` should have allocated dimension of `n`.
"""
function cshprod end

for (cutest_cshprod, T) in ((:cutest_cshprod_, :Float64),)
  @eval begin
    function cshprod(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      goth::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      nnz_vector::StrideOneVector{Cint},
      index_nz_vector::StrideOneVector{Cint},
      vector::StrideOneVector{Cdouble},
      nnz_result::StrideOneVector{Cint},
      index_nz_result::StrideOneVector{Cint},
      result::StrideOneVector{Cdouble},
    )
      $cutest_cshprod(
        status,
        n,
        m,
        goth,
        x,
        y,
        nnz_vector,
        index_nz_vector,
        vector,
        nnz_result,
        index_nz_result,
        result,
      )
    end
  end
end

"""# chcprod
The chcprod subroutine forms the product of a vector with the Hessian
matrix of the constraint part of the Lagrangian function yTc(x) of the
problem decoded from a SIF file by the script sifdecoder at the point
(x,y)= (X,Y). The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_chcprod

Usage:

    chcprod(status, n, m, goth, x, y, vector, result)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - goth:    [IN] Vector{Bool}
  - x:       [IN] Vector{Cdouble}
  - y:       [IN] Vector{Cdouble}
  - vector:  [IN] Vector{Cdouble}
  - result:  [OUT] Vector{Cdouble}
"""
function chcprod end

for (cutest_cint_chcprod, T) in ((:cutest_cint_chcprod_, :Float64),)
  @eval begin
    function chcprod(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      goth::StrideOneVector{Bool},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      vector::StrideOneVector{Cdouble},
      result::StrideOneVector{Cdouble},
    )
      $cutest_cint_chcprod(status, n, m, goth, x, y, vector, result)
    end
  end
end

"""# cshcprod
The cshcprod subroutine forms the product of a sparse vector with the
Hessian matrix of the constraint part of the Lagrangian function
yTc(x) corresponding to the problem decoded from a SIF file by the
script sifdecoder at the point (x,y)= (X,Y). The problem under
consideration is to minimize or maximize an objective function f(x)
over all x ∈ Rn subject to general equations ci(x)=0, (i ∈ 1,...,mE),
general inequalities ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple
bounds xl≤x≤xu. The objective function is group-partially separable
and all constraint functions are partially separable.

For more information, run the shell command

    man cutest_cshcprod

Usage:

    cshcprod(status, n, m, goth, x, y, nnz_vector, index_nz_vector, vector,
nnz_result, index_nz_result, result)

  - status:          [OUT] Vector{Cint}
  - n:               [IN] Vector{Cint}
  - m:               [IN] Vector{Cint}
  - goth:            [IN] Vector{Bool}
  - x:               [IN] Vector{Cdouble}
  - y:               [IN] Vector{Cdouble}
  - nnz_vector:      [IN] Vector{Cint}
  - index_nz_vector: [IN] Vector{Cint}
  - vector:          [IN] Vector{Cdouble}
  - nnz_result:      [OUT] Vector{Cint}
  - index_nz_result: [OUT] Vector{Cint}
  - result:          [OUT] Vector{Cdouble}
"""
function cshcprod end

for (cutest_cint_cshcprod, T) in ((:cutest_cint_cshcprod_, :Float64),)
  @eval begin
    function cshcprod(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      goth::StrideOneVector{Bool},
      x::StrideOneVector{Cdouble},
      y::StrideOneVector{Cdouble},
      nnz_vector::StrideOneVector{Cint},
      index_nz_vector::StrideOneVector{Cint},
      vector::StrideOneVector{Cdouble},
      nnz_result::StrideOneVector{Cint},
      index_nz_result::StrideOneVector{Cint},
      result::StrideOneVector{Cdouble},
    )
      $cutest_cint_cshcprod(
        status,
        n,
        m,
        goth,
        x,
        y,
        nnz_vector,
        index_nz_vector,
        vector,
        nnz_result,
        index_nz_result,
        result,
      )
    end
  end
end

"""# cjprod
The cjprod subroutine forms the product of a vector with the Jacobian
matrix, or with its transpose, of the constraint functions of the
problem decoded from a SIF file by the script sifdecoder evaluated at
the point X. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_cjprod

Usage:

    cjprod(status, n, m, gotj, jtrans, x, vector, lvector, result, lresult)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - gotj:    [IN] Vector{Bool}
  - jtrans:  [IN] Vector{Bool}
  - x:       [IN] Vector{Cdouble}
  - vector:  [IN] Vector{Cdouble}
  - lvector: [IN] Vector{Cint}
  - result:  [OUT] Vector{Cdouble}
  - lresult: [IN] Vector{Cint}
"""
function cjprod end

for (cutest_cint_cjprod, T) in ((:cutest_cint_cjprod_, :Float64),)
  @eval begin
    function cjprod(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      gotj::StrideOneVector{Bool},
      jtrans::StrideOneVector{Bool},
      x::StrideOneVector{Cdouble},
      vector::StrideOneVector{Cdouble},
      lvector::StrideOneVector{Cint},
      result::StrideOneVector{Cdouble},
      lresult::StrideOneVector{Cint},
    )
      $cutest_cint_cjprod(status, n, m, gotj, jtrans, x, vector, lvector, result, lresult)
    end
  end
end

"""# csjprod
The csjprod subroutine forms the product of a sparse vector with the
Jacobian matrix, or with its transpose, of the constraint functions of
the problem decoded from a SIF file by the script sifdecoder evaluated
at the point X. The problem under consideration is to minimize or
maximize an objective function f(x) over all x ∈ Rn subject to general
equations ci(x)=0, (i ∈ 1,...,mE), general inequalities
ci(x)≤ci(x)≤ci(x), (i ∈ mE+1,...,m), and simple bounds xl≤x≤xu. The
objective function is group-partially separable and all constraint
functions are partially separable.

For more information, run the shell command

    man cutest_csjprod

Usage:

    csjprod(status, n, m, gotj, jtrans, x, nnz_vector, index_nz_vector, vector,
lvector, nnz_result, index_nz_result, result, lresult)

  - status:          [OUT] Vector{Cint}
  - n:               [IN] Vector{Cint}
  - m:               [IN] Vector{Cint}
  - gotj:            [IN] Vector{Bool}
  - jtrans:          [IN] Vector{Bool}
  - x:               [IN] Vector{Cdouble}
  - nnz_vector:      [IN] Vector{Cint}
  - index_nz_vector: [IN] Vector{Cint}
  - vector:          [IN] Vector{Cdouble}
  - lvector:         [IN] Vector{Cint}
  - nnz_result:      [OUT] Vector{Cint}
  - index_nz_result: [OUT] Vector{Cint}
  - result:          [OUT] Vector{Cdouble}
  - lresult:         [IN] Vector{Cint}
"""
function csjprod end

for (cutest_cint_csjprod, T) in ((:cutest_cint_csjprod_, :Float64),)
  @eval begin
    function csjprod(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      gotj::StrideOneVector{Bool},
      jtrans::StrideOneVector{Bool},
      x::StrideOneVector{Cdouble},
      nnz_vector::StrideOneVector{Cint},
      index_nz_vector::StrideOneVector{Cint},
      vector::StrideOneVector{Cdouble},
      lvector::StrideOneVector{Cint},
      nnz_result::StrideOneVector{Cint},
      index_nz_result::StrideOneVector{Cint},
      result::StrideOneVector{Cdouble},
      lresult::StrideOneVector{Cint},
    )
      $cutest_cint_csjprod(
        status,
        n,
        m,
        gotj,
        jtrans,
        x,
        nnz_vector,
        index_nz_vector,
        vector,
        lvector,
        nnz_result,
        index_nz_result,
        result,
        lresult,
      )
    end
  end
end

"""# cchprods
The cchprods subroutine forms the product of a vector with each of the
Hessian matrix of the constraint functions c(x) corresponding to the
problem decoded from a SIF file by the script sifdecoder at the point
x= X. The problem under consideration is to minimize or maximize an
objective function f(x) over all x ∈ Rn subject to general equations
ci(x)=0, (i ∈ 1,...,mE), general inequalities ci(x)≤ci(x)≤ci(x), (i ∈
mE+1,...,m), and simple bounds xl≤x≤xu. The objective function is
group-partially separable and all constraint functions are partially
separable.

For more information, run the shell command

    man cutest_cchprods

Usage:

    cchprods(status, n, m, goth, x, vector, lchp, chp_val, chp_ind, chp_ptr)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - goth:    [IN] Vector{Bool}
  - x:       [IN] Vector{Cdouble}
  - vector:  [IN] Vector{Cdouble}
  - lchp:    [IN] Vector{Cint}
  - chp_val: [OUT] Vector{Cdouble}
  - chp_ind: [IN] Vector{Cint}
  - chp_ptr: [IN] Vector{Cint}
"""
function cchprods end

for (cutest_cint_cchprods, T) in ((:cutest_cint_cchprods_, :Float64),)
  @eval begin
    function cchprods(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      goth::StrideOneVector{Bool},
      x::StrideOneVector{Cdouble},
      vector::StrideOneVector{Cdouble},
      lchp::StrideOneVector{Cint},
      chp_val::StrideOneVector{Cdouble},
      chp_ind::StrideOneVector{Cint},
      chp_ptr::StrideOneVector{Cint},
    )
      $cutest_cint_cchprods(status, n, m, goth, x, vector, lchp, chp_val, chp_ind, chp_ptr)
    end
  end
end

"""# cchprodsp
The cchprodsp subroutine obtains the sparsity structure used when forming the
product of a vector with each of the Hessian matrices of the constraint
functions c(x) corresponding to the problem decoded from a SIF file by the
script sifdecoder at the point x= X.

Usage:

    cchprodsp(status, m, lchp, chp_ind, chp_ptr)

  - status:  [OUT] Vector{Cint}
  - m:       [IN] Vector{Cint}
  - lchp:    [IN] Vector{Cint}
  - chp_ind: [IN] Vector{Cint}
  - chp_ptr: [IN] Vector{Cint}
"""
function cchprodsp end

for (cutest_cchprodsp, T) in ((:cutest_cchprodsp_, :Float64),)
  @eval begin
    function cchprodsp(
      status::StrideOneVector{Cint},
      m::StrideOneVector{Cint},
      lchp::StrideOneVector{Cint},
      chp_ind::StrideOneVector{Cint},
      chp_ptr::StrideOneVector{Cint},
    )
      $cutest_cchprodsp(status, m, lchp, chp_ind, chp_ptr)
    end
  end
end

"""# uterminate
The uterminate subroutine deallocates all workspace arrays created
since the last call to usetup.

For more information, run the shell command

    man cutest_uterminate

Usage:

    uterminate(status)

  - status:  [OUT] Vector{Cint}
"""
function uterminate end

for (cutest_uterminate, T) in ((:cutest_uterminate_, :Float64),)
  @eval begin
    function uterminate(status::StrideOneVector{Cint})
      $cutest_uterminate(status)
    end
  end
end

"""# cterminate
The uterminate subroutine deallocates all workspace arrays created
since the last call to csetup.

For more information, run the shell command

    man cutest_cterminate

Usage:

    cterminate(status)

  - status:  [OUT] Vector{Cint}
"""
function cterminate end

for (cutest_cterminate, T) in ((:cutest_cterminate_, :Float64),)
  @eval begin
    function cterminate(status::StrideOneVector{Cint})
      $cutest_cterminate(status)
    end
  end
end

"""# cifn
The cifn subroutine evaluates the value of either the objective function or a
constrainted function of the problem decoded from a SIF file by the script
sifdecoder at the point X, in the constrained minimization case.

For more information, run the shell command

    man cutest_cifn

Usage:



  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - iprob:   [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - f:       [OUT] Vector{Cdouble}
"""
function cifn end

for (cutest_cifn, T) in ((:cutest_cifn_, :Float64),)
  @eval begin
    function cifn(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      iprob::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      f::StrideOneVector{Cdouble},
    )
      $cutest_cifn(status, n, iprob, x, f)
    end
  end
end

"""# cisgr
The cisgr subroutine evaluates the gradient of either the objective function or
a constraint function of the problem decoded from a SIF file by the script
sifdecoder at the point X, in the constrained minimization case. The gradient
is stored in sparse format.

For more information, run the shell command

    man cutest_cisgr

Usage:

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - iprob:   [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - nnzg:    [OUT] Vector{Cint}
  - lg:      [IN] Vector{Cint}
  - g_val:   [OUT] Vector{Cdouble}
  - g_var:   [OUT] Vector{Cint}
"""
function cisgr end

for (cutest_cisgr, T) in ((:cutest_cisgr_, :Float64),)
  @eval begin
    function cisgr(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      iprod::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      nnzg::StrideOneVector{Cint},
      lg::StrideOneVector{Cint},
      g_val::StrideOneVector{Cdouble},
      g_var::StrideOneVector{Cint},
    )
      $cutest_cisgr(status, n, iprod, x, nnzg, lg, g_val, g_var)
    end
  end
end

"""# csgrp
The csgrp subroutine evaluates sparsity pattern used when storing the gradients
of the general constraints and of either the objective function or the
Lagrangian function l(x,y)=f(x)+yTc(x) corresponding to the problem decoded
from a SIF file by the script sifdecoder.

For more information, run the shell command

    man cutest_csgrp

Usage:

    csgrp(status, n, nnzj, lj, j_var, j_fun)

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - nnzj:       [OUT] Vector{Cint}
  - lj:         [IN] Vector{Cint}
  - j_var:      [OUT] Vector{Cint}
  - j_fun:      [OUT] Vector{Cint}
"""
function csgrp end

for (cutest_csgrp, T) in ((:cutest_csgrp_, :Float64),)
  @eval begin
    function csgrp(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      nnzj::StrideOneVector{Cint},
      lj::StrideOneVector{Cint},
      j_var::StrideOneVector{Cint},
      j_fun::StrideOneVector{Cint},
    )
      $cutest_csgrp(status, n, nnzj, lj, j_var, j_fun)
    end
  end
end

"""# cigr
The cigr subroutine evaluates the gradient of either the objective function or
a constraint function of the problem decoded from a SIF file by the script
sifdecoder at the point X, in the constrained minimization case.

For more information, run the shell command

    man cutest_cigr

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - iprob:   [IN] Vector{Cint}
  - x:       [IN] Vector{Cdouble}
  - g_val:   [OUT] Vector{Cdouble}
"""
function cigr end

for (cutest_cigr, T) in ((:cutest_cigr_, :Float64),)
  @eval begin
    function cigr(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      iprob::StrideOneVector{Cint},
      x::StrideOneVector{Cdouble},
      g_val::StrideOneVector{Cdouble},
    )
      $cutest_cigr(status, n, iprob, x, g_val)
    end
  end
end

"""# csgrshp
The csgrshp subroutine evaluates sparsity pattern used when storing the
gradients of the general constraints and of either the objective function or
the Lagrangian function l(x,y)=f(x)+yTc(x), as well as the Hessian of the
Lagrangian function, corresponding to the problem decoded from a SIF file by
the script sifdecoder.

For more information, run the shell command

    man cutest_csgrshp

  - status:  [OUT] Vector{Cint}
  - n:       [IN] Vector{Cint}
  - nnzj:    [OUT] Vector{Cint}
  - lj:      [IN] Vector{Cint}
  - j_var:   [OUT] Vector{Cint}
  - j_fun:   [OUT] Vector{Cint}
  - nnzh:    [OUT] Vector{Cint}
  - lh:      [IN] Vector{Cint}
  - h_row:   [OUT] Vector{Cint}
  - h_col:   [OUT] Vector{Cint}
"""
function csgrshp end

for (cutest_csgrshp, T) in ((:cutest_csgrshp_, :Float64),)
  @eval begin
    function csgrshp(
      status::StrideOneVector{Cint},
      n::StrideOneVector{Cint},
      nnzj::StrideOneVector{Cint},
      lj::StrideOneVector{Cint},
      j_var::StrideOneVector{Cint},
      j_fun::StrideOneVector{Cint},
      nnzh::StrideOneVector{Cint},
      lh::StrideOneVector{Cint},
      h_row::StrideOneVector{Cint},
      h_col::StrideOneVector{Cint},
    )
      $cutest_csgrshp(status, n, nnzj, lj, j_var, j_fun, nnzh, lh, h_row, h_col)
    end
  end
end

"""# csjp
The csjp subroutine evaluates the sparsity pattern of the Jacobian of the
constraints for a problem decoded from a SIF file by the script sifdecoder.

For more information, run the shell command

    man cutest_csjp

  - status:  [OUT] Vector{Cint}
  - nnzj:    [OUT] Vector{Cint}
  - lj:      [IN] Vector{Cint}
  - jvar:    [OUT] Vector{Cint}
  - jcon:    [OUT] Vector{Cint}
"""
function csjp end

for (cutest_csjp, T) in ((:cutest_csjp_, :Float64),)
  @eval begin
    function csjp(
      status::StrideOneVector{Cint},
      nnzj::StrideOneVector{Cint},
      lj::StrideOneVector{Cint},
      jvar::StrideOneVector{Cint},
      jcon::StrideOneVector{Cint},
    )
      $cutest_csjp(status, nnzj, lj, jvar, jcon)
    end
  end
end
