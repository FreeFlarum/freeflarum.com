# Спеціальний домен

Спочатку ваш форум називається `<you>.freeflarum.com` або `<you>.flarum.cloud`. Але можна легко (і безкоштовно) використовувати власне доменне ім'я, щоб форум виглядав більш професійно.

Крім того, якщо ви коли-небудь захочете перенести свій форум в інше місце, ви зможете зберегти ту саму назву (і дані).

!!! info "Щоб почати використовувати власне доменне ім'я, виконайте такі дії:"

    1. Отримайте доменне ім'я у реєстратора, наприклад, [Namecheap] (https://namecheap.com) або [Porkbun] (https://porkbun.com);
    2. Додайте DNS-запис CNAME в панелі керування реєстратора, який вказує на `cname.freeflarum.com`;
    3. Введіть свій власний домен на сторінці [FreeFlarum Settings](https://freeflarum.com/settings/forum_settings).
    
Налаштування DNS може бути складним, оскільки кожен реєстратор має свій метод і правила для цього. Ми спробуємо розповісти вам основи, щоб ви могли почати.

!!! info "Загальні інструкції з DNS"

  Ви повинні створити запис CNAME від власного доменного імені до FreeFlarum, який виглядає наступним чином:
  
    `subdomain.yourdomain.tld. 300 IN CNAME cname.freeflarum.com`

!!! note "TTL"
    Ваш провайдер може попросити вказати час очікування (TTL), ви повинні встановити його якомога меншим, наприклад: 2 хвилини. Це дозволить вам швидко змінювати сервери, якщо це необхідно.

!!! info "Використання кореневого/голого домену"

    Домен без субдомену (наприклад, `your.tld` замість `www.your.tld`) називається "кореневим" доменом. Кореневі імена CNAME офіційно не підтримуються DNS і не сумісні з FreeFlarum.

    Існує один трюк, щоб "підробити" кореневі функції вашого домену, просто використовуючи субдомен "www". Або ви можете зробити перенаправлення з вашого кореневого домену на ваш субдомен, пов'язаний з FreeFlarum, наприклад: ваш форум знаходиться за адресою `your.forum.tld`, а `forum.tld` перенаправляє користувачів на `your.forum.tld`. Правила перенаправлення можна налаштувати у реєстраторі вашого домену, якщо він їх підтримує.

!!! note
    Якщо FreeFlarum продовжує видавати помилку про те, що CNAME не може бути знайдено, спочатку перевірте, чи можна знайти CNAME за допомогою [стороннього інструменту] (https://www.ultratools.com/tools/dnsLookup).

    Якщо запис CNAME не вдається додати, ймовірно, ваш провайдер його підтримує. Ви можете перейти до іншого DNS-провайдера. Відомо, що ці DNS-сервіси працюють з FreeFlarum: [Namecheap](https://www.namecheap.com), [Porkbun](https://porkbun.com), [Gandi](https://www.gandi.net), [HiChina](https://www.hichina.com), [Dynadot](https://www.dynadot.com), [Alidns](https://www.alidns.com), [HostFly.by](https://hostfly.by), [NameBright](https://www.namebright.com).

!!! warning "Проксі"
    Переконайтеся, що **вимкнено проксі Cloudflare**, щоб іконка була сірого (а не помаранчевого) кольору.

!!! question "Скинути домен"

    Якщо ви використовували власний домен, але більше не бажаєте його використовувати, ви можете ввести старе ім'я хоста `xxx.freeflarum.com` (або `xxx.flarum.cloud`) в [Налаштуваннях FreeFlarum](https://freeflarum.com/settings/forum_settings).
