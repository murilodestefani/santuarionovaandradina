import { STRAPI_URL } from "@/env";
import axios from "axios";

export const api = axios.create({
  baseURL: `${STRAPI_URL}/api`,
});
