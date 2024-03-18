import axios from "axios";
import { STRAPI_URL } from "../env";

export const api = axios.create({
  baseURL: `${STRAPI_URL}/api`,
});
