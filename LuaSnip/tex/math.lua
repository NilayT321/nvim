-- Lua Snippets for quickly inserting stuff related to math 

return {

    -- Fractions
    s(
        {trig = "//",}, 
        fmta("\\frac{<>}{<>}", {i(1), i(2)})
    ),

    -- Sums
    s(
        {trig = "sum",},
        fmta("\\sum_{<>}^{<>}", {i(1), i(2)})
    ),

    -- Product 
    s(
        {trig = "prod",},
        fmta("\\prod_{<>}^{<>}", {i(1), i(2)})
    ),

    -- Integrals 
    s(
        {trig = "int"},
        fmta("\\int_{<>}^{<>}", {i(1), i(2)})
    ),

    s(
        {trig = "iint"},
        fmta("\\iint_{<>}", {i(1)})
    ),

    s(
        {trig = "iiint"},
        fmta("\\iiint_{<>}", {i(1)})
    ),

    s(
        {trig = "oint"},
        fmta("\\oint_{<>}", {i(1)})
    ),

    s(
        {trig = "oiint"},
        fmta("\\oiint_{<>}", {i(1)})
    ),

    -- Limit
    s(
        {trig = "lim",},
        fmta("\\lim_{<>}", {i(1)})
    ),

    -- Union of sets
    s(
        {trig = "Un",},
        fmta("\\bigcup_{<>}^{<>}", {i(1), i(2)})
    ),

    -- Intersection of sets 
    s(
        {trig = "Int",},
        fmta("\\bigcap_{<>}^{<>}", {i(1), i(2)})
    ),

    -- Left and right parentheses
    s(
        {trig = "lr(",},
        fmta("\\left( <> \\right)", {i(1)})
    ),

    -- Left and right square brackets
    s(
        {trig = "lr[",},
        fmta("\\left[ <> \\right]", {i(1)})
    ),

    -- Left and right norm 
    s(
        {trig = "lr||",},
        fmta("\\left\\| <> \\right\\|", {i(1)})
    ),

    -- Left and right curly brackets 
    s(
        {trig = "lr{",},
        fmta("\\left\\{ <> \\right\\}", {i(1)})
    ),

    -- Text in math mode
    s(
        {trig = "!txt", snippetType = "autosnippet"},
        fmta("\\text{<>}", {i(1)})
    ),

    -- Mathbf 
    s(
        {trig = "!mbf", snippetType = "autosnippet"},
        fmta("\\mathbf{<>}", {i(1)})
    ),
    
    -- Arrows
    -- Triggers for \xleftarrow{} and \xrightarrow{}
    s(
        {trig = "%{(.*)%}<%-", regTrig = true, wordTrig = false, priority = 2000},
        {
            t("\\xleftarrow{"),
            f(function(_, snip) 
                return snip.captures[1]
            end),
        }
    ),

    s(
        {trig = "%{(.-)%}%->", regTrig = true, wordTrig = false, priority = 2000},
        {
            t("\\xrightarrow{"),
            f(function(_, snip)
                return snip.captures[1]
            end),
        }
    ),

    -- Plain arrow
    s(
        {trig = "->", priority = 1000},
        fmta("\\to", {})
    ),
}
