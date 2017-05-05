class StudentsController < ApplicationController
  before_action :authenticate_user!
  

  def show
    @student = Unirest.get("http://localhost:3000/api/v1/students/#{current_user.student_id}").body
    render 'show.html.erb'
  end

  def edit
    @student = Unirest.get("http://localhost:3000/api/v1/students/#{current_user.student_id}").body
    render 'edit.html.erb'
  end

  def update
  	student = Unirest.patch("http://localhost:3000/api/v1/students/#{current_user.student_id}",
      parameters: {
        first_name:,
        last_name:,
        email:,
        phone_number:,
        short_bio:,
        linkedin_url:,
        twitter_handle:,
        personal_web_url:, 
        online_resume_url:,
        github_url: ,
        photo:,
        experience:[
          {
            id: 
            start_date: 
            end_date: 
            job_title: 
            company_name: 
            details: 
            student_id: 
            created_at: 
            updated_at: 
          },
          {
            id: 
            start_date: 
            end_date: 
            job_title: 
            company_name: 
            details: 
            student_id: 
            created_at: 
            updated_at: 
          }

        ],
        education: [
          {
            id: 
            start_date:
            end_date: 
            degree: 
            university: 
            details: 
            student_id: 
            created_at: 
            updated_at: 
          },
          {
            id: 
            start_date:
            end_date: 
            degree: 
            university: 
            details: 
            student_id: 
            created_at: 
            updated_at: 
          }
        ],
        capstones: [
          {
          id: 
          name: 
          description: 
          url: 
          student_id: 
          created_at: 
          updated_at: 
          }
        ],
        skills: [
          {
            id: 
            skill_name: 
            created_at: 
            updated_at: 
          },
          {
            id: 
            skill_name: 
            created_at: 
            updated_at: 
          },
          {
            id: 
            skill_name: 
            created_at: 
            updated_at: 
          },
          {
            id: 
            skill_name: 
            created_at: 
            updated_at: 
          },
          {
            id: 
            skill_name: 
            created_at: 
            updated_at: 
          },
        ]

      }

    ).body
  end
end

 {
"id": 1,
"first_name": 
"last_name": 
"email": 
"phone_number": 
"short_bio": 
"linkedin_url": 
"twitter_handle":
"personal_web_url": 
"online_resume_url":
"github_url": 
"photo":
"experience": [
{
"id": 
"start_date": 
"end_date": 
"job_title": 
"company_name": 
"details": 
"student_id": 
"created_at": 
"updated_at": 
{
"id": 11,
"start_date": "2017-05-03",
"end_date": "CURRENT",
"job_title": "Global Consultant",
"company_name": "Glover, Schiller and Marquardt",
"details": "whiteboard wireless e-tailers",
"student_id": 1,
"created_at": "2017-05-05T00:05:10.871Z",
"updated_at": "2017-05-05T00:05:10.871Z"
}
],
"education": [
{
"id": 1,
"start_date": "2016-09-19",
"end_date": "2015-02-15",
"degree": "Associate Degree in Biomedical Science",
"university": " Technical College",
"details": "Automated web-enabled concept",
"student_id": 1,
"created_at": "2017-05-03T04:33:44.905Z",
"updated_at": "2017-05-03T04:33:44.905Z"
},
{
"id": 11,
"start_date": "2005-12-08",
"end_date": "2014-10-14",
"degree": "Associate Degree in Criminology",
"university": " Technical College",
"details": "Multi-channelled intermediate internet solution",
"student_id": 1,
"created_at": "2017-05-05T00:05:10.974Z",
"updated_at": "2017-05-05T00:05:10.974Z"
}
],
"capstones": [
{
"id": 1,
"name": "Doctor Star-Lord Brain",
"description": "Quia kale chips synth. Esse officiis corrupti eos molestiae irony. Asymmetrical accusamus aut sartorial nisi excepturi assumenda ut.",
"url": "http://abshire.info/marques.rempel",
"screenshot": "https://cdn.weasyl.com/static/media/42/e3/5d/42e35d65d75564e3af26b417b3f04272459216d62a1fa108f2713df54ab9aff1.png",
"student_id": 1,
"created_at": "2017-05-05T00:05:11.052Z",
"updated_at": "2017-05-05T00:05:11.052Z"
}
],
"skills": [
{
"id": 38,
"skill_name": "Stealth",
"created_at": "2017-05-05T00:05:11.180Z",
"updated_at": "2017-05-05T00:05:11.180Z"
},
{
"id": 50,
"skill_name": "Energy Armor",
"created_at": "2017-05-05T00:05:11.198Z",
"updated_at": "2017-05-05T00:05:11.198Z"
},
{
"id": 65,
"skill_name": "Energy Beams",
"created_at": "2017-05-05T00:05:11.218Z",
"updated_at": "2017-05-05T00:05:11.218Z"
},
{
"id": 77,
"skill_name": "Biokinesis",
"created_at": "2017-05-05T00:05:11.236Z",
"updated_at": "2017-05-05T00:05:11.236Z"
},
{
"id": 95,
"skill_name": "Illusions",
"created_at": "2017-05-05T00:05:11.263Z",
"updated_at": "2017-05-05T00:05:11.263Z"
}
]
}