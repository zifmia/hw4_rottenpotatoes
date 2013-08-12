require 'spec_helper'

describe MoviesController, :type=>:controller do
  describe 'finding similar movies' do
    it 'should call the model method to find movies with the same director' do
      search_movie = mock('the movie')
      Movie.should_receive(:find).with("1").and_return(search_movie)

      fake_results = [mock('movie1'), mock('movie2')]
      search_movie.should_receive(:find_similar_movies).
           and_return(fake_results)
      get :find_similar_movies, {:id => 1}
    end
    it 'should select the similar movies template for rendering'
    it 'should make the similar movies results availbable to that template'
  end
end
