% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tool_fix_IEA_data_for_Industry_subsectors.R
\name{tool_fix_IEA_data_for_Industry_subsectors}
\alias{tool_fix_IEA_data_for_Industry_subsectors}
\title{Apply corrections to IEA data needed for Industry subsectors}
\usage{
tool_fix_IEA_data_for_Industry_subsectors(data, ieamatch, threshold = 0.01)
}
\arguments{
\item{data}{MAgPIE object containing the IEA Energy Balances data}

\item{ieamatch}{mapping of IEA product/flow combinations to REMIND
\code{sety}/\code{fety}/\code{te} combinations as used in mrremind::calcIO()}

\item{threshold}{minimum share each industry subsector uses of each product.
Defaults to 1 \%.}
}
\value{
a MAgPIE object
}
\description{
Apply corrections to IEA data to cope with fragmentary time series and
replace outputs from blast furnaces and coke ovens, that are inputs into
industry subsectors, by their respective inputs.
The corrections done by this function are rather rudimentary and crude. This
gets smoothed away in regional aggregation. But do not use the resulting
country-level data without additional scrutiny.
}
\details{
Use regional or global averages if IEA industry data lists energy use only as
"non-specified".
Outputs from blast furnaces (\code{BLFURGS}, \code{OGASES}) and coke ovens (\code{OVENCOKE},
\code{COKEOVGS}, \code{COALTAR}, \code{NONCRUDE}), that are inputs into industry subsectors.
Used internally in mrremind::calcIO() for subtype \code{output_Industry_subsectors}.
}
\author{
Michaja Pehl
}
