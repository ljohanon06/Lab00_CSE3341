# Lab 00 — Git/GitHub + Quartus & Questa Setup

## Objective

The purpose of this lab is to verify that your development environment, including GitHub, Quartus, and Questa, is properly configured for the course.

By the end of this lab, you will have:

- Set up Git and GitHub
- Installed and configured **Quartus Prime Lite 25.1**
- Installed and configured **Questa**
- Cloned your course/assignment GitHub repository
- Created and simulated a basic SystemVerilog design
- Compiled the design using Quartus Prime Lite
- Made the required FPGA pin assignments
- Programmed and tested the design on the FPGA development board
- Ran the simulation testbench using Questa
- Collected the required screenshots as evidence
- Committed and pushed your completed work to GitHub
- Submitted the completed Lab 00 assignment

---

# Part 1 — Install Quartus Prime Lite 25.1

## 1. Download Quartus Prime Lite

Download **Quartus Prime Lite Edition 25.1 for Windows** from:

https://www.altera.com/downloads/fpga-development-tools/quartus-prime-lite-edition-design-software-version-25-1-windows

Use the Quartus Prime Lite installer provided on this page.

---

## 2. Launch the Installer

After the download completes:

1. Open your **Downloads** folder.
2. Locate:

```text
qinst-lite-windows-25.1std-1129
```

3. Double-click the installer.
4. If Windows asks whether you want to allow the Quartus Prime Installer to make changes to your device, click **Yes**.

---

## 3. Select the Components

When the Quartus Prime Installer opens, select **all components shown in the screenshot below**.

**Do not change the default installation location.**

<img width="1093" height="833" alt="Screenshot 2026-08-18 173608" src="https://github.com/user-attachments/assets/2afe7935-8dbe-4d92-ba0f-e7abdc4e589a" />

Verify that your selections match the screenshot before continuing.

Click:

**Download and Install**

---

## 4. Approve the Additional Installers

During installation, additional installation windows may appear.

Click **Install** on the **first** pop-up.

Click **Install** again on the **second** pop-up.

<img width="492" height="234" alt="Screenshot 2026-08-18 174953" src="https://github.com/user-attachments/assets/eaf07203-b31b-43fe-8375-554e9a5ea058" />
<img width="491" height="230" alt="Screenshot 2026-08-18 175003" src="https://github.com/user-attachments/assets/88a3d196-aec4-4720-896d-e23d73147424" />

Do not cancel these installations.

---

## 5. Complete the Installation

Wait until the installer displays a message indicating that the software was successfully installed.

Click the **Software Successfully Installed** message/button to complete the installation process.

---

# Part 2 — Verify Quartus and the USB-Blaster

## 1. Launch Quartus

Open **Quartus Prime Lite Edition 25.1**.

Verify that Quartus launches successfully without reporting installation errors.

---

## 2. Connect the FPGA Board

Connect the FPGA development board to your computer using the board's **JTAG/USB-Blaster connection**.

Make sure that:

- The FPGA board is powered on.
- The USB cable is connected to the correct JTAG/USB-Blaster port.
- The USB cable is connected to your computer.

---

## 3. Verify the USB-Blaster

From Quartus, open:

**Tools → Programmer**

In the Programmer window, open **Hardware Setup**.

Verify that Quartus recognizes the **USB-Blaster** connected to the FPGA board.

If the USB-Blaster does not appear, do not continue to the FPGA programming portion of the lab until the connection problem has been resolved.

---

# Part 3 — Set Up the Questa License

Questa requires a no-cost license before you can use it for simulation.

Use the provided **Questa License Setup Guide** for the complete setup procedure.

To begin the license setup:

1. Open **Quartus Prime Lite**.
2. Select **Tools**.
3. Select **License Setup**.
4. Click **Get No-Cost License**.
5. Check the box shown in the screenshot below.
6. Click **OK**.

After completing the license configuration, verify that **Questa launches successfully**.

---

# Part 4 — Create the Quartus Project

Your Lab 00 repository contains the files and folders you will use for the remainder of the assignment.

**Do not create the Quartus project in a random location on your computer.** The project must be created inside the designated Quartus project folder in your Lab 00 repository.

## 1. Locate the Provided SystemVerilog File

Navigate to the **SystemVerilog** folder in your Lab 00 repository.

Locate the provided `.sv` SystemVerilog design file.

You will use this file as the source file for your Quartus project.

---

## 2. Create the Project

Open Quartus and create a **new Quartus project**.

When selecting the project directory, place the project inside the designated **Quartus project folder** in your Lab 00 repository.

Add the provided SystemVerilog `.sv` file from the **SystemVerilog folder** to your Quartus project.

Make sure that the correct FPGA device, 10M50DAF484C7G for the laboratory development board is selected.

---

# Part 5 — Edit and Compile the SystemVerilog Design

Open the provided SystemVerilog design file.

Follow the instructions/comments contained in the file and make the required changes to the design.

Save your changes.

Compile the project using:

**Processing → Start Compilation**

Wait for Quartus to finish compiling the project.

The compilation must complete successfully before continuing.

If Quartus reports errors, read the error messages, correct your SystemVerilog design, and compile the project again.

> **Required Evidence:** Take a screenshot showing a successful Quartus compilation.

Place the screenshot in the appropriate **Quartus screenshots folder** in your repository.

---

# Part 6 — Make the FPGA Pin Assignments

The signals in your SystemVerilog design must be connected to the appropriate physical pins on the FPGA development board.

Create the required **pin assignments** for the design according to the Lab 00 instructions.

Verify that:

- Each input is assigned to the correct physical FPGA pin.
- Each output is assigned to the correct physical FPGA pin.
- The correct I/O standard is used where required.

After completing the pin assignments, compile the project again.

> **Required Evidence:** Take a screenshot showing your completed pin assignments.

Place the screenshot in the appropriate **Quartus screenshot folder**.

---

# Part 7 — Program and Test the FPGA Board

After the project successfully compiles:

1. Connect and power on the FPGA development board.
2. Open **Tools → Programmer**.
3. Verify that the correct **USB-Blaster** is selected.
4. Add/select the generated programming file if it is not already present.
5. Enable **Program/Configure**.
6. Click **Start**.

Wait until Quartus reports that programming has completed successfully.

Now physically test the design on the FPGA development board.

Use the appropriate switches, push buttons, LEDs, or other board hardware required by the Lab 00 design.

Verify that the hardware behaves according to the design specification.

> **Required Evidence:** Take a video of the DE10 showcasing the design functionality. Place it in the Demonstration Video folder.
---

# Part 8 — Run the Questa Simulation

Locate the provided **testbench** for the Lab 00 design.

Launch Questa and simulate the SystemVerilog design using the provided testbench.

Run the simulation for the required amount of time.

Examine the waveform and verify that the simulated outputs match the expected behavior of the design.

Your waveform should clearly show the relevant:

- Inputs
- Outputs
- Signal transitions
- Simulation timing

Adjust the waveform zoom so that the behavior of the design can be clearly evaluated.

> **Required Evidence:** Take a screenshot of the Questa waveform showing that the design operates correctly.

Place your Questa simulation screenshot in the appropriate **Questa screenshot folder**.

---

# Part 9 — Organize Your Submission

Before submitting, verify that all files are stored in their designated folders in the repository.

Your submission should include:

- An edit to the README file with your name and student ID on top 
- Your completed SystemVerilog source file
- Your Quartus project
- Your testbench
- Quartus compilation evidence
- Pin-assignment evidence
- FPGA programming evidence
- Questa simulation evidence

Do **not** place screenshots or project files randomly in the root of the repository.

Use the folder structure provided with the assignment.

---

# Part 10 — Commit and Push Your Work

Open PowerShell or Git Bash inside your Lab 00 repository.

Check the repository status:

```bash
git status
```

Stage your completed work:

```bash
git add .
```

Commit your work:

```bash
git commit -m "Complete Lab 00"
```

Push the commit to GitHub:

```bash
git push
```

After pushing, open your assignment repository on GitHub and verify that your files and evidence are visible.

Finally submit your assignment:

```bash
gh student submit
```

---

# Part 11 — Submit Lab 00

Complete the course submission process using the submission instructions provided for Lab 00.

Before submitting, verify that:

- [ ] Quartus Prime Lite 25.1 is installed and launches successfully.
- [ ] Quartus recognizes the USB-Blaster.
- [ ] Questa is installed and the license is configured.
- [ ] The Quartus project is located in the correct repository folder.
- [ ] The provided SystemVerilog file has been edited as required.
- [ ] The Quartus project compiles successfully.
- [ ] All required FPGA pin assignments are complete.
- [ ] The FPGA board has been successfully programmed.
- [ ] The physical FPGA design has been tested.
- [ ] The testbench runs successfully in Questa.
- [ ] The required Questa waveform screenshot has been captured.
- [ ] All screenshots are stored in the correct evidence folders.
- [ ] All required source and project files are in the repository.
- [ ] Your changes have been committed.
- [ ] Your latest commit has been pushed to GitHub.
- [ ] You verified the files directly on GitHub.
- [ ] The assignment has been submitted using the required course submission procedure.
