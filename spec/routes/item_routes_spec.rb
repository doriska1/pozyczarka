describe 'Item routes', type: :routing do
    it { expect(get: '/items').to route_to('items#index')} # 'conteoller#action'
    it { expect(get: '/items/1').to route_to('items#show', id: '1') }
    # it { expect route(:get, '/items/1').to('items#show', id: '1') }
    it { expect(post: '/items').to route_to('items#create') }
    it { expect(put: '/items/1').to route_to('items#update', id: '1') }
    it { expect(delete: '/items/1').to route_to('items#destroy', id: '1') }
    it { expect(get: '/active').to route_to('items#active')}
    it { expect(get: '/inactive').to route_to('items#inactive')}
    it { expect(get: '/borrowed').to route_to('items#borrowed')}
    it { expect(get: '/on_place').to route_to('items#on_place')}
end
