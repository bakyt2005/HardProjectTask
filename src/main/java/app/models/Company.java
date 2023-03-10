package app.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@NoArgsConstructor
@Getter
@Setter
//@Table(name = "company")

public class Company {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "companyName")
    private String companyName;
    @Column(name = "locatedCountry")
    private String locatedCountry;
    @OneToMany(mappedBy = "company", cascade = CascadeType.ALL)
    private List<Course> courses;
    @OneToMany(mappedBy = "company", cascade = CascadeType.ALL)
    private List<Groups> groups;

    public Company(String companyName, String locatedCountry) {
        this.companyName = companyName;
        this.locatedCountry = locatedCountry;
    }

    @Override
    public String toString() {
        return "Company{" +
               "companyName='" + companyName + '\'' +
               ", locatedCountry='" + locatedCountry + '\'' +
               '}';
    }
}
