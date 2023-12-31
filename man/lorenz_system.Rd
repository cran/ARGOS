% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/argos_files.R
\name{lorenz_system}
\alias{lorenz_system}
\title{Lorenz Chaotic System}
\usage{
lorenz_system(n, init_conditions, dt, snr = Inf)
}
\arguments{
\item{n}{Number of time points (rounded to the nearest integer).}

\item{init_conditions}{Initial conditions as a numeric vector of length 3 (X, Y, Z).}

\item{dt}{Time step between observations.}

\item{snr}{Signal-to-noise ratio (in dB). Use Inf for no noise.}
}
\value{
A numeric matrix representing the system's state over time. Each row
        corresponds to a time point, and each column represents a variable (X, Y, Z).
}
\description{
Simulates the Lorenz chaotic system with optional noise.
}
\details{
This function simulates the Lorenz chaotic system with the specified
parameters. It uses the specified time step and initial conditions to compute
the system's state over time. If a non-Infinite SNR is provided, Gaussian noise
is added to the system.
}
\examples{
# Simulate the Lorenz system with 1000 time points and no noise
data <- lorenz_system(
  n = 1000,
  dt = 0.01,
  init_conditions = c(-8, 7, 27),
  snr = Inf
)

}
