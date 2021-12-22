package spring_mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {

        model.addAttribute("employee", new Employee());

        return "ask-emp-details-view";
    }

    @GetMapping("/showDetails")
    public String showEmployeeDetails(@Valid @ModelAttribute("employee") Employee employee, BindingResult bindingResult) {
        employee.setName(employee.getName().replaceAll(" ", ""));
        if (bindingResult.hasErrors()) {
            return "ask-emp-details-view";}
        else if (employee.getName().length()<2) {
            System.out.println(employee.getName() + " <-- Are you sure about this? The length of this name is too small :(");
            return "ask-emp-details-view";
        }
        else {return "show-empl-details-view";}
    }
}
