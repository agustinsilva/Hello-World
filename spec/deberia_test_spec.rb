require 'rspec'
require_relative '../src/prueba.rb'
require_relative '../src/mocks.rb'
describe 'test_deberia' do

  let(:nico){
    Docente.new 'nico'
  }

  let(:tadp){
    GrupoDocente.new nico
  }

  let(:erwin){
    Persona.new 24
  }

  let(:leandro){
    Persona.new 22
  }

  it 'deberia ser igual a 1' do
    expect(1.deberia ser 1).to eq true
  end

  it 'deberia ser mayor a 2' do
    expect(3.deberia ser mayor_que 2).to eq true
  end

  it 'deberia ser menor a 2' do
    expect(1.deberia ser menor_que 2).to eq true
  end

  it 'deberia ser nico' do
    expect(tadp.docentes[0].deberia ser nico).to eq true
  end

  it 'erwin deberia ser mayor a 18' do
    expect(erwin.edad.deberia ser mayor_que 18).to eq true
  end

  it 'erwin deberia ser menor a 40' do
    expect(erwin.edad.deberia ser menor_que 40).to eq true
  end

  it '7 deberia ser 7' do
    expect(7.deberia ser 7).to eq true
  end

  it 'falla true deberia ser false' do
    expect(true.deberia ser false).to eq false
  end

  it 'falla leandro deberia ser 25 (tiene 22)' do
    expect(leandro.edad.deberia ser 25).to eq false
  end
end