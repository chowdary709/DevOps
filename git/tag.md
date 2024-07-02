# Creating a Tag

#### Lightweight Tag

A lightweight tag is simply a pointer to a specific commit. It's recommended for marking points like releases when you don't need to store additional information.

```sh
git tag <tag_name>
```

For example, to create a lightweight tag `v1.0.0`:

```sh
git tag v1.0.0
```

#### Annotated Tag

An annotated tag is recommended for more detailed information. It includes a message, author information, and date. This can be useful for documenting releases.

```sh
git tag -a <tag_name> -m "<tag_message>"
```

For example, to create an annotated tag `v1.0.0` with a message:

```sh
git tag -a v1.0.0 -m "Release version 1.0.0"
```

### Pushing Tags to Remote

After creating a tag locally, you might want to push it to the remote repository (origin):

```sh
git push origin <tag_name>
```

To push all tags:

```sh
git push origin --tags
```

### Example Sequence

Here's a step-by-step example of creating and pushing a tag:

1. **Create a lightweight tag locally (e.g., `v1.0.0`)**:
   ```sh
   git tag v1.0.0
   ```

2. **Create an annotated tag locally with a message (e.g., `v1.1.0`)**:
   ```sh
   git tag -a v1.1.0 -m "Version 1.1.0 release"
   ```

3. **Push tags to the remote repository**:
   ```sh
   git push origin v1.0.0   # Push a specific tag
   git push origin v1.1.0   # Push another specific tag
   git push origin --tags   # Push all tags
   ```



# Deleting a Tag

#### Delete a Local Tag

To delete a tag locally, use the following command:

```sh
git tag -d <tag_name>
```

Replace `<tag_name>` with the name of the tag you want to delete. For example:

```sh
git tag -d v1.0.0
```

#### Delete a Remote Tag

To delete a tag from the remote repository (origin), use:

```sh
git push origin --delete tag <tag_name>
```

Replace `<tag_name>` with the name of the tag you want to delete. For example:

```sh
git push origin --delete tag v1.0.0
```

### Pushing Tags

After deleting the tag locally and remotely, if needed, you can push all tags to the remote repository to synchronize:

```sh
git push origin --tags
```

This command pushes all local tags that are not currently in the remote repository to the remote repository.

### Example Sequence

Here's how you might execute these commands in sequence:

1. **Delete the tag locally (example: `v1.0.0`)**:
   ```sh
   git tag -d v1.0.0
   ```

2. **Delete the tag from the remote repository**:
   ```sh
   git push origin --delete tag v1.0.0
   ```

3. **Push all local tags to the remote repository** (if needed):
   ```sh
   git push origin --tags
   ```
