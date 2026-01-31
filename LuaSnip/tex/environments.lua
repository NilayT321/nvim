-- Quick code for environments

return {

-- Equation environment
s(
    {trig = "eqn", snippetType = "autosnippet"}, 
    fmta(
    [[
	\begin{equation}
	    <>
	\end{equation}
    ]], 
	{i(1)}
    )
),

-- Starred equation environment
s(
    {trig = "neqn", snippetType = "autosnippet"}, 
    fmta(
    [[
	\begin{equation*}
	    <>
	\end{equation*}
    ]], 
	{i(1)}
    )
),

-- Align environment
s(
    {trig = "algn", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{align*}
	    <>
	\end{align*}
    ]], 
    {i(1)}
    )
),

-- Bmatrix environment
s(
    {trig = "bmatr", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{bmatrix}
	    <>
	\end{bmatrix}
    ]], 
    {i(1)}
    )
),

-- General environment
s(
    {trig = "!env", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{<>}
	    <>
	\end{<>}
    ]],
    {i(1), i(2), rep(1)}
    )
),

-- Theorem environment
s(
    {trig = "!thrm", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{thrm}[<>]
	    <>
	\end{thrm}
    ]],
    {i(1), i(2)}
    )
),

-- Lemma environment 
s(
    {trig = "!lem", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{lem}[<>]
	    <>
	\end{lem}
    ]],
    {i(1), i(2)}
    )
),

-- Example environment
s(
    {trig = "!examp", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{example}[]
	    <>
	\end{example}
    ]],
    {i(1)}
    )
),

-- Proposition 
s(
    {trig = "!prop", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{prop}[]
	    <>
	\end{prop}
    ]],
    {i(1)}
    )
),

-- Corollary environment
s(
    {trig = "!cor", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{cor}[]
	    <>
	\end{cor}
    ]],
    {i(1)}
    )
),

-- Definition environment
s(
    {trig = "!defn", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{defn}[<>]
	    <>
	\end{defn}
    ]],
    {i(1), i(2)}
    )
),

-- Proof 
s(
    {trig = "!pf", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{proof}
	    <>
	\end{proof}
    ]],
    {i(1)}
    )
),

s(
    {trig = "!prob", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{problem}[<>]
	    <>
	\end{problem}
    ]], 
    {i(1), i(2)}
    )
),

-- Problem solution environment 
s(
    {trig = "!soln", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{soln}
	    <>
	\end{soln}
    ]],
    {i(1)}
    )
),

-- Itemize environment 
s(
    {trig = "!unl", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{itemize}
	    \item <>
	\end{itemize}
    ]],
    {i(1)}
    )
),

-- Enumerate environment 
s(
    {trig = "!enum", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{enumerate}
	    \item <>
	\end{enumerate}
    ]],
    {i(1)}
    )
),

-- Figure
s(
    {trig = "!fig", snippetType = "autosnippet"},
    fmta(
    [[
	\begin{figure}[<>]
	    \centering
	    \includegraphics[<>]{<>}
	    \caption{<>}
	    \label{<>}
	\end{figure}
    ]],
    {i(1), i(2), i(3), i(4), i(5)}
    )
),

}
