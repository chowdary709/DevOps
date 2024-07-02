# Creating the `dev` Branch Locally and Remotely, and Pushing Changes to `main`

#### Step-by-Step Guide

1. **Create the `dev` Branch Locally**
    ```sh
    git checkout -b dev
    ```

   This command creates a new branch named `dev` and switches to it.

2. **Push the `dev` Branch to the Remote Repository**
    ```sh
    git push origin dev
    ```

   This command pushes the newly created `dev` branch to the remote repository (assuming `origin` is your remote name).

3. **Switch to the `main` Branch (if not already on it)**
    ```sh
    git checkout main
    ```

   Switch back to the `main` branch to continue working or to push changes.

4. **Ensure Your `main` Branch is Up-to-Date**
    ```sh
    git pull origin main
    ```

   This command fetches and merges changes from the remote `main` branch to your local `main` branch.

5. **Push Your Changes to the `main` Branch**
    ```sh
    git push origin main
    ```

   Finally, push any changes made on the `main` branch to the remote repository.

### Full Command Sequence

Here is the complete sequence of commands you can run in your terminal:

```sh
# Create the dev branch locally
git checkout -b dev

# Push the dev branch to the remote repository
git push origin dev

# Switch back to the main branch
git checkout main

# Ensure your main branch is up-to-date
git pull origin main

# Push your changes to the main branch
git push origin main
```






# Deleting the `dev` Branch Locally and Remotely, and Pushing Changes to `main`

### Step-by-Step Guide

1. **Delete the Local `dev` Branch**
    ```sh
    git branch -d dev
    ```

    Output:
    ```sh
    Deleted branch dev (was 5cda492).
    ```

2. **Delete the Remote `dev` Branch**
    ```sh
    git push origin --delete dev
    ```

3. **Switch to the `main` Branch (if not already on it)**
    ```sh
    git checkout main
    ```

4. **Ensure Your `main` Branch is Up-to-Date**
    ```sh
    git pull origin main
    ```

5. **Push Your Changes to the `main` Branch**
    ```sh
    git push origin main
    ```

### Full Command Sequence

Here is the full sequence of commands you can run in your terminal:

```sh
git branch -d dev
git push origin --delete dev
git checkout main
git pull origin main
git push origin main
```

By following these steps, you ensure that the `dev` branch is removed both locally and remotely, and that your `main` branch is up-to-date and synchronized with the remote repository.