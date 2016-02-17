require 'rails_helper'

RSpec.describe "home/index.html.haml", type: :view do
  it 'displays name' do
    render
    expect(rendered).to have_css('h1', text: 'Sreeja')
  end

  it ' does not display name' do
    render
    expect(rendered).to_not have_css('h1', text: 'Sreeja')
  end

  it 'displays name with match' do
    render
    expect(rendered).to match /Sreeja/
  end

  it 'does not display name with match' do
    render
    expect(rendered).not_to match /Sreeja/
  end

  it 'does not display name with match' do
    render
    expect(rendered).to have_link('Sreeja', href: 'google.com/hello')
  end
end
