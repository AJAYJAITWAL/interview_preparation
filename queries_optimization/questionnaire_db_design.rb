# Lets take small questionnaire APP, how data was stored for different types of questionnaire?

class Questionnaire
  title
  description
end

class Question
  content
  question_type
  questionnaire_id
end

class Option
  content
  question_id
end

class Response
  questionnaire_id
  user_id
  content
end