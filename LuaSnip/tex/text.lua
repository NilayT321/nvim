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
        {trig = "([^\\%w_]){(.-)}b", regTrig = true, wordTrig = false},
        {
            f(function(_, snip)
                local prefix, content = get_snippet_prefix_and_content(snip)

                if in_mathzone() or prefix == "$" then 
                    return prefix .. "\\mathbf{" .. content .."}"
                else 
                    return prefix .. "\\textbf{" .. content .. "}"
                end
            end)
        }
    ),


    -- Italicized text in math/regular mode 
    s(
        {trig = "([^\\%w_]){(.-)}it", regTrig = true, wordTrig = false, priority = 2000},
        {
            f(function(_, snip)
                local prefix, content = get_snippet_prefix_and_content(snip)

                if in_mathzone() or prefix == "$" then 
                    return prefix .. "\\mathit{" .. content .. "}"
                else 
                    return prefix .. "\\textit{" .. content .. "}"
                end
            end)
        }
    ),
    
    -- Overline text 
    s(
        {trig = "([^\\%w_]){(.-)}%-", regTrig = true, wordTrig = false, priority = 2000},
        {
            f(function(_, snip)
                local prefix, content = get_snippet_prefix_and_content(snip)
                return prefix .. "\\overline{" .. content .. "}"
            end)
        },
        {condition = in_mathzone}
    ),

    -- Widehat text 
    s(
        {trig = "([^\\%w_]){(.-)}%^", regTrig = true, wordTrig = false, priority = 2000},
        {
            f(function(_, snip) 
                local prefix, content = get_snippet_prefix_and_content(snip)
                return prefix .. "\\widehat{" .. content .. "}"
            end)
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
