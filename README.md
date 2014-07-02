# Nested Attributes Sample

This is a a sample Rails app that uses nested attributes, and successfully shows validation error
messages from nested models and highlights the correct field.

Things to note:

* The Person model `accepts_nested_attributes_for` the other models. (has_one :address and has_many :pets).
* The other models have validations.
* PeopleController builds empty dummy values for @person.address and @person.pets.
* `PeopleController#person_params` permits :address_attributes and :pets_attributes.
  For each of these, it also specifies which nested attributes to allow -- *including id*,
  so Rails can tell if you're adding or updating a nested model.
* views/people/_form.erb uses `<%= f.fields_for ... %>` to generate the URL params in the format
  that Rails expects.
