class DogsController < ApplicationController
    def index
        @dogs = Dog.all
        @dogs_sorted = @dogs.sort_by{|dog|dog.employees.length}.reverse
    end

    def show
        @dog = Dog.find(params[:id])
    end
end
