# Experimenting BERT

An individual experiment project at KU Leuven, for the course of "Linguistics and Artificial Intelligence".

The experiment is to explore if BERT understands the syntax of natural languages. Specifically, we use the subject-verb agreement in the English language as the experimental material to explore the power of BERT. In English, there can be a sentence like this: The man who breaks several cups is angry. As a human, you know that the verb before angry should be “is” instead of “are” since it relies on the singular noun at the beginning of the sentence (man), not the plural noun (cups) right before the verb. BERT, as a language model, can predict the word that is been masked in a sentence. In this experiment, we would like to know that, using our previous sentence as an example, if we mask the verb “is”, could BERT predict it correctly? If BERT could successfully predict “is” or other singular verbs for this sentence instead of “are” or plural verbs, it can be evident that BERT has developed a notion of syntax (at least for the English language) that its prediction is not only based on the probability of word co-occurrence.

Read the full report [here](https://github.com/dodopianist/Projects/blob/main/Experimenting%20BERT/Experimenting%20BERT.pdf).

Final Grade: 13/20.
