require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe QuestiongroupsController do

  # This should return the minimal set of attributes required to create a valid
  # Questiongroup. As you add validations to Questiongroup, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # QuestiongroupsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all questiongroups as @questiongroups" do
      questiongroup = Questiongroup.create! valid_attributes
      get :index, {}, valid_session
      assigns(:questiongroups).should eq([questiongroup])
    end
  end

  describe "GET show" do
    it "assigns the requested questiongroup as @questiongroup" do
      questiongroup = Questiongroup.create! valid_attributes
      get :show, {:id => questiongroup.to_param}, valid_session
      assigns(:questiongroup).should eq(questiongroup)
    end
  end

  describe "GET new" do
    it "assigns a new questiongroup as @questiongroup" do
      get :new, {}, valid_session
      assigns(:questiongroup).should be_a_new(Questiongroup)
    end
  end

  describe "GET edit" do
    it "assigns the requested questiongroup as @questiongroup" do
      questiongroup = Questiongroup.create! valid_attributes
      get :edit, {:id => questiongroup.to_param}, valid_session
      assigns(:questiongroup).should eq(questiongroup)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Questiongroup" do
        expect {
          post :create, {:questiongroup => valid_attributes}, valid_session
        }.to change(Questiongroup, :count).by(1)
      end

      it "assigns a newly created questiongroup as @questiongroup" do
        post :create, {:questiongroup => valid_attributes}, valid_session
        assigns(:questiongroup).should be_a(Questiongroup)
        assigns(:questiongroup).should be_persisted
      end

      it "redirects to the created questiongroup" do
        post :create, {:questiongroup => valid_attributes}, valid_session
        response.should redirect_to(Questiongroup.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved questiongroup as @questiongroup" do
        # Trigger the behavior that occurs when invalid params are submitted
        Questiongroup.any_instance.stub(:save).and_return(false)
        post :create, {:questiongroup => { "name" => "invalid value" }}, valid_session
        assigns(:questiongroup).should be_a_new(Questiongroup)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Questiongroup.any_instance.stub(:save).and_return(false)
        post :create, {:questiongroup => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested questiongroup" do
        questiongroup = Questiongroup.create! valid_attributes
        # Assuming there are no other questiongroups in the database, this
        # specifies that the Questiongroup created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Questiongroup.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => questiongroup.to_param, :questiongroup => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested questiongroup as @questiongroup" do
        questiongroup = Questiongroup.create! valid_attributes
        put :update, {:id => questiongroup.to_param, :questiongroup => valid_attributes}, valid_session
        assigns(:questiongroup).should eq(questiongroup)
      end

      it "redirects to the questiongroup" do
        questiongroup = Questiongroup.create! valid_attributes
        put :update, {:id => questiongroup.to_param, :questiongroup => valid_attributes}, valid_session
        response.should redirect_to(questiongroup)
      end
    end

    describe "with invalid params" do
      it "assigns the questiongroup as @questiongroup" do
        questiongroup = Questiongroup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Questiongroup.any_instance.stub(:save).and_return(false)
        put :update, {:id => questiongroup.to_param, :questiongroup => { "name" => "invalid value" }}, valid_session
        assigns(:questiongroup).should eq(questiongroup)
      end

      it "re-renders the 'edit' template" do
        questiongroup = Questiongroup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Questiongroup.any_instance.stub(:save).and_return(false)
        put :update, {:id => questiongroup.to_param, :questiongroup => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested questiongroup" do
      questiongroup = Questiongroup.create! valid_attributes
      expect {
        delete :destroy, {:id => questiongroup.to_param}, valid_session
      }.to change(Questiongroup, :count).by(-1)
    end

    it "redirects to the questiongroups list" do
      questiongroup = Questiongroup.create! valid_attributes
      delete :destroy, {:id => questiongroup.to_param}, valid_session
      response.should redirect_to(questiongroups_url)
    end
  end

end
