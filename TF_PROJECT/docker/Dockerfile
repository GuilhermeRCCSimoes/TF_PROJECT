FROM odoo:16.0

# Update and install any required packages
RUN apt-get update && apt-get install -y \
    python3-pip \
    && pip3 install --no-cache-dir requests pandas

# Copy custom configuration or addons if needed
COPY ./addons /mnt/extra-addons

# Expose necessary Odoo ports
EXPOSE 8069 8072