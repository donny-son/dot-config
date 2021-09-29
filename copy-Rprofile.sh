#!/usr/bin/env bash
dst=$HOME/.Rprofile
echo "Adding default configurations to ${dst}"

cat >> $dst <<EOF
# set default libpath
dir.create('~/Rlib', showWarnings=FALSE)
.libPaths(new='~/Rlib')

# set default repository to cran
local({r <- getOption("repos")
       r["CRAN"] <- "http://cran.r-project.org"
       options(repos=r)})

# set default q function to quit without saving workspace
utils::assignInNamespace(
  "q", 
  function(save = "no", status = 0, runLast = TRUE) 
  {
    .Internal(quit(save, status, runLast))
  }, 
  "base"
)
EOF

