<script>
import { Bar } from 'vue-chartjs'
export default {
  extends: Bar,
  props: {
    protein: Number,
    proteinGuideline: Number,
    lipid: Number,
    lipidGuideline: Number,
    carbohydrate: Number,
    carbohydrateGuideline: Number,
  },
  data() {
    return {
      chartdata: {
        labels: ['たんぱく質', '脂質', '炭水化物'],
        datasets: [
          {
            label: ['摂取量'],
            backgroundColor: '#45B868',
            data: [
              Math.round(this.protein),
              Math.round(this.lipid),
              Math.round(this.carbohydrate),
              0,
            ],
          },
          {
            label: ['目安量'],
            backgroundColor: '#7e7e7e',
            data: [
              this.proteinGuideline,
              this.lipidGuideline,
              this.carbohydrateGuideline,
              0,
            ],
          },
        ],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        title: {
          // 見出し
          display: true,
        },
        legend: {
          // 凡例
          display: false,
        },
        scales: {
          yAxes: [
            {
              scaleLabel: {
                // 表示されるy軸の名称について
                display: false, // 表示するか否か
              },
            },
          ],
          xAxes: [
            // x軸
            {
              ticks: {
                autoSkip: false,
                callback: (value, index, values) => {
                  return value
                },
              },
              scaleLabel: {
                // 表示されるx軸の名称について
                display: false,
              },
            },
          ],
        },
        layout: {
          padding: {
            bottom: 0,
          },
        },
      },
    }
  },
  watch: {
    protein(val) {
      const int = Math.round(val)
      this.chartdata.datasets[0].data = [int, this.lipid, this.carbohydrate, 0]
      this.reload()
    },
    proteinGuideline(val) {
      this.chartdata.datasets[1].data = [
        val,
        this.lipidGuideline,
        this.carbohydrateGuideline,
        0,
      ]
      this.reload()
    },
    lipid(val) {
      const int = Math.round(val)
      this.chartdata.datasets[0].data = [
        this.protein,
        int,
        this.carbohydrate,
        0,
      ]
      this.reload()
    },
    lipidGuideline(val) {
      this.chartdata.datasets[1].data = [
        this.proteinGuideline,
        val,
        this.carbohydrateGuideline,
        0,
      ]
      this.reload()
    },
    carbohydrate(val) {
      const int = Math.round(val)
      this.chartdata.datasets[0].data = [this.protein, this.lipid, int, 0]
      this.reload()
    },
    carbohydrateGuideline(val) {
      this.chartdata.datasets[1].data = [
        this.proteinGuideline,
        this.lipidGuideline,
        val,
        0,
      ]
      this.reload()
    },
  },
  mounted() {
    this.reload()
  },
  methods: {
    reload() {
      this.$refs.canvas.height = 200
      this.renderChart(this.chartdata, this.options)
    },
  },
}
</script>
