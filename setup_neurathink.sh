#!/usr/bin/env bash
set -e

echo "📁 Creating NeuraThink project structure..."

mkdir -p backend/src/{api,services,utils}
mkdir -p frontend/src/{components,hooks}
mkdir -p engine/src
mkdir -p models/{llama,whisper}
mkdir -p data/{prompts,cache}
mkdir -p scripts docs

# backend
touch backend/src/{main.rs,db.rs}
touch backend/src/api/{mod.rs,chat.rs,system.rs}
touch backend/src/services/{mod.rs,llm.rs,whisper.rs}
touch backend/src/utils/{mod.rs,config.rs}
touch backend/Cargo.toml backend/Cargo.lock

# frontend
touch frontend/src/{App.tsx,main.tsx,index.html}
touch frontend/src/components/{ChatBox.tsx,Sidebar.tsx,Settings.tsx}
touch frontend/{package.json,tsconfig.json,tauri.conf.json}

# engine
touch engine/src/{lib.rs,model_loader.rs,inference.rs,tokenizer.rs}
touch engine/Cargo.toml

# models / data / scripts / docs
touch models/README.md
touch data/prompts/{base_prompt.txt,summarize.txt,reply_tone.txt}
touch data/user_config.json
touch scripts/{convert_model.py,benchmark.rs}
touch docs/{architecture.md,roadmap.md,api_reference.md}

touch README.md .gitignore LICENSE

echo "✅ NeuraThink folder structure created successfully!"
