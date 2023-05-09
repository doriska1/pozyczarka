 describe Item, type: :model do
    describe "column" do
        it { is_expected.to have_db_column(:name).of_type(:string)}
        it { is_expected.to have_db_column(:active).of_type(:boolean)}
        it { is_expected.to have_db_column(:borrowed).of_type(:boolean)}
        it { is_expected.to have_db_column(:item_type).of_type(:integer)}
    end


    describe "validations" do
        # before {Item.new("book")}
        it do
            is_expected.to validate_presence_of :name
        end
        it {is_expected.to validate_length_of(:name).is_at_least(3)}
        it {is_expected.to define_enum_for(:item_type).with_values(Item.item_types)}
    end
 end
 
