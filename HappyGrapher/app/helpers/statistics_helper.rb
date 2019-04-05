module StatisticsHelper
  # def sporters_by_age
  #   bar_chart @sporters.group(:age).count, height: '500px', library: {
  #     title: {text: 'Sporters by age', x: -20},
  #     xAxis: {
  #        title: {
  #            text: 'Age'
  #        }
  #     },
  #     yAxis: {
  #        allowDecimals: false,
  #        title: {
  #            text: 'Ages count'
  #        }
  #     }
  #   }
  # end

  def sporters_by_age
    bar_chart sporters_by_age_charts_path, height: '500px', library: {
      title: {text: 'Sporters by age' },
      xAxis: {
        title: {
          text: 'Age'
        }
      },
      yAxis: {
        allowDecimals: false,
        title: {
          text: 'Ages count'
        }
      }
    }
  end
end
