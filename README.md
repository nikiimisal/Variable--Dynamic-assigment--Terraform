
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



<h2> Example 2</h2>

This example shows that even without defining values in the code, an instance can still be launched.<br>
During `terraform apply` , Terraform asks for the missing values.😜 <br>
It simply means that if values aren’t written in the code, they must be provided somewhere else.

| **variable.tf (in-code)**    | **Terminal**          |
|--------------------------------|------------------------------------|
| ![VS](https://github.com/nikiimisal/Variable--Dynamic-assigment--Terraform/blob/main/img/ss/Screenshot%202025-11-22%20135858.png?raw=true) | ![AWS](https://github.com/nikiimisal/Variable--Dynamic-assigment--Terraform/blob/main/img/ss/Screenshot%202025-11-22%20135932.png?raw=true) |


<h2> Quick Concept Recall</h2>

Before we move to Example Three, let’s first clarify one concept so that it becomes easier for you to understand.<br>
Terraform allows variables to be stored in three types of files:

1. `variable.tf`
2. `variable.tfvars`
3. `variable.auto.tfvars`

   * You can use any one of the three terraform variable files; only one is required in the project(folder).<br>
   For example, refer to Example 1 above.<br>
<br>
<br>
* If all three variable files exist, Terraform follows a priority order—first one is used, then the second, then the third.<br>
  This is called the `precedence`
<br>
The order is as follows:

1. `variable.auto.tfvars`
2.  `variable.tf`
3.  `variable.tfvars`

There is one more level of priority above all variable files—Values passed during `terraform apply` get the highest priority.<br>
and the instance is created using that.

```
terraform apply -var "my_instance=t2.small" --auto-aprove
```

Here are the screenshots of how the three files look; the code is already in the repo.<br>
or say this is the examples of `varible` file's


>Each `.tf` file's should contain different values.

| **main.tf**    | **first-priroty**          |
|--------------------------------|------------------------------------|
| ![VS](https://github.com/nikiimisal/Variable--Dynamic-assigment--Terraform/blob/main/img/ss/Screenshot%202025-11-22%20142752.png?raw=true) | ![AWS](https://github.com/nikiimisal/Variable--Dynamic-assigment--Terraform/blob/main/img/ss/Screenshot%202025-11-22%20142159.png?raw=true) |


| **2. variable.auto.tfvars**    | **3. variable.tf**          |
|--------------------------------|------------------------------------|
| ![VS](https://github.com/nikiimisal/Variable--Dynamic-assigment--Terraform/blob/main/img/ss/Screenshot%202025-11-22%20142718.png?raw=true) | ![AWS](https://github.com/nikiimisal/Variable--Dynamic-assigment--Terraform/blob/main/img/ss/Screenshot%202025-11-22%20142738.png?raw=true) |


| **4. variable.tfvars**    |
|--------------------------------|
| ![VS](https://github.com/nikiimisal/Variable--Dynamic-assigment--Terraform/blob/main/img/ss/Screenshot%202025-11-22%20142729.png?raw=true) |


<h2> Example 3</h2>





