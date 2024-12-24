import { fileURLToPath } from 'url';
import { dirname } from 'path';
const __filename= fileURLToPath(import.meta.url)
const __dirname= dirname(__filename)
import express from 'express';
import mysql from 'mysql';
import path from 'path';
import fs from 'fs';
import http from 'http';
import cookieParser from 'cookie-parser';
import session from 'express-session';
import MySQLStore from 'express-mysql-session';
import flash from 'connect-flash';
import bodyParser from 'body-parser';
import { render } from 'ejs';
import { randomBytes, createHmac } from 'crypto';
import ejs from 'ejs';
import multer from 'multer';
import nodemailer from 'nodemailer';
import dotenv from 'dotenv';
import cors from 'cors';
import Timer from 'setinterval';
import axios from 'axios';
import ZKLib from 'zklib-32ble';
import sjcl from 'sjcl';
import jwt from 'jsonwebtoken';

dotenv.config();
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.set('trust proxy', 1); // trust first proxy
app.enable('trust proxy', true);
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, "views"));

app.use(express.static('./public/'));
app.use(flash());
app.use(cors({
    origin: true,
    allowedHeaders: ['Authorization', 'Content-Type'],
    credentials: true,
    optionsSuccessStatus: 200
}));

const sqlmap = mysql.createPool({
    host: process.env.host_name,
    user: process.env.user_name,
    password: process.env.user_password,
    database: process.env.database_name,
    // queueLimit: 0,
    connectionLimit: 50
});

const cookiename = createHmac('md5', 'pipilikapira').update('eduxoom').digest('hex');
const MySQLStoreSession= MySQLStore(session);
const MySQLStoreSave = new MySQLStoreSession({ expiration: 86400000 * 30 }, sqlmap);

app.use(cookieParser('pipilikiapipra'));
app.use(session({
    key: 'eduxoom',
    secret: 'pipilikiapipra',
    store: MySQLStoreSave,
    resave: false,
    saveUninitialized: false,
    name: cookiename,
    cookie: {
        path: '/', secure: false, httpOnly: true, maxAge: 86400000 * 30,
    }
}));

// const io = require('socket.io')(app.listen(process.env.listen_port || 30));
const port= process.env.listen_port || 30;
app.listen(port, () => {
    console.log('code by alifn => server running on http://localhost:'+port);
});

const mysession = new Date().getUTCFullYear();

export {
    __dirname, __filename, app, express, mysession, mysql, session, cookieParser, flash, bodyParser,
    sqlmap, multer, nodemailer, dotenv, cors, randomBytes,
    createHmac, fs, path, ejs, MySQLStore, Timer, axios, ZKLib, sjcl, jwt, port
};
