# 导出您的论坛

FreeFlarum 不想将您锁定在我们的服务中，因此您可以随时自由地获取您的数据并将您的论坛转移到其他地方。 以下是您需要的步骤：

1. 登录 FreeFlarum 并下载您的数据库和头像。
2. 在别处安装 Flarum的相同版本，然后按照 常规文档 执行操作。 测试您安装的论坛是否正常工作。
3. 导入你的数据库：zcat my_freeflarum_database_export.sql.gz | mysql -u USER -h HOST -p 其中 USER 和 HOST 来自您的新数据库帐户。
4. 恢复您的资产：上传并解压您的public assets文件
5. 可以肯定的是，清除缓存：php flarum cache:clear并迁移Flarum的数据库：php flarum migrate
6. 完成

FreeFlarum 很遗憾看到你离开，但祝你的论坛好运！

如果您对我们改进服务有任何建议，请[让我们知道](https://freeflarum.com/support)。 谢谢！