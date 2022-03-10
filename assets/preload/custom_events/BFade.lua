function onEvent(name, value1, value2)
    if name == "BFade" then
        doTweenAlpha('bye', 'boyfriend', (value1), (value2), 'linear')
    end
end