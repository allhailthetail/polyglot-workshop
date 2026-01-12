#import "@preview/bananote:0.1.0": *
#import "@preview/pergamon:0.5.0": *

// Set custom colors for `raw` formatting:
#show raw: set text(fill: rgb("#64afaff0"))
#show emph: set text(fill: rgb("#591c0b"))


#show: note.with(
  title: [Does Artificial Data lead to Artificial Results?],
  date: datetime(day: 12, month: 01, year: 2026),
  authors: (([Matthew Younger], [Student*\@*Lyon College]))
)

#abstract[
This paper examines a synthetic dataset exploring the relationship between coffee consumption and health outcomes using a polyglot data science approach (R, Python, and Bash). Initial exploratory data analysis suggested potential correlations between caffeine and sleep, yet machine learning validation revealed significant flaws in the data's integrity. A Random Forest classifier achieved a suspicious 99% accuracy. This near-perfect prediction suggests that health outcomes in this dataset are likely determined by rigid, overly-deterministic variables like age and BMI rather than coffee intake, rendering the dataset's clinical conclusions invalid.
]

= Data Preparation and Exploration
The dataset, containing 10,000 observations and 16 variables, was initially processed in R. Key cleaning steps included:
  - _Dimensionality Reduction_: Removing subjective or irrelevant fields such as `Country` and `Sleep_Quality`.
  - _Feature Engineering_: Converting binary integers (Smoking/Alcohol) into logical factors and creating a `Body_Condition` categorical variable based on BMI thresholds.
  - _Visual Inspection_: Preliminary plots showed a correlation between coffee intake and sleep hours , but unexpectedly showed no correlation between caffeine and heart rate.

== Sleep and Caffeine Physiological Trends
The relationship between lifestyle choices and physiological responses in this synthetic dataset reveals several contradictions typical of artificial data. For instance, the Coffee Intake vs. Sleep Duration graph shows a remarkably clean, linear negative correlation:
#figure(
    image("output/coffee_vs_sleep.png", width: 75%), caption: [Graphic: coffee versus sleep],
  )
As sleep duration increases from 3 to 10 hours, the average coffee intake drops steadily from approximately 3.2 cups to 1.5 cups. Conversely, the Caffeine Intake vs. Heart Rate scatter plot displays almost no physiological response:
#figure(
    image("output/heart_rate_caffeine.png", width: 75%), caption: [Graphic: coffee versus heart rate],
  )
the regression line remains nearly flat across caffeine levels ranging from 0 to 800 mg. This suggests that while the data generator hard-coded a behavioral link (tired people drink more coffee), it failed to simulate the biological stimulant effect of caffeine on heart rate.

== Demographic and Lifestyle Distributions
The Coffee Intake Distribution by Gender density plot confirms that consumption patterns are virtually identical across Male, Female, and "Other" categories, showing no gender-based preference for caffeine:
#figure(
    image("output/coffee_gender_density.png", width: 75%), caption: [Graphic: coffee by gender],
  )
Lifestyle Factors: The Lifestyle Distribution mosaic indicates that the majority of the 10,000 subjects avoid high-risk behaviors, with 80% non-smokers and 69.9% non-consumers of alcohol:
#figure(
    image("output/smoking_alcohol_moasic.png", width: 75%), caption: [CW001 - filtered spectrogram],
  )

== Body Mass Index
The most significant evidence of the dataset's artificial nature is found in the Coffee Consumption by Body Condition boxplot:
#figure(
    image("output/coffee_vs_body_cond.png", width: 75%), caption: [CW001 - filtered spectrogram],
  )
In a real-world scenario, metabolic rates and body mass often influence substance consumption; however, this graph shows identical median coffee intake and interquartile ranges for "high," "low," and "normal" weight groups. This lack of variance, combined with the extreme 99% accuracy achieved by the machine learning model, confirms that "Health Issues" are likely being triggered by a simple if/then formula involving BMI and Sleep Hours rather than the complex, noisy correlations found in genuine medical data.

= Machine Learning Validation
A Python-based Random Forest Classifier was trained to predict Health_Issues. The model’s performance metrics raised immediate red flags:
  - An accuracy of 0.99
  - For multiple cases, including "Severe" health issues, the model predicted a `1.00` F1 score, even for data which were statistically insignificant.

= Conclusion
The seemingly perfect performance of the Random Forest Classifier indicates that the model is likely picking up on hard-coded if/then logic imparted when the synthetic data was generated. Specifically, Sleep_Hours, BMI, and Age were primary influencers on overall health, far more so than coffee.

While the "Global Coffee Health Dataset" serves as an excellent technical demonstration for polyglot workflows in Org mode, it fails as a representative medical model. The 99% model accuracy and the lack of caffeine-induced heart rate variance suggest the data is overly deterministic. One can thus conclude that coffee intake has no meaningful impact on health outcomes within this specific synthetic environment. If this fact was intentional by the author of the dataset, then the analysis was successful. If however, this is unintentional, it demonstrates the many issues with relying on synthetically-generated data for analysis.

// Page break before the bibliography
#pagebreak()

// Original bib style proposed by the template:
// #cite(bibliographer.entries.keys())

// Bibliography I'm using for now:
#bibliography("bibliography.bib", full: true)

// // Uncomment this to typeset the bibliography:
// #add-bib-resource(read("bibliography.bib"))
// #print-bananote-bibliography()
