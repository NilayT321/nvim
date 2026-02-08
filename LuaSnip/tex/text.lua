return {

    -- Text in math mode
    s(
        {trig = "!txt", snippetType = "autosnippet"},
        fmta("\\text{<>}", {i(1)})
    ),
    
    -- Boldfaced text: should determine \mathbf or \textbf from context
    s(
        {trig = "%{(.-)%}b", regTrig = true, wordTrig = false, priority = 2000},
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
    
    -- Overline text 
    s(
        {trig = "%{(.-)%}%-", regTrig = true, wordTrig = false, priority = 2000},
        {
            t("\\overline{"),
            f(function(_, snip) 
                return snip.captures[1]
            end),
            t("}")
        },
        {condition = in_mathzone}
    ),

    -- Widehat text 
    s(
        {trig = "%{(.-)%}%^", regTrig = true, wordTrig = false, priority = 2000},
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
        {trig = ";([a-zA-Z]*)", regTrig = true, wordTrig = false, priority = 3000},
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
