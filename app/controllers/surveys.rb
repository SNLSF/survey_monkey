get '/surveys' do
  @surveys = Survey.all
  erb :'surveys/index'
end

get '/surveys/new' do
  # goes to the form to create a new survey
  erb :'surveys/new'
end


post '/surveys/new' do
  return params.inspect
  # writes the survey to the server and redirects to the survey's page
  survey = Survey.new(title: params[:title])
  if survey.save

    if params[:question] != nil
      new_questions = []
      questions_hash = params[:question]
      questions_hash.each do |k,v|
         question = survey.questions.new(content: v)
         if question.save
          new_questions << question
        else
          @errors = question.errors.full_messages.to_sentence
          erb :'surveys/new'
        end
      end

      new_questions.each_with_index do |question, index|
        if params[:choice] != nil
          choices_hash = params[:choice][(index+1).to_s]

          # if choices_hash != nil
            choices_hash.each do |k,v|
              choice = question.choices.new(content: v)
              unless choice.save
                @errors = choice.errors.full_messages.to_sentence
                erb :'surveys/new'
              end
            end
          # end

        else
          @errors = "Question must have at least one choice"
          erb :'surveys/new'
        end
      end

      redirect "/surveys/#{survey.id}"
    else
      @errors = "Survey must have at least one question."
      erb :'surveys/new'
    end

  else
    @errors = survey.errors.full_messages.to_sentence
    erb :'surveys/new'
  end
end

post '/surveys/:id' do
    # writes the survey to the server and redirects to the survey's page
    new_interrogation = Interrogation.new()
    if new_interrogation
      redirect '/surveys'
    end
  end

get '/surveys/:id' do
  # shows the specific survey
  @survey = Survey.find(params[:id])
  @questions = Question.where(survey_id: params[:id])
  erb :'surveys/show'
end

put '/surveys/:id' do
  # edit the survey
end

delete '/surveys/:id' do
  # destroy the survey
end

get '/surveys/:id/results' do
  @survey = Survey.find(params[:id])
  erb :'surveys/results'
end


