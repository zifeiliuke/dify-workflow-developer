#!/bin/bash
# Dify Workflow Developer Skill 测试脚本

SKILL_DIR="$HOME/.openclaw/skills/dify-workflow-developer"

echo "========================================="
echo "🔧 Dify Workflow Developer Skill 测试"
echo "========================================="
echo ""

# 测试 1：检查文件结构
echo "📋 测试 1：检查文件结构..."
if [ -f "$SKILL_DIR/SKILL.md" ]; then
    echo "✅ SKILL.md 存在"
else
    echo "❌ SKILL.md 缺失"
    exit 1
fi

if [ -f "$SKILL_DIR/README.md" ]; then
    echo "✅ README.md 存在"
else
    echo "❌ README.md 缺失"
    exit 1
fi

if [ -f "$SKILL_DIR/examples.yml" ]; then
    echo "✅ examples.yml 存在"
else
    echo "❌ examples.yml 缺失"
    exit 1
fi

echo ""

# 测试 2：验证 SKILL.md 内容
echo "📝 测试 2：验证 SKILL.md 内容..."
if grep -q "name: dify-workflow-developer" "$SKILL_DIR/SKILL.md"; then
    echo "✅ Skill 名称正确"
else
    echo "❌ Skill 名称缺失"
    exit 1
fi

if grep -q "Dify Workflow Developer" "$SKILL_DIR/SKILL.md"; then
    echo "✅ 描述完整"
else
    echo "❌ 描述缺失"
    exit 1
fi

if grep -q "type: start" "$SKILL_DIR/SKILL.md" && \
   grep -q "type: llm" "$SKILL_DIR/SKILL.md" && \
   grep -q "type: code" "$SKILL_DIR/SKILL.md"; then
    echo "✅ 节点类型文档完整"
else
    echo "⚠️  部分节点类型文档缺失"
fi

echo ""

# 测试 3：验证 README.md 内容
echo "📖 测试 3：验证 README.md 内容..."
if grep -q "功能特性" "$SKILL_DIR/README.md" || grep -q "Features" "$SKILL_DIR/README.md"; then
    echo "✅ 功能说明存在"
else
    echo "❌ 功能说明缺失"
    exit 1
fi

if grep -q "使用方法" "$SKILL_DIR/README.md" || grep -q "Usage" "$SKILL_DIR/README.md"; then
    echo "✅ 使用说明存在"
else
    echo "❌ 使用说明缺失"
    exit 1
fi

echo ""

# 测试 4：验证示例 YAML
echo "🔧 测试 4：验证示例 YAML..."
if grep -q "kind: app" "$SKILL_DIR/examples.yml"; then
    echo "✅ YAML 格式正确"
else
    echo "❌ YAML 格式错误"
    exit 1
fi

if grep -q "type: start" "$SKILL_DIR/examples.yml" && \
   grep -q "type: llm" "$SKILL_DIR/examples.yml" && \
   grep -q "type: answer" "$SKILL_DIR/examples.yml"; then
    echo "✅ 示例包含核心节点"
else
    echo "⚠️  示例节点不完整"
fi

example_count=$(grep -c "## 示例" "$SKILL_DIR/examples.yml" || echo "0")
echo "✅ 包含 $example_count 个示例"

echo ""

# 测试 5：检查文件大小
echo "📊 测试 5：检查文件大小..."
skill_size=$(wc -c < "$SKILL_DIR/SKILL.md")
readme_size=$(wc -c < "$SKILL_DIR/README.md")
examples_size=$(wc -c < "$SKILL_DIR/examples.yml")

echo "   SKILL.md:   $skill_size 字节"
echo "   README.md:  $readme_size 字节"
echo "   examples.yml: $examples_size 字节"

if [ $skill_size -gt 1000 ]; then
    echo "✅ SKILL.md 内容充实"
else
    echo "⚠️  SKILL.md 内容过少"
fi

if [ $readme_size -gt 500 ]; then
    echo "✅ README.md 内容充实"
else
    echo "⚠️  README.md 内容过少"
fi

echo ""

# 测试 6：验证 YAML 语法（如果 yq 可用）
echo "🔍 测试 6：验证 YAML 语法..."
if command -v yq &> /dev/null; then
    if yq eval '.' "$SKILL_DIR/examples.yml" > /dev/null 2>&1; then
        echo "✅ YAML 语法验证通过"
    else
        echo "❌ YAML 语法错误"
        exit 1
    fi
else
    echo "⚠️  跳过（yq 未安装）"
fi

echo ""
echo "========================================="
echo "✅ 所有测试完成！"
echo "========================================="
echo ""
echo "📁 Skill 位置：$SKILL_DIR"
echo ""
echo "🚀 下一步："
echo "   1. 在 OpenClaw 中测试 skill 功能"
echo "   2. 创建工作流设计任务验证能力"
echo "   3. 根据反馈优化 skill 文档"
echo ""
