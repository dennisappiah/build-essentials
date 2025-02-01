#Installing WSL:
wsl --install


# Installing Build Essentials:
sudo apt update
sudo apt install build-essential


# Installing NVM & Node.js:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 20

Bash:
export PS1="\[\033[01;32m\](\u)\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\] "

ZSH:
export PS1="%F{green}(%n)%f ➜ %F{blue}%c%f "

# Pycharm installation
sudo tar xzf pycharm-*.tar.gz -C /opt/
sudo ln -s /opt/pycharm-*/bin/pycharm.sh /usr/local/bin/pycharm
sudo apt-get install libxrender1
sudo apt-get install libxext6 libxi6 libxrender1 libxtst6 libfreetype6


# create rsa key pair
openssl genrsa -out keypair.pem 2048

# extract public key
openssl rsa -in keypair.pem -pubout -out public.pem

# create private key in PKCS#8 format
openssl pkcs8 -topk8 -inform PEM -outform PEM -nocrypt -in keypair.pem -out private.pem

echo $PATH | tr ':' '\n'

#express mongo db setup
npm install  @types/node @types/express @types/mongoose
npm install ts-node typescript --save-dev
tsc-init 
DB=mongodb+srv://<username>:<password>@cluster0.1jpowym.mongodb.net/<Databasename>?retryWrites=true&w=majority&appName=Cluster0

#nestjs
#-- nest cli
npm i -g @nestjs/cli

# new project
nest new
nest g co
nest g s
nest g module
nest g class coffees/dto/create-coffee.dto --no-spec


# nextjs + payload CMS
Database: *mongodb, postgres
s3 object storage: linode, AWS s3, *Supabase s3 storage
deployment: *vercel


 DO $$
DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = 'public') LOOP
        EXECUTE 'DROP TABLE IF EXISTS public."' || r.tablename || '" CASCADE';
    END LOOP;
END $$;


CREATE TABLE temporary_absentees (
    id BIGSERIAL PRIMARY KEY,
    absent_count VARCHAR(255) NOT NULL,
    hasEmigrants VARCHAR(3) NOT NULL CHECK (hasEmigrants IN ('Yes', 'No')),
    household_id BIGINT,
    FOREIGN KEY (household_id) REFERENCES household_rosters(id)
);


 docker exec -it 3db31125d48c psql -U root -d census-db


