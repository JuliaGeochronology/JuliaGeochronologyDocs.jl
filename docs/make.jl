# SPDX-FileCopyrightText: 2024 Jarred C Lloyd (https://github.com/jarredclloyd) and the JuliaGeochronology contributors
# SPDX-License-Identifier: MIT

cd(@__DIR__)
using Documenter
using JuliaGeochronologyDocs

DocMeta.setdocmeta!(JuliaGeochronologyDocs, :DocTestSetup, :(using JuliaGeochronologyDocs); recursive=true)

makedocs(;
    modules=[JuliaGeochronologyDocs],
    authors="Jarred C Lloyd (https://github.com/jarredclloyd) and JuliaGeochronology contributors",
    sitename="JuliaGeochronologyDocs.jl",
    format=Documenter.HTML(;
        canonical="https://JuliaGeochronology.github.io/JuliaGeochronologyDocs.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Fundamentals of Radiometric Geochronology" => "principles.md"
    ],
)

deploydocs(;
    repo = "github.com/JuliaGeochronology/JuliaGeochronologyDocs.jl",
    versions = nothing,
)
