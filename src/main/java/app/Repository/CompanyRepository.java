package app.Repository;


import app.models.Company;

import java.util.List;

public interface CompanyRepository {
    List<Company> findAll();

    Company findById(int id);

    void save(Company company);

    void delete(int id);

    void updateCompany(int id, Company company);

    void clear();


}
