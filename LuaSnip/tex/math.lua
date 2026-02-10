-- Lua Snippets for quickly inserting stuff related to math 

return {

    -- Fractions
    s(
        {trig = "//",}, 
        fmta("\\frac{<>}{<>}", {i(1), i(2)}),
        {condition = in_mathzone}
    ),

    -- Sums
    s(
        {trig = "sum",},
        fmta("\\sum_{<>}^{<>}", {i(1), i(2)}),
        {condition = in_mathzone}

    ),

    -- Product 
    s(
        {trig = "prod",},
        fmta("\\prod_{<>}^{<>}", {i(1), i(2)}),
        {condition = in_mathzone}

    ),

    -- Integrals 
    s(
        {trig = "int"},
        fmta("\\int_{<>}^{<>}", {i(1), i(2)}),
        {condition = in_mathzone}

    ),

    s(
        {trig = "iint"},
        fmta("\\iint_{<>}", {i(1)}),
        {condition = in_mathzone}

    ),

    s(
        {trig = "iiint"},
        fmta("\\iiint_{<>}", {i(1)}),
        {condition = in_mathzone}

    ),

    s(
        {trig = "oint"},
        fmta("\\oint_{<>}", {i(1)}),
        {condition = in_mathzone}

    ),

    s(
        {trig = "oiint"},
        fmta("\\oiint_{<>}", {i(1)}),
        {condition = in_mathzone}

    ),

    -- Limit
    s(
        {trig = "lim",},
        fmta("\\lim_{<>}", {i(1)}),
        {condition = in_mathzone}

    ),

    -- Union of sets
    s(
        {trig = "Un",},
        fmta("\\bigcup_{<>}^{<>}", {i(1), i(2)}),
        {condition = in_mathzone}

    ),

    -- Intersection of sets 
    s(
        {trig = "Int",},
        fmta("\\bigcap_{<>}^{<>}", {i(1), i(2)}),
        {condition = in_mathzone}

    ),

    -- Left and right parentheses
    s(
        {trig = "lr(",},
        fmta("\\left( <> \\right)", {i(1)}),
        {condition = in_mathzone}

    ),

    -- Left and right square brackets
    s(
        {trig = "lr[",},
        fmta("\\left[ <> \\right]", {i(1)}),
        {condition = in_mathzone}

    ),

    -- Left and right norm 
    s(
        {trig = "lr||",},
        fmta("\\left\\| <> \\right\\|", {i(1)}),
        {condition = in_mathzone}

    ),

    -- Left and right curly brackets 
    s(
        {trig = "lr{",},
        fmta("\\left\\{ <> \\right\\}", {i(1)}),
        {condition = in_mathzone}

    ),

    -- Left and right angle brackets 
    s(
        {trig = "lr<",},
        fmta("\\left\\langle <> \\right\\rangle", {i(1)}),
        {condition = in_mathzone}

    ),

    -- Arrows
    -- Triggers for \xleftarrow{} and \xrightarrow{}
    s(
        {trig = "([^\\])(%b{})%-<", regTrig = true, wordTrig = false, priority = 2000},
        {
            t("\\xleftarrow{"),
            f(function(_, snip) 
                return snip.captures[1]
            end),
            t("}"),
        },
        {condition = in_mathzone}
    ),

    s(
        {trig = "([^\\])(%b{})%->", regTrig = true, wordTrig = false, priority = 2000},
        {
            t("\\xrightarrow{"),
            f(function(_, snip)
                return snip.captures[1]
            end),
            t("}")
        },
        {condition = in_mathzone}
    ),

    s(
        {trig = "([^\\])(%b{})|%->", regTrig = true, wordTrig = false, priority = 2000},
        {
            t("\\xmapsto{"),
            f(function(_, snip)
                return snip.captures[1]
            end),
            t("}")
        },
        {condition = in_mathzone}
    ),

    -- Plain arrow
    s(
        {trig = "->", priority = 1000},
        fmta("\\to", {}),
        {condition = in_mathzone}
    ),

    -- Mapsto arrow 
    s(
        {trig = "|->", priority = 1000},
        fmta("\\mapsto", {}),
        {condition = in_mathzone}
    ),
}
