# CV Folder

This folder contains the CV/resume for the website.

## Files

- `index.qmd` - The Quarto page that displays the CV (rendered on the website)
- `resume.Rmd` - R Markdown source file for the resume (not rendered by Quarto)
- `resume.pdf` - PDF output of the resume (generated from resume.Rmd)
- `override.css` - Custom CSS for the resume styling

## Generating the PDF Resume

To update the PDF resume:

1. Copy your `ds_resume.Rmd` file from your `ds_ind` repository to this folder and rename it to `resume.Rmd`
2. Copy the `override.css` file from your `ds_ind` repository to this folder
3. In R/RStudio, run:

```r
pagedown::chrome_print("cv/resume.Rmd", output = "cv/resume.pdf")
```

Or add this to the YAML header of `resume.Rmd`:

```yaml
knit: pagedown::chrome_print
```

Then click "Knit" in RStudio.

## Note

The `.Rmd` and `.html` files are excluded from the Quarto build via `_quarto.yml` or `.gitignore` settings. Only the final PDF is displayed on the website.
