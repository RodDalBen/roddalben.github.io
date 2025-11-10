# Rodrigo Dal Ben - Personal Website

This repository hosts the personal website of Rodrigo Dal Ben, showcasing his professional work, research, and portfolio in data science and health outcomes research.

🔗 **Live Site**: [https://roddalben.github.io](https://roddalben.github.io)

## About

This website serves as a professional portfolio and online presence for Rodrigo Dal Ben, featuring:

- **About Me**: Professional background and technical expertise
- **Experience**: Career highlights and positions
- **Education**: Academic credentials and certifications
- **Portfolio**: Data science projects and research work
- **Publications**: Academic publications and research contributions
- **CV/Resume**: Downloadable professional resume

## Technology Stack

This website is built with:

- **[Quarto](https://quarto.org/)**: An open-source scientific and technical publishing system
- **HTML/CSS**: Custom styling with `styles.css`
- **GitHub Pages**: Hosting platform
- **R**: Used for generating resume PDF

## Project Structure

```
.
├── index.qmd              # Main landing page
├── _quarto.yml            # Quarto configuration
├── styles.css             # Custom styles
├── cv/                    # CV and resume files
│   ├── resume.html        # Resume source
│   └── resume.pdf         # Generated PDF resume
├── portfolio/             # Portfolio projects
│   └── index.qmd
├── publications/          # Publications page
│   └── index.qmd
├── images/                # Images and assets
├── docs/                  # Generated HTML site (output)
└── generate_resume_pdf.R  # Script to generate resume PDF
```

## Local Development

### Prerequisites

- [Quarto CLI](https://quarto.org/docs/get-started/) installed
- R (optional, for generating resume PDF)

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/RodDalBen/roddalben.github.io.git
   cd roddalben.github.io
   ```

2. Preview the site locally:
   ```bash
   quarto preview
   ```
   This will start a local server and open the site in your browser.

### Building the Site

To build the site for production:

```bash
quarto render
```

The rendered HTML files will be generated in the `docs/` directory, which is configured for GitHub Pages deployment.

## Deployment

This site is automatically deployed to GitHub Pages from the `docs/` folder on the main branch. Any commits that modify content files will trigger a rebuild of the site.

### Manual Deployment Steps

1. Make changes to `.qmd` files or other content
2. Run `quarto render` to build the site
3. Commit and push changes to the main branch
4. GitHub Pages will automatically serve the updated content from `docs/`

## Updating Content

- **Homepage**: Edit `index.qmd`
- **Portfolio**: Add/edit projects in `portfolio/`
- **Publications**: Update `publications/index.qmd`
- **CV/Resume**: Modify `cv/resume.html` and regenerate PDF using `generate_resume_pdf.R`
- **Styling**: Customize appearance in `styles.css`
- **Site Configuration**: Modify navigation and settings in `_quarto.yml`

## Resume PDF Generation

To generate the resume PDF from the HTML source:

```bash
Rscript generate_resume_pdf.R
```

## License

© Rodrigo Dal Ben. All rights reserved.

## Contact

- LinkedIn: [Rodrigo Dal Ben](https://www.linkedin.com/in/rodrigo-dal-ben-phd/)
- GitHub: [@RodDalBen](https://github.com/RodDalBen)
- ResearchGate: [Rodrigo Dal Ben](https://www.researchgate.net/profile/Rodrigo-Dal-Ben)
