# 自定义域名

您的论坛最初命名为 `<forum>.freeflarum.com` 或 `<forum>.flarum.cloud`。但是使用自己的域名很容易（而且免费），让它看起来更专业。
另外，如果您想将您的论坛迁移到其他地方，您可以保留相同的名称（和数据）。

!!! info "要开始使用您自己的域名，请按照下列步骤操作"

    1. 获取域名，注册商如腾讯云或阿里云；
    2. FreeFlarum 主机的 CNAME DNS 记录（见下文）；
    3. 在FreeFlarum 设置 页面中输入您的自定义域。

配置 DNS 可能很棘手，因为每个注册商都有不同的方法和规则来这样做。我们将尝试告诉您入门的基础知识。

## 一般 DNS 说明

您应该创建一条从您自己的域名到 FreeFlarum 的 CNAME 记录，如下所示： `subdomain.yourdomain.tld 300 IN CNAME yourforumname.freeflarum.com`

TTL 您的提供商可能会要求 TTL，您应该将其设置得尽可能低，例如：2分钟。这使您可以在必要时快速更改服务器。

## 使用根域名

没有子域的域（例如 `your.tld` 而不是 `www.your.tld`）称为“根”域。根 CNAME 不受 DNS 官方支持，也不与 FreeFlarum 兼容。
有一个技巧可以“伪造”您的域的根功能，只需使用“www”子域即可。或者，您可以从根域重定向到链接到 FreeFlarum 的子域，例如。 g.：您的论坛位于`“your.forum.tld”`，`“forum.tld”`将用户重定向到`“your.forum.tld”`。可以在您的域注册商处设置重定向规则，如果它们支持的话。
如果您不断收到来自 FreeFlarum 的错误消息，提示找不到 CNAME，请首先使用 第三方工具仔细检查是否可以找到 CNAME。
如果无法添加 CNAME 记录，您的提供商可能不它。您可以切换到另一个 DNS 提供商。 这些 DNS 服务可与 FreeFlarum 一起使用：[Namecheap](https://www.namecheap.com), [Porkbun](https://porkbun.com), [Gandi](https://www.gandi.net), [HiChina](https://www.hichina.com), [Dynadot](https://www.dynadot.com), [Alidns](https://www.alidns.com), [HostFly.by](https://hostfly.by), [NameBright](https://www.namebright.com).

!!! note "使用 Namecheap"

    ![](https://buq.eu/screenshots/UGyVEpRGUQtalMytIlkH5ijM.png)

!!! note "使用 Cloudflare"

    ![](https://buq.eu/screenshots/MMlyMjo6I6Hb7IfSXwHXOaxu.png)

代理 确保禁用 Cloudflare 代理，使图标为灰色（不是橙色）。

!!! question "重置域"

    如果您使用了自定义域但不再需要它，您可以在 [FreeFlarum 设置](https://freeflarum.com/settings/forum_settings)。 