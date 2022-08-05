-- Pour vous les amis pour rebosser dessus :
-- /tpcoords -179.314 855.187 232.699

Config = {}

-- Touche Clavier
Config.keyInteract = 51 -- (E)
Config.keyStopInteract = 22 -- (SPACE)

-- Couleur des points
Config.color = {r = 0, g = 255, b = 0}
Config.colorcock = {r = 255, g = 255, b = 255}
Config.colormeth = {r = 0, g = 0, b = 255}

-- Animation
Config.anim = {recolt = {animation = "weapons@first_person@aim_rng@generic@projectile@thermal_charge@", name = "plant_floor"}}

-- Delai animation
Config.delay = 1000

-- Pour la boucle animation etc...
Config.toggleFocusOn = true
Config.inAction = true

-- Distance de vision du point
Config.toBeVisible = 5

-- Weed : OK
Config.weed = "Weed"
Config.weedrecolt = vector3(-179.314, 855.187, 232.699)
Config.weedtreatment = vector3(-165.262, 858.661, 232.233)
Config.weedsell = vector3(-176.168, 868.195, 232.700)

-- Cocaïne OK
Config.cocaine = "Cocaïne"
Config.cocainerecolt = vector3(-182.115, 880.650, 233.464)
Config.cocainetreatment = vector3(-170.133, 886.724, 233.465)
Config.cocainesell = vector3(-182.545, 899.048, 233.464)

-- Méthamphétamine En cours
Config.meth = "Méthamphétamine"
Config.methrecolt = vector3(-142.746, 867.146, 232.697)
Config.methtreatment = vector3(-132.172, 855.543, 232.229)
Config.methsell = vector3(-152.347, 861.427, 232.233)
