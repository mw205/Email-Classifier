# email_classifier

A new Flutter project.

# email_classifier

Problem formulation:
_____________________

-Initial state:

Probabilities that we will use to decide if email is spam or ham are equal (50%:50%).

-Successor function:

Testing each word whether it relates to a spam e-mail or not

-Goal test:

decide if the email is spam or ham based on the resulted probabilities.

-Path cost:

a loss function such as binary cross-entropy, which computes the cost associated with the predicted probability of each category (spam or ham) compared to the true class label (that it trained on), in the case of binary cross-entropy, the path cost for a given email would be the negative log-likelihood of the predicted probability for the true class label. For example, if the model predicts that an email has a 0.8 probability of being spam and the true label is spam, the path cost for that prediction would be -log(0.8) = 0.2231. If the model predicts a 0.2 probability of spam and the true label is not spam, the path cost for that prediction would be -log(0.8) = 1.6094.
