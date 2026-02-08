-- Snippets for beamer blocks and frames
return {
-- New frame in beamer environments
    s(
        {trig = "fr",},
        fmta(
            [[
                \begin{frame}{<>}
                    <>
                \end{frame}
            ]],
            {i(1), i(2)}
        )
    ),

    -- Beamer block 
    s(
        {trig = "bl",},
        fmta(
            [[
                \begin{block}{<>}
                    <>
                \end{block}
            ]],
            {i(1), i(2)}
        )
    ),

    -- Alert block 
    s(
        {trig = "alert",},
        fmta(
            [[
                \begin{alertblock}{<>}
                    <>
                \end{alertblock}
            ]],
            {i(1), i(2)}
        )
    ),

    -- Examples block
    s(
        {trig = "exBl",},
        fmta(
            [[
                \begin{example}{<>}
                    <>
                \end{example}
            ]],
            {i(1), i(2)}
        )
    ),

    -- Theorem block 
    s(
        {trig = "thrmBl",},
        fmta(
            [[
                \begin{theorem}{<>}
                    <>
                \end{theorem}
            ]],
            {i(1), i(2)}
        )
    ),

    -- Definition block 
    s(
	{trig = "defnBl",},
        fmta(
            [[
                \begin{definition}{<>}
                    <>
                \end{definition}
            ]],
            {i(1), i(2)}
        )
    ),

    -- Proof block 
    s(
        {trig = "!blpf", snippetType = "autosnippet"},
        fmta(
            [[
                \begin{proof}{<>}
                    <>
                \end{proof}
            ]],
            {i(1), i(2)}
        )
    ),
}
