-- PostgreSQL initialization script for n8n
-- This script runs when the PostgreSQL container starts for the first time

-- Create the n8n database if it doesn't exist
-- (This is handled by POSTGRES_DB environment variable, but keeping for reference)

-- Set up proper encoding and collation
-- (This is handled by POSTGRES_INITDB_ARGS, but keeping for reference)

-- Create extensions that n8n might need
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pg_trgm";

-- Set up proper permissions
GRANT ALL PRIVILEGES ON DATABASE n8n TO n8n;

-- Create a schema for n8n if needed (optional)
-- CREATE SCHEMA IF NOT EXISTS n8n;

-- Log the initialization
DO $$
BEGIN
    RAISE NOTICE 'PostgreSQL initialization completed for n8n database';
END $$;
