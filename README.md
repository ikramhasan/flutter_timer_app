3 Flutter timer app

List of Timers Screen:

    - [x] Display a list of timers.
    - [ ] Each list item should show relevant details provided in the design.
    - [ ] Pressing the play/pause button should run or pause the timer
    - [ ] Skip implementing different tabs (favorite, odoo etc)
    - [ ] Skip implementing the bottom navigation bar (recents, projects etc)
    - [ ] Plus button in the AppBar should take user to create timer screen

Create Timer Screen:

    - [ ] Implement a form to create a new timer.
    - [ ] Include dropdowns for selecting projects and tasks.
    - [ ] Add a text input for the timer description.
    - [ ] Include a checkbox for marking the timer as a favorite.
    - [ ] Upon adding a timer user should return to the list of timers screen.

Task Details Screen:

    - [ ] Display details of a selected task in the details tab(you can use random or static deadline and assigned to values)
    - [ ] Show the running timer-related details and description in the timesheets tab. Pressing play/pause should run or pause the timer. Pressing stop will mark it as completed.
    - [ ] Updating the timer state should reflect on the list of timer screen and vice-versa.
    - [ ] Show normal completed timers (Optional)
    - [ ] Show expandable completed timers (Optional)

In-Memory Data Management:

    - [ ] Use a pre-defined in-memory list for projects and tasks data. Each Timer can contain information about Task, and Project as well. Feel free to structure the data as you wish from the desgin.
    - [ ] All data (timers, projects, tasks) should be managed in-memory. Use hydrated_bloc package if needed to persist some data. No need for persistence otherwise.

Theme and Styling:

    - [ ] Implement theme styles (TextStyle, Color, etc.) according to the provided design system in Figma.
    - [ ] Ensure the UI matches the Figma designs.

State Management:

    - [ ] Use the BLoC pattern for state management across the application.
