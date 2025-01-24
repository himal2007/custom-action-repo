FROM alpine:3.17

# Install bash
RUN apk add --no-cache bash

# Copy the script into the container
COPY script.sh /script.sh

# Grant execution permissions
RUN chmod +x /script.sh

# Set the entrypoint
ENTRYPOINT ["/script.sh"]
