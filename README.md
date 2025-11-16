📝 SIMPLE COURSE ENROLLMENT APP

## Project Overview

This is a simple Flutter app that simulates enrolling a student in a course.  
The app demonstrates form management, multi-step navigation, and global state management using Provider and ChangeNotifier.

## Project Features

1. **Student Info Form**  
   - Collects student first name, last name, email, and student ID.  
   - Validates required fields.  
   - Stores data in global state.  

2. **Course Selection**  
   - Displays a hard-coded list of courses.  
   - Allows selecting a course and updates global state.  
   - Button to proceed is only active when a course is selected.  

3. **Enrollment Review**  
   - Displays student information and selected course.  
   - Provides a confirmation button to submit enrollment.
  
  ## Project Structure

  lib/
├── main.dart # Entry point of the app
├── student (Folder)/
│ ├── student.dart # Student data model
│ └── studentInfo.dart # Screen 1: Student Info Form
├── course (Folder)/
│ ├── course.dart # Course data model
│ ├── inputs.dart # Custom form inputs widget
│ └── courseSelection.dart # Screen 2: Course Selection
├── enrollment (Folder)/
│ └── enrollmentReview.dart # Screen 3: Enrollment Review
└── provider (Folder)/
└── enrollmentState.dart # Global state management using ChangeNotifier


## How to use the Simple Course Enrollment App

1. Start the App
   - It opens Screen 1: Student Info Form
   - It has four fields: First Name, Last Name, Email, Student ID
   
2. Fill out the Student Form
   - Enter all required form
   - The app will check if any field is empty, if it has, a warning message will appear
   - For the Email field, it will check whether its a valid email address or not
   - Once all the fields are valid, click "Submit Form"

3. Course Selection Screen
   - After submitting the form, it will proceed to Course Selection Screen
   - The user will see a list of available courses, each showing:
     - Course Name
     - Instructor
     - Credits
  - Tap on a course to select it. A check icon will appear if selected.
  - Click "Select Course" and proceed to the next screen
    - "Select Course" button will only be available once the user has chosen a specific course.

4. Enrollment Review Screen
   - After successfully selecting a course, it will proceed to Enrollment Review Screen.
   - It will display the following:
     - All the student data the user entered.
     - The course selected by the user.
   - Check if all the details are correct, if not, the user can go back to the last page by pressing the return button
   - If all details are correct, tap "Confirm Enrollment" button
   - It will give a confirmation that the enrollment has been submitted.

## Flow of the App 

1. Open app → Fill student info → Submit

2. Select a course → Tap “Select Course”

3. Review info → Tap “Confirm Enrollment”

4. See confirmation message → Done

  
