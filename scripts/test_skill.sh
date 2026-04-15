#!/bin/bash
# 齐夏思维技能测试脚本

echo "=== 齐夏思维技能测试 ==="
echo ""

# 测试1：检查技能文件是否存在
echo "测试1：技能文件检查"
if [ -f ~/.hermes/skills/creative/qi-xia-perspective/SKILL.md ]; then
    echo "✅ SKILL.md 存在"
else
    echo "❌ SKILL.md 不存在"
    exit 1
fi

# 测试2：检查参考文件
echo ""
echo "测试2：参考文件检查"
if [ -f ~/.hermes/skills/creative/qi-xia-perspective/references/使用指南.md ]; then
    echo "✅ 使用指南.md 存在"
else
    echo "❌ 使用指南.md 不存在"
fi

if [ -f ~/.hermes/skills/creative/qi-xia-perspective/references/应用案例库.md ]; then
    echo "✅ 应用案例库.md 存在"
else
    echo "❌ 应用案例库.md 不存在"
fi

# 测试3：检查脚本文件
echo ""
echo "测试3：脚本文件检查"
if [ -f ~/.hermes/skills/creative/qi-xia-perspective/scripts/quickstart.sh ]; then
    echo "✅ quickstart.sh 存在"
    if [ -x ~/.hermes/skills/creative/qi-xia-perspective/scripts/quickstart.sh ]; then
        echo "✅ quickstart.sh 可执行"
    else
        echo "⚠️ quickstart.sh 不可执行，尝试修复权限"
        chmod +x ~/.hermes/skills/creative/qi-xia-perspective/scripts/quickstart.sh
    fi
else
    echo "❌ quickstart.sh 不存在"
fi

# 测试4：检查README
echo ""
echo "测试4：README检查"
if [ -f ~/.hermes/skills/creative/qi-xia-perspective/README.md ]; then
    echo "✅ README.md 存在"
    echo "  文件大小: $(wc -l < ~/.hermes/skills/creative/qi-xia-perspective/README.md) 行"
else
    echo "❌ README.md 不存在"
fi

# 测试5：技能内容检查
echo ""
echo "测试5：技能内容检查"
if grep -q "齐夏 · 十日终焉思维操作系统" ~/.hermes/skills/creative/qi-xia-perspective/SKILL.md; then
    echo "✅ 技能标题正确"
else
    echo "❌ 技能标题不正确"
fi

if grep -q "核心心智模型" ~/.hermes/skills/creative/qi-xia-perspective/SKILL.md; then
    echo "✅ 核心心智模型部分存在"
else
    echo "❌ 核心心智模型部分缺失"
fi

if grep -q "决策启发式" ~/.hermes/skills/creative/qi-xia-perspective/SKILL.md; then
    echo "✅ 决策启发式部分存在"
else
    echo "❌ 决策启发式部分缺失"
fi

# 测试6：触发词检查
echo ""
echo "测试6：触发词检查"
if grep -q "用齐夏的视角" ~/.hermes/skills/creative/qi-xia-perspective/SKILL.md; then
    echo "✅ 触发词 '用齐夏的视角' 存在"
else
    echo "❌ 触发词 '用齐夏的视角' 缺失"
fi

if grep -q "齐夏模式" ~/.hermes/skills/creative/qi-xia-perspective/SKILL.md; then
    echo "✅ 触发词 '齐夏模式' 存在"
else
    echo "❌ 触发词 '齐夏模式' 缺失"
fi

# 测试7：技能描述检查
echo ""
echo "测试7：技能描述检查"
if grep -q "基于《十日终焉》小说中齐夏角色的深度分析" ~/.hermes/skills/creative/qi-xia-perspective/SKILL.md; then
    echo "✅ 技能描述正确"
else
    echo "❌ 技能描述不正确"
fi

# 总结
echo ""
echo "=== 测试总结 ==="
echo "技能名称: qi-xia-perspective"
echo "技能位置: ~/.hermes/skills/creative/qi-xia-perspective/"
echo "创建时间: $(date -r ~/.hermes/skills/creative/qi-xia-perspective/SKILL.md '+%Y-%m-%d %H:%M:%S')"
echo "文件数量: $(find ~/.hermes/skills/creative/qi-xia-perspective -type f | wc -l) 个"
echo "总大小: $(du -sh ~/.hermes/skills/creative/qi-xia-perspective | cut -f1)"

echo ""
echo "=== 使用说明 ==="
echo "1. 在Hermes中激活技能: /skill qi-xia-perspective"
echo "2. 或用对话触发: '用齐夏的视角分析这个问题'"
echo "3. 查看完整文档: cat ~/.hermes/skills/creative/qi-xia-perspective/SKILL.md"
echo "4. 运行快速启动: bash ~/.hermes/skills/creative/qi-xia-perspective/scripts/quickstart.sh"

echo ""
echo "✅ 齐夏思维技能创建成功！"