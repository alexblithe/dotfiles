hl.curve("smooth", {
    type = "bezier",
    points = {
        {0.25, 0.1},
        {0.25, 1}
    }
})

hl.curve("smoothOut", {
    type = "bezier",
    points = {
        {0.36, 0},
        {0.66, -0.56}
    }
})

hl.curve("smoothIn", {
    type = "bezier",
    points = {
        {0.25, 0.1},
        {0.5, 1}
    }
})

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 4,
    bezier = "smooth",
    style = "slide"
})

hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 4,
    bezier = "smoothOut",
    style = "slide"
})

hl.animation({
    leaf = "windowsMove",
    enabled = true,
    speed = 4,
    bezier = "smooth"
})

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 4,
    bezier = "smooth"
})

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 4,
    bezier = "smooth"
})

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 4,
    bezier = "smooth",
    style = "slide"
})

hl.animation({
    leaf = "border",
    enabled = true,
    speed = 6,
    bezier = "smooth",
})