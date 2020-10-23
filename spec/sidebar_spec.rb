# frozen_string_literal: true

require 'its'
require 'jekyll'
require 'sidebar'
require 'sidebar_page_collection'

sidebar = SwedbankPay::Sidebar

describe sidebar do
  include_context 'shared'

  describe '#pages' do
    subject { sidebar.pages }

    its(:count) { is_expected.to eq 28 }
    its(:length) { is_expected.to eq 10 }

    describe '[0]' do
      subject { sidebar.pages[0] }

      its(:path) { is_expected.to eq '/' }
      its(:children) { is_expected.to be_an_instance_of SwedbankPay::SidebarPageCollection }

      describe 'title' do
        it { expect(subject.title.to_s).to eq 'Home' }
      end
    end

    describe '[1].title' do
      it { expect(sidebar.pages[1].title.to_s).to eq 'Page 1' }
    end

    describe '[3]' do
      subject { sidebar.pages[3] }

      its(:path) { is_expected.to eq '/checkout/' }
      its(:active?, '/checkout/') { is_expected.to be true }
      its(:active?, '/checkout/after-payment') { is_expected.to be true }

      describe 'children[3]' do
        subject { sidebar.pages[3].children[3] }

        its(:path) { is_expected.to eq '/checkout/after-payment' }
        its(:active?, '/checkout/after-payment') { is_expected.to be true }
      end
    end

    describe '[5]' do
      subject { sidebar.pages[6] }

      describe 'title' do
        it { expect(subject.title.to_s).to eq 'Resources' }
      end

      describe 'children' do
        subject { sidebar.pages[6].children }

        its(:length) { is_expected.to eq 6 }

        describe '[0].title' do
          it { expect(subject[0].title.to_s).to eq 'Alpha' }
        end

        describe '[1].title' do
          it { expect(subject[1].title.to_s).to eq 'Beta' }
        end

        describe '[2].title' do
          it { expect(subject[2].title.to_s).to eq 'Gamma' }
        end
      end
    end
  end
end
