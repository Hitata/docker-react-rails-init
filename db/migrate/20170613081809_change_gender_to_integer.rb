class ChangeGenderToInteger < ActiveRecord::Migration[5.1]
  def change
    say_with_time "**Migrate gender data from string to integer**" do
      unless column_exists? :candidates, :gender_tmp
        say "1. Create temporary gender_tmp column in candidates table"
        add_column :candidates, :gender_tmp, :integer, default: 0
      end

      gender_hash = {
        unspecified: 0,
        male: 1,
        female: 2,
        other: 3
      }
      say "2. Convert gender through hash: #{gender_hash}"
      Candidate.find_each do |c|
        c.gender_tmp = gender_hash.fetch c.gender_before_type_cast.to_sym
        c.save
        say "Candidate ##{c.id} with gender: #{c.gender_before_type_cast.to_s} convert to: #{c.gender_tmp}"
      end

      say "3. Remove column :gender in candidate table"
      remove_column :candidates, :gender

      say "4. Rename column :gender_tmp to :gender in candidate table"
      rename_column :candidates, :gender_tmp, :gender
    end
  end
end
