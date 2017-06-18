Word Prediction 
Data Science Specialization SwiftKey Capstone
========================================================
Author: YMGoh
Date : 18 June 2017

Overview
========================================================

The aim of this project is to design and deploy a Shiny App that will predict the next word(s) when a phrase is provided. 

The training datset was constructed from the Coursera-Swiftkey dataset provided in the course. The dataset is comprised of US English version of twitter, blog and news text files, which were then cleaned, tokenized, and used to generate words frequencies as a basis for prediction. 

Word frequencies were computed before hand, saved as ".rda" files, and called into the Shiny App when the application is deployed. This would greatly reduce the demand on computation and network resources when deploying the application. 


How to use the App ?
========================================================

The user should key in a word or phrase, set the number of predictions required using the slider tool, and click submit. Only US English words are accepted as the traning dataset was build using US English.

The predicted word(s) will be provided in the one of the tabbed right panels. By default, only the next word would be shown - as this is what is required by the grading specification for this project. Clicking the next tab would reveal the next two words predicted. 

How does it work in the background ?
========================================================

The App uses the Stupid Back-off Algorithm for word prediction. The training dataset was built by cleaning and tokenizing the given (Coursera-Swiftkey) text dataset to yield n-grams. For the purpose of the current work, 4 n-gram files were constructed (unigram, bigram, trigram and quadgram), and appended to the shiny App when it is deployed.

The Stupid Back-off algorithm works by elimination. If a word or combination of words are not found in the highest n-gram data, the next lower n-gram set is used. Concurrently, the first word is truncated from the search. The system will display the most common word from the unigram if there is no match found after it has exhausted all its attempts. 


Shiny App link and files on Github
========================================================

The files and source code are available here [https://github.com/YMGoh/capstone]

The Shiny App is available here  [https://ymgoh.shinyapps.io/datascience_specialization_swiftkey_capstone/]

