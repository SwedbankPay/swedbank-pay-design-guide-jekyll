# frozen_string_literal: true

describe "Card Overview" do
  include_context "shared"
  card_index = File.join(@dest_dir, "cards", "index.html")

  describe card_index do
    subject { File.read(card_index) }

    it {
      expect(File).to exist(card_index)
    }

    it 'has expected first card deck' do
      is_expected.to have_tag('article') do
        with_tag('h2#deck-1', :with => { :class => 'heading-line' }) do
          with_tag('a.header-anchor', :with => { :href => '#deck-1' })
        end
        with_tag('.row.card-list') do
          with_tag('.col-lg-6') do
            with_tag('a.dx-card', :with => { :href => '/cards/deck1/card1.html' }) do
              with_tag('.dx-card-icon') do
                with_tag('i.material-icons-outlined', :text => /attach_money/)
              end
              with_tag('.dx-card-content') do
                with_tag('.h4', :text => 'Deck 1 Card 1')
                with_tag('span', :text => 'Deck One Card One')
              end
              with_tag('i.material-icons', :text => /arrow_forward/)
            end
          end
        end
      end
    end

    it 'has expected second card deck' do
      is_expected.to have_tag('article') do
        with_tag('h2#deck-2', :with => { :class => 'heading-line' }) do
          with_tag('a.header-anchor', :with => { :href => '#deck-2' })
        end
        with_tag('.row.card-list') do
          with_tag('.col-lg-12') do
            with_tag('a.dx-card', :with => { :href => '/cards/deck2/card1.html' }) do
              with_tag('.dx-card-icon') do
                with_tag('i.material-icons', :text => /api/)
              end
              with_tag('.dx-card-content') do
                with_tag('.h4', :text => 'Deck 2 Card 1')
                with_tag('span', :text => 'Deck Two Card One')
              end
              with_tag('i.material-icons', :text => /arrow_forward/)
            end
          end
        end
      end
    end
  end
end
