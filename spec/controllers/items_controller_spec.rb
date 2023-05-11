# frozen_string_literal: true

describe ItemsController do
  describe 'GET #index' do
    it 'return http success' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #show' do
    let(:item) { create(:item) } # z factorybot

    it 'return Http success' do
      get :show, params: { id: item.id }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #new' do
    it 'return http success' do
      get 'new'
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #edit' do
    let(:item) { create(:item) }

    it 'return http success' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST #create' do
    let(:item) { build(:item) }
    it 'returns http redirect' do
      post :create, params: { item: item.attributes }
      expect(response).to have_http_status(302)
    end
  end

  describe 'PUT #update' do
    let(:item) { create(:item) }
    let(:new_attributes) { attributes_for(:item) }
    it 'return http redirect' do 
      put :update, params: { id: item.id, item: new_attributes }
      expect(response).to have_http_status(302)
    end
  end

  describe 'DELETE #destroy' do
    let(:item) { create(:item) }
    it 'return http redirect' do
      delete :destroy, params: { id: item.id }
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET  #active' do
    it 'return http success' do
      get :active
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET  #inactive' do
    it 'return http success' do
      get :inactive
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET  #borrowed' do
    it 'return http success' do
      get :borrowed
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET  #on_place' do
    it 'return http success' do
      get :on_place
      expect(response).to have_http_status(:ok)
    end
  end
end
