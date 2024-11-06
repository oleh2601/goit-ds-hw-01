# Personal Assistant

## Project Description

"Personal Assistant" is a CLI application (command-line interface) that helps users manage contacts. It is a simple tool for organizing personal data made with purely educational purposes.

## Key Features

- **Contact Management**: Add, edit contacts that can include multiple numbers and a birthday.
- **Check upcoming birthdays**: You can check if any of your contacts has a birthday within the next 7 days.

## Installation and Setup

To run the "Personal Assistant" project in Docker, follow these steps:

1. **Clone the repository**:
   ```sh
   git clone https://github.com/username/goit-ds-hw-01.git
   cd goit-ds-hw-01
   ```

2. **Build the Docker image**:
   In the project directory, run the following command to build the Docker image:
   ```sh
   docker build -t personal-assistant .
   ```

3. **Run the container in interactive mode**:
   To interact with the application via the command line, run the following command:
   ```sh
   docker run -it personal-assistant
   ```

After running this command, you will be in the container's interactive shell and can interact with the application.

## Usage

After launching the container in interactive mode, the application will prompt you to enter commands. Here are some example commands you can use:

- Add a contact:
  ```
  add John +123456789
  ```
- Search for a contact's phone numbers:
  ```
  phone John
  ```
- Add a birthday to an existing contact:
  ```
  add-birthday John 01.01.1990
  ```
- Show the birthday of a contact:
  ```
  show-birthday John
  ```
- Change a contact's phone number:
  ```
  change John +123456789 +987654321
  ```
- View all contacts:
  ```
  all
  ```
- Show upcoming birthdays in the next 7 days:
  ```
  birthdays
  ```
- Get help with available commands:
  ```
  help
  ```

## Requirements

- **Python 3.12.7**: The application was tested with this version of Python. Using other versions may cause incompatibility issues.
- **Poetry**: Poetry is used for dependency management. All dependencies are specified in `pyproject.toml`.
- **Docker**: Docker is required to run the project in a container.

## Dockerfile

The project uses the following `Dockerfile` to build the image:

```dockerfile
FROM python:3.12.7

ENV APP_HOME=/GOIT-DS-HW-01
WORKDIR ${APP_HOME}

COPY . .

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:$PATH"

# Install dependencies
RUN poetry install

CMD ["python", "main.py"]
```

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact

If you have any questions or suggestions for improvement, feel free to contact the project author at: [payfree@tuta.io](mailto:payfree@tuta.io).

---

Thank you for using the "Personal Assistant"! I hope this tool helps you better organize your contacts.






