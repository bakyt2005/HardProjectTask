package app.Repository;


import app.models.Groups;

import java.util.List;

public interface GroupsRepository {
    List<Groups> findAll();

    Groups findById(int id);

    void save(Groups groups);

    void delete(int id);

    void updateGroups(int id, Groups groups);

    void clear();
}
