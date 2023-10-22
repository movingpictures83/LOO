# replace "~/Desktop/Shared Code for Soon" by "folder-location"

# load libraries 
library(tidyverse)
library(rstan)
library(bayesplot)
library(loo)
library(bayestestR)
options(mc.cores = parallel::detectCores())
rstan_options(auto_write = TRUE)
n_chains <- 4

input <- function(inputfile) {
	m00 <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
loo_pop_1a2_e4 <- extract_log_lik(m00) %>% loo() 
saveRDS(loo_pop_1a2_e4, outputfile)
}

