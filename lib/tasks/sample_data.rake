task(:sample_data => :environment) do
  ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
  end
  Post.delete_all
  10.times do |n|
    Post.create id: n + 1, title: "#{n + 1}", body: "butt #{n}"
  end
end
