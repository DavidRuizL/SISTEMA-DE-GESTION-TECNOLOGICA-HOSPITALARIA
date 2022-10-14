import { createRouter, createWebHistory } from "vue-router";
import HomeView from "../views/HomeView.vue";

const routes = [
  {
    path: "/",
    name: "home",
    component: HomeView,
  },
  {
    path: "/listarequiposbio",
    name: "ListarEquiposBio",
    component: () => import("../components/ListarEquiposBio.vue"),
  },
  {
    path: "/listarequiposinfra",
    name: "ListarEquiposInfra",
    component: () => import("../components/ListarEquiposInfra.vue"),
  },
  {
    path: "/listarequipossis",
    name: "ListarEquiposSis",
    component: () => import("../components/ListarEquiposSis.vue"),
  },
  {
    path: "/listarequiposna",
    name: "ListarEquiposNa",
    component: () => import("../components/ListarEquiposNa.vue"),
  },
  {
    path: "/listarresponsables",
    name: "ListarResponsables",
    component: () => import("../components/ListarResponsables.vue"),
  },
  {
    path: "/about",
    name: "about",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () =>
      import(/* webpackChunkName: "about" */ "../views/AboutView.vue"),
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
