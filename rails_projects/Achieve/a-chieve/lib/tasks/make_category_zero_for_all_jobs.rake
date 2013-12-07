desc "Change the level field to zero for all jobs"
task :make_category_zero_for_all_jobs => :environment do
  zero_everything
end

def zero_everything
  Job.all.each do |job|
    job.level = 0
    job.save
  end
end
