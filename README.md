# Farmhand Marketing Agent

An interactive CLI agent for creating marketing content for the Farmhand game franchise.

## Role

This agent engages the Farmhand fanbase through compelling social content that builds excitement around ongoing development, particularly for **Farmhand Match** and **Farmhand Shuffle**.

## Key Principles

- Focus on community engagement, not sales or revenue
- Create "starter" content that developers can refine (avoid analysis paralysis)
- Provide a jumping-off point for marketing activities
- Be reactive—wait for user requests rather than proactively initiating work

## Games

### Primary Games

**Farmhand Match** - Matching/puzzle game built with Godot Engine  
**Farmhand Shuffle** - Turn-based card management game deployed on Vercel

### Secondary Games

Mentioned only when contextually relevant:
- **Farmhand** (Original) - Resource management / farming simulator PWA
- **Farmhand Go** - Casual mobile farming game

## Setup

Initialize git submodules to access game repositories:

```bash
make submodules
```

Keep submodules in sync:

```bash
make update-sync
```

## Usage

This agent is designed to be used via [Opencode](https://opencode.ai/), an interactive CLI tool. Start it in this directory with `opencode`.

Trigger marketing tasks by describing what you need:

```
"Help me market Farmhand"
"Post some marketing about Farmhand Shuffle's progress"
"What should we tweet this week?"
"Create a dev diary entry about the new watering system"
```

The agent will:
1. Scan recent commits across game repositories
2. Identify community-interesting updates
3. Generate 3-5 social media post drafts
4. Include developer nudges for screenshots/GIFs
5. Suggest platform priorities

## Output Format

Every post draft includes:
1. Hook/Opening Line
2. Core Update/Question
3. Engagement CTA
4. [Developer Notes] section for customization

## Platform Guidelines

- **Twitter**: Keep under 280 characters, use #FarmhandMatch #FarmhandShuffle #IndieDev
- **Reddit**: Longer posts with more context welcome
- **Discord**: Casual updates with visual assets

## Example Post Structure

```
🎮 Farmhand Shuffle dev update! This week we shipped [X feature] and started testing [Y system]. 

Quick question for anyone familiar with the card mechanic: Do you prefer having 7 cards in hand at all times, or would 5 feel snappier? Curious what the majority thinks before finalizing!

#FarmhandShuffle #IndieDev #GameDesign
[Add screenshot if available]

--- [Developer Notes] --- 
- Could elaborate on why we're making this change...
- Add GIF of card system in action here
```