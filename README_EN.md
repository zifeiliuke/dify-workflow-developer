# 🔧 Dify Workflow Developer Skill

**Professional Dify workflow and agent development skill for OpenClaw.**

## 🎯 Features

- **Workflow Design** - Design optimal workflow architecture based on requirements
- **Node Configuration** - Configure all 14 Dify node types with best practices
- **YAML Generation** - Generate complete, valid Dify workflow YAML files
- **Debugging & Optimization** - Identify and fix workflow issues
- **Integration** - Connect APIs, databases, and external services

## 📋 Supported Node Types

| Node Type | Purpose |
|-----------|---------|
| `start` | Flow entry point |
| `llm` | LLM processing |
| `code` | Python code execution |
| `if-else` | Conditional branching |
| `http-request` | API calls |
| `iteration` | Loop processing |
| `agent` | Tool auto-selection |
| `knowledge-retrieval` | RAG |
| `template-transform` | Text templating |
| `answer` | Output response |
| `end` | Workflow end |
| `tool` | External tool call |
| `assigner` | Variable assignment |
| `parameter-extractor` | Structured extraction |

## 🚀 Installation

### For OpenClaw Users

1. **Clone this repository**
```bash
cd ~/.openclaw/skills/
git clone https://github.com/zifeiliuke/dify-workflow-developer.git
```

2. **Restart OpenClaw Gateway**
```bash
openclaw gateway restart
```

3. **Verify installation**
```bash
ls ~/.openclaw/skills/dify-workflow-developer/
```

## 📖 Usage

### Basic Usage

Once installed, you can use this skill by asking:

```
"Create a Dify workflow for [use case]"
"Optimize this workflow: [YAML or description]"
"Debug my workflow: [error message]"
"Add [node type] to handle [functionality]"
```

### Example Workflow

Check out `examples.yml` for 3 ready-to-use workflow examples:
1. Simple Q&A Workflow
2. API Data Processing Workflow
3. Batch Processing Workflow

### File Delivery

This skill automatically delivers workflow files via:
1. Upload to termbin.com
2. Send Telegram link to user
3. Include usage instructions

## 📁 Project Structure

```
dify-workflow-developer/
├── SKILL.md              # Core skill documentation
├── README.md             # Chinese user guide
├── README_EN.md          # English user guide (this file)
├── examples.yml          # Example workflows
├── demo-workflow.yml     # Demo workflow (AI News Assistant)
├── ecommerce-news-assistant.yml  # E-commerce News Assistant
├── test.sh              # Automated test script
└── .gitignore           # Git ignore rules
```

## 🔧 Development

### Running Tests

```bash
cd ~/.openclaw/skills/dify-workflow-developer/
bash test.sh
```

### Adding New Examples

Add your workflow examples to `examples.yml` following the existing format.

## 📚 Documentation

- **Chinese Docs**: See `README.md`
- **Skill Details**: See `SKILL.md`
- **Examples**: See `examples.yml`

## 🤝 Contributing

1. Fork this repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Dify](https://dify.ai) - The platform this skill is designed for
- [OpenClaw](https://github.com/openclaw/openclaw) - The framework that hosts this skill

## 📞 Support

For issues and questions:
- Open an issue on GitHub
- Contact: zhouchaolun0202@gmail.com

---

**Ready to build amazing Dify workflows!** 🚀
