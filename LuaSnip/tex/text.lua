return {

    -- Text in math mode
    s(
        {trig = "txt",},
        fmta("\\text{<>}", {i(1)}),
        {condition = in_mathzone}
    ),

    -- Emphasized text 
    s(
        {trig = "emph",},
        fmta("\\emph{<>}", {i(1)})
    ),

    -- Colored text 
    s(
        {trig = "colTxt",}, 
        fmta("\\textcolor{<>}{<>}", {i(1), i(2)})
    ),
    
    -- Boldfaced text: should determine \mathbf or \textbf from context
    s(
        {trig = "([^\\])(%b{})b", regTrig = true, wordTrig = false, priority = 2000},
        {
            f(function(_, snip) 
                local content = snip.captures[1] 
                if in_mathzone() then
                    return "\\mathbf{" .. content .. "}"
                else 
                    return "\\textbf{" .. content .. "}"
                end
            end)
        }
    ),

    -- Italicized text in math/regular mode 
    s(
        {trig = "([^\\])(%b{})it", regTrig = true, wordTrig = false, priority = 2000},
        {
            f(function(_, snip)
                local content = snip.captures[1] 
                if in_mathzone() then 
                    return "\\mathit{" .. content .. "}"
                else 
                    return "\\textit{" .. content .. "}"
                end
            end)
        }
    ),
    
    -- Overline text 
    s(
        {trig = "([^\\])(%b{})-", regTrig = true, wordTrig = false, priority = 2000},
        {
            f(function(_, snip)
                local prefix  = snip.captures[1]
                local content = snip.captures[2]:sub(-2,2)
                return prefix .. "\\overline{" .. content .. "}"
            end),
        },
        {condition = in_mathzone}
    ),

    -- Widehat text 
    s(
        {trig = "([^\\])(%b{})^", regTrig = true, wordTrig = false, priority = 2000},
        {
            t("\\widehat{"),
            f(function(_, snip)
                return snip.captures[1]
            end),
            t("}")
        },
        {condition = in_mathzone}
    ),
    
    -- All greek letters.
    s(
        {trig = ";([%a]*)", regTrig = true, wordTrig = false, priority = 3000},
        {
            f(function(_, snip) 
                local greek_letters = {
                    a = "\\alpha", 
                    b = "\\beta",
                    c = "\\chi", 
                    d = "\\delta", 
                    e = "\\varepsilon", 
                    g = "\\gamma", 
                    i = "\\iota",
                    k = "\\kappa",
                    l = "\\lambda", 
                    m = "\\mu", 
                    n = "\\nu", 
                    o = "\\omega", 
                    p = "\\pi",
                    ph = "\\varphi",
                    ps = "\\psi",
                    r = "\\rho", 
                    s = "\\sigma", 
                    t = "\\tau", 
                    th = "\\theta",
                    x = "\\xi", 
                    z = "\\zeta",
                    G = "\\Gamma",
                    D = "\\Delta",
                    Th = "\\Theta",
                    L = "\\Lambda",
                    X = "\\Xi", 
                    P = "\\Pi",
                    Ph = "\\Phi",
                    Ps = "\\Psi",
                    S = "\\Sigma",
                    O = "\\Omega",
                }
                
                return greek_letters[snip.captures[1]] or ""
            end)
        },
        {condition = in_mathzone}
    ),
}
