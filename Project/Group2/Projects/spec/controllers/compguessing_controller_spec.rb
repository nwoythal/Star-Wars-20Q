require 'rails_helper'


describe CompguessingController do
render_views

before :all do
   Starwar.delete_all
    @question = Starwar.create({:id => 1, :what_am_i => 'Question', :answer_or_question => 'Are you a person?', :node_number => 1})
    @question2 = Starwar.create({:id => 2,:what_am_i => 'Answer', :answer_or_question => 'Obi Wan', :node_number => 2})
    @question3 = Starwar.create({:id => 3,:what_am_i => 'Answer', :answer_or_question => 'X-Wing', :node_number => 3})
   end

  describe 'index' do
    it 'should select and grab first node in data base' do
      expect(Bus).to receive(:get_computer_guess_info).and_return(@question)
      get :index, {:category => 'starwars', :node_number => 0}
      expect(response).to redirect_to '/compguessing?category=starwars&node_number=1'
    end

    it 'should select the index template for rendering' do
      get :index, {:category => 'starwars', :node_number => @question.node_number}
      expect(response).to render_template('index')
    end

    it 'should render the playagain page when node is an answer' do
      get :index, {:category => 'starwars', :node_number => @question2.node_number}
      expect(response).to redirect_to '/playagain?answer=Obi+Wan'
    end

    it 'should grab new node based of a Yes answer' do
      expect(Bus).to receive(:get_computer_guess_info).and_return(@question)
      get :index, {:category => 'starwars', :node_number => @question.node_number, :button_clicked => "yes"}, {:node_number => 1}
      expect(response).to redirect_to '/compguessing?category=starwars&node_number=2'
    end

    it 'should grab new node based of a No answer' do
      expect(Bus).to receive(:get_computer_guess_info).and_return(@question)
      get :index, {:category => 'starwars', :node_number => @question.node_number, :button_clicked => "no"}, {:node_number => 1}
      expect(response).to redirect_to '/compguessing?category=starwars&node_number=3'
    end
  end


end