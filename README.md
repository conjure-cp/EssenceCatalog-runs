**THIS REPOSITORY IS A WORK IN PROGRESS AT THE MOMENT!**

This repository is for running and recording data about running Conjure
on the problem specifications written in Essence. The problem
specifications themselves are kept in the
[EssenceCatalog](https://github.com/conjure-cp/EssenceCatalog)
repository, which is added as a submodule in this repository.

See [Directory structure](#directory-structure) for an explanation on
how things are organised.

# Generated files

There are two main kinds of generated files in this repository,
generated by running two different scripts. First is the
[Modelling](#modelling) script, to generate Essence Prime models. This
was the main motivation for creating the repository but once it is
created we decided to also run some backend solvers for when we have
some parameter files available. Hence the second is the
[Solutions](#solutions) script.

## Modelling

We run a few configurations of Conjure and keep the generated Essence
Prime models in this repository. This is basically so we can have a
record of the generated models.

Notice that the Essence Prime models may not be up-to-date at a given
time with respect to the current version of Conjure. See the
`logs/versions` directory for a record of the matching version of tools
that were used at a given state of the repository.

## Solutions

We run a few configurations of Savile Row and a few backend solvers to
solve using each generated Essence Prime model and each parameter file.

## Logs and statistics

Under the logs directory we keep some statistics. These files are
updated when a \"modelling\" or a \"solutions\" script is run, so going
back in the history of the repository should always give consistent
model/solution files and statistics.

-   `logs/versions` directory contains software versions.
-   `logs/gnuparallel/modelling_joblog` contains some information
    (generated by the GNU Parallel tool) regarding running the
    \"modelling\" script.
-   `logs/gnuparallel/solutions_joblog`, similarly, contains some
    information (generated by the GNU Parallel tool) regarding running
    the \"solutions\" script.
-   `logs/infos.tsv` is a tab separated file containing information
    generated by Savile Row (the data that Savile Row refers to as the
    \"info files\").

# Scripts

Here are the scripts themselves.

The scripts contained in this repository are here to (mainly) achieve
the following 2 things.

1.  Generate Essence Prime models using Conjure
2.  Solve (for existing parameters) using Conjure

The Essence Prime model files and solution files will be kept in the
repository for ease of use, ease of reference, and to have a historical
recording.

-   Use `scripts/modelling/recompute.sh N` to generate Essence Prime
    models (Using N cores)
-   Use `scripts/solutions/recompute.sh N` to generate solutions (Using
    N cores) Time limit for Savile Row, Minion, and Lingeling are all
    the same and is controlled by the `LIMIT_TIME` environment variable.
    The default value is 60 (seconds). To use a different value, prepend
    the following to the solutions recompute command: `LIMIT_TIME=SEC`.

# Directory structure

The `problems` directory contains a bunch of generated model/parameter/solution files.

To make changes to the `*.essence` and `*.param` files you need to edit the EssenceCatalog repository.

-   Essence files:
     `EssenceCatalog/problems/[problem]/[essence].essence`.

     Where `[problem]` is the name of the problem, and `[essence]` is
      the name of the problem specification in Essence.

-    Essence parameter files: under `EssenceCatalog/problems/[problem]/params` - can be nested directories.

-    Essence Prime files (generated):
     `problems/[problem]/conjure-mode/[conjure-mode]/#.eprime`.

     Where `[conjure-mode]` is the mode we use when calling Conjure for
      model generation (currently \"portfolio4\").

-    Essence Prime parameter files (generated):
     `problems/[problem]/conjure-mode/[conjure-mode]/savilerow-mode/[savilerow-mode]/solver/[solver]/[model]-[param].eprime-param`.

     Where `[savilerow-mode]` is the mode we use when calling Savile Row
      (currently either \"O0\" or \"O2\"),
     and `[solver]` is the backend solver we use,
     and `[model]` is the name of the model used,
     and `[param]` is the name of the Essence level parameter file.

-    Essence Prime solution files (generated):
     `problems/[problem]/conjure-mode/[conjure-mode]/savilerow-mode/[savilerow-mode]/solver/[solver]/[model]-[param]-[solution].eprime-solution`.

     Where `[solution]` is the order of the generated solution. This is
      done by convention by Conjure, and it should just be \"1\" when a
      single is solution is to be found.

-    Essence solution files (generated):
     `problems/[problem]/conjure-mode/[conjure-mode]/savilerow-mode/[savilerow-mode]/solver/[solver]/[model]-[param]-[solution].solution`.

     The solution converted back to Essence.

# License

All files in this repository are licensed under [Creative Commons
Attribution 4.0 International
License](http://creativecommons.org/licenses/by/4.0/).
