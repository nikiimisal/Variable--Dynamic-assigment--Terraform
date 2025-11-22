
>>>Here, we will run the program using dynamic coding by defining variables -Clear the concept of Dynamic assigment. Previously, we executed the code using hard-coded values.<br>
Too see that repo [click here](https://github.com/nikiimisal/Basic-Terraform-setup-using-window-Launching-server-)

<h4>Here i will give you a screenshot and small concept what can they do..If you want the code shown in the screenshot…</h4>

   [click here](https://github.com/nikiimisal/Variable--Dynamic-assigment--Terraform/blob/main/terraform.tf)
   
<h2> Example 1</h2>

This is an example of a main Terraform file and a variables file. In the main file `ec2.tf`, you only need to reference the variables. <br>
Then, in the variables file `variables.tf`, define their values.<br>
These values will automatically be assigned to the main file, and the instance will launch accordingly.<br>

>In large projects, editing code can cause errors, so it’s better to make changes in variables.

| **main.tf**    | **variable.tf**          |
|--------------------------------|------------------------------------|
| ![VS](https://github.com/nikiimisal/Variable--Dynamic-assigment--Terraform/blob/main/img/ss/Screenshot%202025-11-22%20133749.png?raw=true) | ![AWS](https://github.com/nikiimisal/Variable--Dynamic-assigment--Terraform/blob/main/img/ss/Screenshot%202025-11-22%20133758.png?raw=true) |






