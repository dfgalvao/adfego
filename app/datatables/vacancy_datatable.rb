class VacancyDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
      id:          { source: "Vacancy.id" },
      code:        { source: "Vacancy.code" },
      title:       { source: "Vacancy.title" },
      description: { source: "Vacancy.description" },
      schooling:   { source: "Vacancy.schooling" },
      quantity:   { source: "Vacancy.quantity" },
      remuneration:      { source: "Vacancy.remuneration" },
      benefit:   { source: "Vacancy.benefit" },
      workload:   { source: "Vacancy.workload" },
      company:   { source: "Vacancy.company.name" },
      
    }
  end

  def data
    records.map do |record|
      {
          code:        record.code,
          title:       record.title,
          description: record.description,
          schooling:   record.schooling,
          quantity:    record.quantity,
          remuneration: record.remuneration,
          benefit: record.benefit,
          workload: record.workload,
          company: record.company.name,
          


      }
    end
  end

  def get_raw_records
    def get_raw_records
      Vacancy.all
    end
  end

end
