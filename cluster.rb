class Cluster

  # Initialize the class instance
  def initialize
    @people = Array.new
    @vcentroid = Hash.new( "0" )
  end

  # Add a feature vector to the cluster
  def add( person )
    @people.push( person )
  end

  # Remove a feature vector from the cluster
  def remove( person )
    @people.delete( person )
  end

  # Return the cluster centroid
  def get_people
    return @people
  end

  # Calculate the centroid vector from the cluster members
  def calculate_centroid

    # Clear the centroid vector
    @vcentroid.clear
    tcentroid = Hash.new( "0" )

    # Iterate through each feature vector
    @people.each do |person|

      # Sum the feature vectors in this cluster
      person.each do |key,value|
        tcentroid[key] = tcentroid.delete(key).to_i + value.to_i
      end

    end

    # Compute the average for the centroid
    tcentroid.each do |key,value|
      @vcentroid[key] = value.to_f / @people.length
    end

  end

  # Calculate the geometric distance
  def calculate_gd( person )

    gd = 0.0

    person.each do |key,value|
      gd += (@vcentroid[key].to_f-value.to_f) * (@vcentroid[key].to_f-value.to_f)
    end

    gd = Math.sqrt(gd)

    return gd

  end

end

## to do things in program
## test the refactored code once frontend is fixed, if it is working fine
## ask alan if I am allowed to add completed project method for user
## similarly project which are on profile
## a person can do fake certificate we need to check
## content based filtering and collobaration based filtering
## course news on document upload page it has to be fixe

#contact connect app founder for possible help
#write validation fields in course so same course doesn't get stored everytime
