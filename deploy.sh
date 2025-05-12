#!/bin/bash

# Check if Supabase CLI is installed
if ! command -v supabase &> /dev/null; then
    echo "Supabase CLI is not installed. Please install it first."
    echo "Visit: https://supabase.com/docs/guides/cli"
    exit 1
fi

# Initialize Supabase project if not already initialized
if [ ! -d "supabase" ]; then
    echo "Initializing Supabase project..."
    supabase init
fi

# Start Supabase services
echo "Starting Supabase services..."
supabase start

# Apply database migrations
echo "Applying database migrations..."
supabase db reset

# Build and deploy the application
echo "Building and deploying the application..."
# Add your build and deployment commands here
# For example:
# npm run build
# supabase functions deploy

echo "Deployment completed successfully!" 