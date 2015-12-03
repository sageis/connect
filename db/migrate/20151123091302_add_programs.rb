class AddPrograms < ActiveRecord::Migration
  def up
    #you can switch up the name used here(options are Sage, Jasmine, Betsy, and Cristian)
    @creator = User.find_by_first_name("Sage")
    program1 = Program.new(:creator_id => @creator.id, :due_date => 
                            "2016-01-15 11:59:00", 
                :description => "The program is an immersive experience where" +
                " young men of color develop as technology leaders by learning " +
                "computer programming, entrepreneurship, and public speaking. " + 
                "We use tech and coding as tools that lead to discipline, " + 
                "confidence, and critical thinking.",
                :photo_file_name => "txt.jpg", :applied => false, 
                :price => 0, :region => "CA", :date_time => DateTime.now,
                :website_link => "http://exploringtech.org/",
                :title => "Teens Exploring Technology",
                :paid => false, :housed => false)
    program1.save(:validate => false)

    program2 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-03-15 11:59:00", 
                :description => "A 7-week summer program in which 10th " +
                "and 11th grade students with good grades work " +
                "in a research lab and take college classes at NYU." +
                "Students completing the entire program will receive a $500 stipend.",
                :photo_file_name => "arise.jpg", :applied => false, 
                :price => 0, :region => "NY", :date_time => DateTime.now,
                :website_link => "http://engineering.nyu.edu/k12stem/arise/",
                :title => "Applied Research Innovations in Science and Engineering (ARISE)",
                :paid => true, :housed => false)
    program2.save(:validate => false)

    program3 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-01-15 11:59:00", 
                :description => "CLAE will select 50 high school students who have just " +
                "completed their sophomore year and bring them  " +
                "to Carleton, all expenses paid, for a one-week summer program." +
                "The CLAE program introduces the strengths of a liberal arts " + 
                "education through an array of courses in science," +
                "art, social sciences, and technology.",
                :photo_file_name => "clae.jpg", :applied => false, 
                :price => 0, :region => "MN", :date_time => DateTime.now,
                :website_link => "http://apps.carleton.edu/summer/clae/",
                :title => "The Carleton Liberal Arts Experience (CLAE)",
                :paid => false, :housed => false)
    program3.save(:validate => false)


    program4 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-01-15 11:59:00", 
                :description => "One of the top programs in the U.S. for high school " +
                "sophomores, juniors and seniors who want to learn about studying " +
                "architecture before they get to college. Geared toward those who are " +
                "considering or who have already enrolled in an architecture program, " + 
                "participants not only learn architectural history but also the skills" +
                "and responsibilities required in contemporary architecture practice. ",
                :photo_file_name => "architecture.jpg", :applied => false, 
                :price => 1900, :region => "IN", :date_time => DateTime.now,
                :website_link => "http://architecture.nd.edu/academics/professional-development/career-discovery/",
                :title => "Career Discovery in Architecture for High School Students",
                :paid => false, :housed => false)
    program4.save(:validate => false)


    program5 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-02-15 11:59:00", 
                :description => "A two-week residential summer experience for " +
                "talented high school sophomores and juniors, who " +
                "will enter 11th or 12th grade in the fall of the coming " +
                "year and who have expressed a strong, early interest in " + 
                "pursuing a career in the engineering and technological professions." +
                "It is for high school students from groups that have been historically" +
                "and traditionally underrepresented or underserved in " + 
                "science, engineering, and technological fields. ",
                :photo_file_name => "preface.jpg", :applied => false, 
                :price => 0, :region => "NY", :date_time => DateTime.now,
                :website_link => "http://doso.rpi.edu/update.do",
                :title => "Rensselaer PREFACE Program",
                :paid => false, :housed => false)
    program5.save(:validate => false)

    program6 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-01-15 11:59:00", 
                :description => "A program providing high-quality, affordable music " +
                "education for children in one of San Diego County’s low-income " +
                "communities near the Mexican border.",
                :photo_file_name => "opus.jpg", :applied => false, 
                :price => 0, :region => "CA", :date_time => DateTime.now,
                :website_link => "http://www.sdys.org/community-opus-project",
                :title => "Community Opus Project",
                :paid => false, :housed => false)
    program6.save(:validate => false)

    program7 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-06-23 11:59:00", 
                :description => "A series of 6 debate and leadership/professional " +
                "communication programs for middle school and high school students.",
                :photo_file_name => "claremont.jpg", :applied => false, 
                :price => 1500, :region => "CA", :date_time => DateTime.now,
                :website_link => "http://claremontsummer.org/",
                :title => "Claremont Summer",
                :paid => false, :housed => true)
    program7.save(:validate => false)

    program8 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-03-23 11:59:00", 
                :description => "5 day programs held around the state of Wisconsin. " +
                "These camps allow the students to experience first hand " +
                "the challenges, opportunities and rewards of health professions.",
                :photo_file_name => "ahec.png", :applied => false, 
                :price => 0, :region => "WI", :date_time => DateTime.now,
                :website_link => "https://www.ahec.wisc.edu/health-careers-summer-camps.htm",
                :title => "Wisconsin AHEC",
                :paid => false, :housed => true)
    program8.save(:validate => false)

    program9 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-01-23 11:59:00", 
                :description => "An intense three-week workshop designed for " +
                "students interested in architecture that exposes them to both " +
                "the academic and professional side of the field.",
                :photo_file_name => "cua.jpg", :applied => false, 
                :price => 0, :region => "DC", :date_time => DateTime.now,
                :website_link => "http://architecture.cua.edu/other-programs/experiences-in-architecture-overview.cfm",
                :title => "Catholic University Experiences in Architecture",
                :paid => false, :housed => false)
    program9.save(:validate => false)

    program10 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-05-23 11:59:00", 
                :description => "The program gives students the opportunity to explore " +
                "the various aspects of business through  " +
                "an intensive five-week, three undergraduate-credit course.",
                :photo_file_name => "georgetown.png", :applied => false, 
                :price => 0, :region => "DC", :date_time => DateTime.now,
                :website_link => "http://scs.georgetown.edu/departments/21/summer-programs-for-high-school-students/college-credit-courses",
                :title => "Georgetown University Gateway to Business Program for High School Juniors",
                :paid => false, :housed => false)
    program10.save(:validate => false)

    program11 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-05-01 11:59:00", 
                :description => "The program offers future scientists and engineers " +
                "a unique opportunity for hands-on experience while " +
                "still in high school.",
                :photo_file_name => "ysp.jpg", :applied => false, 
                :price => 0, :region => "MA", :date_time => DateTime.now,
                :website_link => "http://www.stem.neu.edu/programs/ysp/",
                :title => "Young Scholars Program",
                :paid => false, :housed => false)
    program11.save(:validate => false)

    program12 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-03-01 11:59:00", 
                :description => "Aix-week summer program at Boston University designed " +
                "to encourage strongly motivated high school students to explore " +
                "in depth the creative world of mathematics in a supportive community of peers " +
                "counselors, research mathematicians, and visiting scientists.",
                :photo_file_name => "promsys.gif", :applied => false, 
                :price => 180, :region => "MA", :date_time => DateTime.now,
                :website_link => "http://www.promys.org/",
                :title => "Program in Mathematics for Young Scientists",
                :paid => false, :housed => true)
    program12.save(:validate => false)

    program12 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-01-10 11:59:00", 
                :description => "A free 10-week after-school program in which " +
                "students attend theater, music, and dance performances",
                :photo_file_name => "recyouth.jpeg", :applied => false, 
                :price => 0, :region => "MA", :date_time => DateTime.now,
                :website_link => "http://www.nycgovparks.org/crc/recyouth",
                :title => "REEL Education for Youth (RECYouth)",
                :paid => false, :housed => false)
    program12.save(:validate => false)  

    program13 = Program.new(:creator_id => @creator.id, :due_date => 
                "2016-01-01 11:59:00", 
                :description => "A rigorous academic enrichment program for " +
                "promising high school juniors interested in studying and " +
                "exploring careers in science, engineering, and entrepreneurship. " +
                "During six weeks in the summer before their senior year, " +
                "participants tackle advanced academic challenges, develop " +
                "the skills necessary to achieve success in an increasingly " +
                "globalized economy, and forge relationships with individuals " +
                "from diverse racial, ethnic, cultural, and socioeconomic backgrounds. " +
                "The program is scholarship-based, with students paying only for " +
                "transportation to and from MIT.",
                :photo_file_name => "mites.jpg", :applied => false, 
                :price => 0, :region => "MA", :date_time => DateTime.now,
                :website_link => "http://engineering.mit.edu/programs/mites",
                :title => "Minority Introduction to Engineering and Science",
                :paid => false, :housed => true)
    program13.save(:validate => false)      
  end
end

