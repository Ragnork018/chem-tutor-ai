#!/bin/bash

# Chemistry Tutor AI - Automated Setup Script
# This script creates the complete project structure and sets up all dependencies

set -e

echo "🧪 Chemistry Tutor AI Setup"
echo "============================="
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}Step 1: Creating project structure...${NC}"

# Create backend structure
mkdir -p backend/app/{ingestion,retrieval,llm,diagrams,guardrails,api}
mkdir -p backend/data/{ncert,chemfig}
mkdir -p backend/static/diagrams
mkdir -p backend/tests

# Create frontend structure  
mkdir -p frontend/{app/tutor,components,lib,public}

echo -e "${GREEN}✓ Project structure created${NC}"
echo ""

echo -e "${GREEN}Step 2: Creating backend files...${NC}"

# Backend requirements.txt
cat > backend/requirements.txt << 'EOF'
fastapi==0.109.0
uvicorn[standard]==0.27.0
pydantic==2.5.3
pydantic-settings==2.1.0
python-multipart==0.0.6
httpx==0.26.0
pymu