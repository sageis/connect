class AddProfessionsToPrograms < ActiveRecord::Migration
  def change
  	Program.find_by_title("Teens Exploring Technology").professions << Profession.find_by_title("Software Engineer")
  	Program.find_by_title("Applied Research Innovations in Science and Engineering (ARISE)").professions << Profession.find_by_title("Software Engineer")
  	Program.find_by_title("Rensselaer PREFACE Program").professions << Profession.find_by_title("Software Engineer")
  	Program.find_by_title("Community Opus Project").professions << Profession.find_by_title("Musician")
  	Program.find_by_title("The Carleton Liberal Arts Experience (CLAE)").professions << Profession.find_by_title("Real Estate Agent")
  	Program.find_by_title("Career Discovery in Architecture for High School Students").professions << Profession.find_by_title("Architect")
  	Program.find_by_title("Claremont Summer").professions << Profession.find_by_title("Public Speaker")
  	Program.find_by_title("Wisconsin AHEC").professions << Profession.find_by_title("Physician")
  	Program.find_by_title("Catholic University Experiences in Architecture").professions << Profession.find_by_title("Architect")
  	Program.find_by_title("Georgetown University Gateway to Business Program for High School Juniors").professions << Profession.find_by_title("Management Consulting")
  	Program.find_by_title("Young Scholars Program").professions << Profession.find_by_title("Software Engineer")
  	Program.find_by_title("Program in Mathematics for Young Scientists").professions << Profession.find_by_title("Accountant")
  	Program.find_by_title("REEL Education for Youth (RECYouth)").professions << Profession.find_by_title("Professor")
  	Program.find_by_title("Minority Introduction to Engineering and Science").professions << Profession.find_by_title("Software Engineer")

  end
end
