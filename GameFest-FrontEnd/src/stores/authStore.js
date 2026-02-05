import { defineStore } from 'pinia'
import api from '@/lib/api'

export const useAuthStore = defineStore('auth', {
  state: () => ({
    user: null,
    isLoggedIn: false,
    role: null,
    loading: true
  }),
  actions: {

    async checkAuth() {
      this.loading = true
      try {
        const response = await api.get('/auth/check')
        if (response.data.success) {
          this.user = response.data.user
          this.isLoggedIn = true
          this.role = response.data.user.role.toUpperCase()
        } else {
          this.user = null
          this.isLoggedIn = false
          this.role = null
        }
      } catch (error) {
        this.user = null
        this.isLoggedIn = false
        this.role = null
      } finally {
        this.loading = false
      }
    },

    async login(email, password) {
      const response = await api.post('/auth/login', { email, password })
      if (response.data.success) {
        this.user = response.data.user
        this.isLoggedIn = true
        this.role = response.data.user.role.toUpperCase()
      }
      return response.data
    },

    async register(username, email, password) {
      const response = await api.post('/auth/register', { username, email, password })
      return response.data
    },

    async logout() {
      try {
        await api.post('/auth/logout')
      } catch (error) {
        console.error('Error al cerrar sesión en el servidor:', error)
      } finally {
        this.user = null
        this.isLoggedIn = false
        this.role = null
      }
    }
  }
})