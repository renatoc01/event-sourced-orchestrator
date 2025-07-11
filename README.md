# Event-Sourced Orchestrator

## Overview

The Event-Sourced Orchestrator coordinates the microservices that implement an event-sourced architecture using Kafka.  
It includes the Docker Compose setup for Kafka, Zookeeper, and all related microservices:  
- order-service  
- inventory-service  
- notification-service

This orchestrator simplifies local development and integration testing by managing all service lifecycles in one place.

## Features

- Orchestrates Kafka and Zookeeper containers
- Builds and runs all microservices via Docker Compose
- Enables event-driven communication across services
- Supports integration testing workflows

## Technology Stack

- Docker & Docker Compose  
- Kafka & Zookeeper (Confluent images)  
- Microservices built with Java 17 and Spring Boot  

## Getting Started

### Prerequisites

- Docker  
- Docker Compose  

### Running Locally

Clone this repository and run:

```bash
docker-compose up --build
```

This will build and start all microservices alongside Kafka and Zookeeper.

### Stopping Services

To stop and remove containers, run:

```bash
docker-compose down
```

## CI/CD Pipeline

This repository contains GitHub Actions workflows to:

- Clone microservice repositories
- Build Docker images for all services
- Run integration smoke tests
- Manage service lifecycle during tests

## Directory Structure

```plaintext
.
├── docker-compose.yml       # Orchestrator Docker Compose configuration
├── .github
│   └── workflows
│       └── ci.yml          # GitHub Actions workflow file
└── README.md               # This documentation
