import axios from 'axios'
export default function ({ $axios, redirect }) {
  $axios.setToken('access_token')

  $axios.onResponse((response) => {
    $axios.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000')
  })
  $axios.onRequest((config) => {
    axios.defaults.headers.common.Authorization = '1'
    return config
  })
}