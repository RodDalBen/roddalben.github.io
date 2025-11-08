#!/usr/bin/env Rscript
# Script to generate PDF resume from R Markdown

# Check if required packages are installed
if (!requireNamespace("pagedown", quietly = TRUE)) {
  stop(
    "Package 'pagedown' is required. Install it with: install.packages('pagedown')"
  )
}

if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  stop(
    "Package 'rmarkdown' is required. Install it with: install.packages('rmarkdown')"
  )
}

cat("Generating PDF resume...\n")

# First render the HTML
cat("Step 1: Rendering HTML...\n")
rmarkdown::render(
  input = "cv/resume.Rmd",
  output_file = "resume.html",
  output_dir = "cv/",
  quiet = FALSE
)

# Then convert HTML to PDF
cat("Step 2: Converting HTML to PDF...\n")
pagedown::chrome_print(
  input = "cv/resume.html",
  output = "cv/resume.pdf",
  verbose = 2
)

cat("PDF generated successfully at: cv/resume.pdf\n")
