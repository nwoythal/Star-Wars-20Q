require 'rails_helper'


describe CompguessingController do
render_views

before :all do
   #Starwar.delete_all
    Question.delete_all
    @initialQuestion = Question.create({:id => 1, :what_am_i => 'Question', :answer_or_question => 'Are you a Person?', :node_number => 1})
    Starthing.delete_all
    @question = Starthing.create({:id => 2, :what_am_i => 'Question', :answer_or_question => 'Are you a Male?', :node_number => 1})
    @answer1 = Starthing.create({:id => 3, :what_am_i => 'Answer', :answer_or_question => 'Obi Wan?', :node_number => 2})
    @answer2 = Starthing.create({:id => 4, :what_am_i => 'Answer', :answer_or_question => 'Ahsoka Tano', :node_number => 2})
    @question2 = Starthing.create({:id => 5, :what_am_i => 'Question', :answer_or_question => 'Is it alive?', :node_number => 19})
   end

  describe 'index' do
    it 'should select and grab first node in data base' do
      expect(Bus).to receive(:get_computer_guess_info).and_return(@initialQuestion)
      get :index, {:node_number => 0, :category => "questions"}
      expect(response).to redirect_to '/compguessing?category=questions&node_number=1'
    end

    it 'should select the index template for rendering' do
      get :index, {:node_number => 1, :category => "questions"}
      expect(response).to render_template('index')
    end

    it 'should select the index template for ' do
      get :index, {:category => "questions", :button_clicked => "no", :node_number => 1}, {:node_number => 1}
      expect(response).to redirect_to '/compguessing?category=questions&node_number=2'
    end
    
    it 'should select reset the node if over 17' do
      get :index, {:category => "questions", :button_clicked => "no", :node_number => 19}, {:node_number => 19}
      expect(response).to redirect_to '/compguessing?category=questions&node_number=1'
    end

    it 'should select the index template' do
      get :index, {:node_number => 1, :category => "questions", :button_clicked => "yes"}
    end
    #it 'should reset the node number to one if it is over 17' do
    #  get :index, {:node_number => 19, :category => "questions", :button_clicked => "no"}
    #  expect(response).to redirect_to '/compguessing?category=questions&node_number=1'
    #end
    #
    # it 'should render the playagain page when node is an answer' do
    #   get :index, {:node_number => @question2.node_number}
    #   expect(response).to redirect_to '/playagain?answer=Obi+Wan&game=compguessing'
    # end
    #
    # it 'should grab new node based of a Yes answer' do
    #   expect(Bus).to receive(:get_computer_guess_info).and_return(@initialQuestion)
    #   get :index, {:category => 'starwars', :node_number => @initialQuestion.node_number, :button_clicked => "yes"}, {:node_number => 1}
    #   expect(response).to redirect_to '/compguessing?category=starwars&node_number=2'
    # end
    #
    # it 'should grab new node based of a No answer' do
    #   expect(Bus).to receive(:get_computer_guess_info).and_return(@initialQuestion)
    #   get :index, {:category => 'starwars', :node_number => @initialQuestion.node_number, :button_clicked => "no"}, {:node_number => 1}
    #   expect(response).to redirect_to '/compguessing?category=starwars&node_number=3'
    # end

  end
end
