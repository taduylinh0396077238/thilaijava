package employee;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
@NoArgsConstructor
public class Employee {
    public int id;
    public String fullName;
    public String birthday;
    public String address;
    public String position;
    public String department;
}



