# title
这次我们杀出了以太坊 DeFi 黑暗森林，完美拯救 960 万美元 - 链闻 ChainNews

# author
samczsun

# publisher
链闻

# date
2020-09

# chapter
游侠

# tag
区块链, 安全, 以太坊, DeFi

# remarks
迅速看了一下将 ETH 转出的代码，发现了两个匹配项。其中之一将 ETH 转移到了硬编码的代币地址，因此可以忽略。第二个是将 ETH 转移给发送方的焚毁功能。在跟踪了此功能的用法之后，我发现任何人可以免费为自己铸造代币，然后将其焚毁，换取该智能合约中的所有以太币都是不费吹灰之力的。我的心跳加速了。突然，问题变得严重了。

我那份智能合约是 Lien Finance 协议。不幸的是，他们的团队是匿名的！唯一的即时讯息支持平台是 Telegram，而我不确定该 Telegram 频道的管理员是开发者还仅仅是某些早期支持者。我可万万不想将这一漏洞意外透漏给错误的人。

在他们的网站又多浏览了一段时间，我发现他们曾与 ConsenSys Diligence 和 CertiK 合作，接受其代码审计。这看起来像是很不错的途径， ConsenSys Diligence 和 CertiK 在审计期间肯定和开发者进行过互动。我迅速在 Telegram 上私聊了 ConsenSys Diligence 的安全工程师 John Mardlin （aka maurelian） 。

两者都不是很让人满意的选择。第一个举动极为危险，如果您读过 Dan Robinson 与 Paradigm 研究合伙人 Georgios Konstantopoulos 所讨论的以太坊 DeFi 黑暗森林（链闻中文版）一文 ，我们的交易被抢跑截胡的概率极高。第二种选择几乎同样危险，因为公开声明会引发外界对该问题的关注，给攻击者带来一个机会窗口。我们需要的是第三种方案。

回想起以太坊 DeFi 黑暗森林一文中的部分内容，Sam 联络了 Amberdata 工程副总裁 Scott Bigelow：「如果你切实陷入了这种困境，我建议你去找 Amberdata 工程副总裁 Scott Bigelow，他是一直研究这一课题的安全研究人员，有一套能更好实现瞒天过海目的的原型实施策略。」
