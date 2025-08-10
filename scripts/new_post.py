#!/usr/bin/env python3
"""
Script to create a new blog post for the Quarto blog.
Usage: python scripts/new_post.py
"""

import os
import re
from datetime import datetime
from pathlib import Path


def slugify(text):
    """Convert text to URL-friendly slug."""
    text = re.sub(r'[^\w\s-]', '', text.lower())
    text = re.sub(r'[-\s]+', '-', text)
    return text.strip('-')


def create_new_post():
    """Create a new blog post with template content."""
    # Get post details from user
    title = input("Enter post title: ").strip()
    if not title:
        print("Title cannot be empty!")
        return
    
    description = input("Enter post description: ").strip()
    if not description:
        description = f"A blog post about {title.lower()}"
    
    author = input("Enter author name (default: The Code Writer): ").strip()
    if not author:
        author = "The Code Writer"
    
    # Get categories
    print("Enter categories (comma-separated, e.g., 'python, tutorial, beginners'):")
    categories_input = input("Categories: ").strip()
    if categories_input:
        categories = [cat.strip() for cat in categories_input.split(',')]
    else:
        categories = ["general"]
    
    # Create slug and directory
    slug = slugify(title)
    today = datetime.now().strftime("%Y-%m-%d")
    
    # Create post directory
    posts_dir = Path("posts")
    post_dir = posts_dir / slug
    post_dir.mkdir(parents=True, exist_ok=True)
    
    # Create post content
    categories_yaml = "\n".join([f"  - {cat}" for cat in categories])
    
    post_content = f'''---
title: "{title}"
description: "{description}"
author: "{author}"
date: "{today}"
categories:
{categories_yaml}
draft: true
---

## Introduction

Write your introduction here...

## Main Content

Add your main content here...

## Conclusion

Wrap up your thoughts here...

---

*Thank you for reading! Feel free to share your thoughts and feedback.*
'''
    
    # Write the post file
    post_file = post_dir / "index.qmd"
    with open(post_file, 'w', encoding='utf-8') as f:
        f.write(post_content)
    
    print(f"✅ New post created successfully!")
    print(f"📁 Location: {post_file}")
    print(f"📝 Title: {title}")
    print(f"🏷️  Categories: {', '.join(categories)}")
    print(f"\n📋 Next steps:")
    print(f"1. Edit the post content in: {post_file}")
    print(f"2. Add any images to: {post_dir}/")
    print(f"3. When ready, change 'draft: true' to 'draft: false'")
    print(f"4. Preview with: pixi run preview")


if __name__ == "__main__":
    try:
        create_new_post()
    except KeyboardInterrupt:
        print("\n❌ Post creation cancelled.")
    except Exception as e:
        print(f"❌ Error creating post: {e}")
