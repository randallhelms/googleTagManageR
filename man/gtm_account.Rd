% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/accounts.R
\name{gtm_account}
\alias{gtm_account}
\title{Gets a GTM Account.}
\usage{
gtm_account(accountId)
}
\arguments{
\item{accountId}{accountId to request}
}
\description{
Set \code{options(googleAuthR.scopes.selected = c(https://www.googleapis.com/auth/tagmanager.edit.containers, https://www.googleapis.com/auth/tagmanager.manage.accounts, https://www.googleapis.com/auth/tagmanager.readonly)}
Then run \code{googleAuthR::gar_auth()} to authenticate.
See \code{\link[googleAuthR]{gar_auth}} for details.
}
