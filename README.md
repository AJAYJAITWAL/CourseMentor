# Test task

 A Ruby on Rails Application for Course Management with Tutors

## Features

- We display all courses that include tutors.
- We generate courses that include several tutors.

## Prerequisites

Make sure you have the following installed on your system:

- Ruby (version 3.0.0)
- Rails (version 7.1.3)
- Postgresql
## Installation

To run this project locally, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/AJAYJAITWAL/CourseMentor.git

2. Navigate to the project directory
   ```bash
   cd CourseMentor

3. Install dependencies
   ```bash
   bundle install

4. Set up the database (Set Postgres username and password in the database.yml file if needed)
   ```bash
   rails db:create
   rails db:migrate

5. Start the server
   ```bash
   rails server

6. Visit http://localhost:3000 in your web browser to access the application.

7. Run Rspec
   ```bash
    rspec

8. End points
  ```bash
    http://localhost:3000/courses with GET request
    http://localhost:3000/courses with POST request

    Request Body:
    {
      "course": {
        "name": "Mathematics",
        "tutors_attributes": [
          { "name": "John Doe", "bio": "I have a Master's degree in Mathematics and have been tutoring for over 5 years. I specialize in calculus and algebra." },
          { "name": "Jane Smith", "bio": "I'm a passionate physics enthusiast with a background in engineering. I enjoy making complex concepts understandable for students." }
        ]
      }
    }

   
