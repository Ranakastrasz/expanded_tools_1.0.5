game.reload_script()

function unlock(force, recipe, technology)
    technology = force.technologies[technology]
    recipe = force.recipes[recipe]

    if recipe == nil or technology == nil then
        return
    end

    recipe.enabled = technology.researched
    recipe.reload()
end

for i, force in pairs(game.forces) do
    unlock(force, 'jackhammer', 'engine')
    unlock(force, 'laser-drill', 'laser')
    unlock(force, 'atomic-disassembler', 'alien-technology')
end
