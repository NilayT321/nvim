-- Quick snippets for color environments made with tcolorbox 

return {
		-- Color definition block
    s(
        {trig = "cdefn",},
        fmta(
            [[
            \begin{cdefn}[<>]
            <>
            \end{cdefn}
            ]], 
            {i(1), i(2)}
        )
    ),

    -- Color theorem block 
    s(
	{trig = "cthrm",},
        fmta(
            [[ 
            \begin{cthrm}[<>]
            <>
            \end{cthrm}
            ]],
            {i(1), i(2)}
        )
    ),

    -- Color proposition block 
    s(
	{trig = "cprop",},
        fmta(
            [[ 
            \begin{cprop}[<>]
            <>
            \end{cprop}
            ]],
            {i(1), i(2)}
        )
    ),

    -- Color example block 
    s(
	{trig = "cexamp",},
        fmta(
            [[ 
            \begin{cexamp}[<>]
            <>
            \end{cexamp}
            ]],
            {i(1), i(2)}
        )
    ),
}
