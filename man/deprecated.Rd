% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{deprecated}
\alias{toy_emissions_profile_products}
\alias{toy_emissions_profile_upstream_products}
\title{Deprecated}
\usage{
toy_emissions_profile_products()

toy_emissions_profile_upstream_products()
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}
\itemize{
\item The column \code{company_id} is now deprecated in all \code{toy_*companies()}. The
latest data uses \code{companies_id} and is available to you automatically when
you update the tiltIndicator package.
\item \code{toy_emissions_profile_products()} and
\code{toy_emissions_profile_upstream_products()} are deprecated in favor of
\code{toy_emissions_profile_products_ecoinvent()} and
\code{toy_emissions_profile_upstream_products_ecoinvent()}, respectively.
}
}
\examples{
toy_emissions_profile_products()
# ->
toy_emissions_profile_products_ecoinvent()

toy_emissions_profile_upstream_products()
# ->
toy_emissions_profile_upstream_products_ecoinvent()
}
\keyword{internal}
