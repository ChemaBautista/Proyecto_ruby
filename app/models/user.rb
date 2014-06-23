class User < ActiveRecord::Base
    validates_presence_of :nombre, :email, :password,
    :message => "Campos vacios"
    validates_length_of :nombre, :within=>4..10
    validates_uniqueness_of :nombre, :email
end
