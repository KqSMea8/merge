.class public Lc8/PB;
.super Ljava/lang/Object;
.source "WVServerConfig.java"


# static fields
.field public static ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

.field public static CACHE:Z

.field public static DOMAIN_PATTERN:Ljava/lang/String;

.field public static FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

.field public static LOG:Z

.field public static STATISTICS:Z

.field public static SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

.field public static THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

.field public static URL_FILTER:Z

.field public static allowAccessDomain:Ljava/util/regex/Pattern;

.field public static domainPat:Ljava/util/regex/Pattern;

.field public static forbiddenDomain:Ljava/util/regex/Pattern;

.field public static supportDownloadDomain:Ljava/util/regex/Pattern;

.field public static thirdPartyDomain:Ljava/util/regex/Pattern;

.field public static v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 30
    :try_start_0
    const-string/jumbo v1, "WVURLCacheDefault"

    const-string/jumbo v2, "wv-data"

    invoke-static {v1, v2}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lc8/PB;->updateGlobalConfig(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    sput-boolean v5, Lc8/PB;->CACHE:Z

    .line 39
    sput-boolean v5, Lc8/PB;->URL_FILTER:Z

    .line 42
    sput-boolean v4, Lc8/PB;->LOG:Z

    .line 45
    sput-boolean v4, Lc8/PB;->STATISTICS:Z

    .line 51
    const-string/jumbo v1, "^https?:\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|taobao\\.net|tdd\\.la|yao\\.95095\\.com|tmall\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?|go(/.*)?)$"

    sput-object v1, Lc8/PB;->DOMAIN_PATTERN:Ljava/lang/String;

    .line 52
    sput-object v3, Lc8/PB;->domainPat:Ljava/util/regex/Pattern;

    .line 53
    const-string/jumbo v1, ""

    sput-object v1, Lc8/PB;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    .line 54
    sput-object v3, Lc8/PB;->forbiddenDomain:Ljava/util/regex/Pattern;

    .line 55
    const-string/jumbo v1, "^((https?:)?\\/\\/([^/\\?#]+\\.)*((5317wan|guahao|wap\\.wandafilm|wrating|alipayobjects|(hft|\\w+app)\\.evergrande|jmt\\.wxcsgd|mpay\\.cx580|mt\\.locojoy|cpa1\\.locojoy|miiee|imaijia)\\.com|(h5\\.edaijia|beta\\.library\\.sh|web\\.chelaile\\.net|app3\\.shmzj\\.gov|bsfw\\.qingdao\\.gov|www\\.hzpolice\\.gov|www\\.sxgajj\\.gov|service\\.zjzwfw\\.gov|people\\.com|hbjg\\.premier-tech)\\.cn|(aliplay|ali\\.hk515)\\.net|tmall\\.pp\\.cc)([\\?|#|/|:].*)?)$"

    sput-object v1, Lc8/PB;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    .line 56
    sput-object v3, Lc8/PB;->thirdPartyDomain:Ljava/util/regex/Pattern;

    .line 57
    const-string/jumbo v1, ""

    sput-object v1, Lc8/PB;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    .line 58
    sput-object v3, Lc8/PB;->supportDownloadDomain:Ljava/util/regex/Pattern;

    .line 59
    const-string/jumbo v1, ""

    sput-object v1, Lc8/PB;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    .line 60
    sput-object v3, Lc8/PB;->allowAccessDomain:Ljava/util/regex/Pattern;

    .line 62
    const-string/jumbo v1, "0"

    sput-object v1, Lc8/PB;->v:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowAccess(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v2

    .line 178
    :cond_1
    sget-object v3, Lc8/PB;->allowAccessDomain:Ljava/util/regex/Pattern;

    if-nez v3, :cond_3

    .line 179
    sget-object v3, Lc8/PB;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    const-string/jumbo v3, ""

    sput-object v3, Lc8/PB;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    .line 183
    :cond_2
    :try_start_0
    sget-object v3, Lc8/PB;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lc8/PB;->allowAccessDomain:Ljava/util/regex/Pattern;

    .line 184
    const-string/jumbo v3, "WVServerConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "compile pattern allowAccessDomain rule, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/PB;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    sget-object v3, Lc8/PB;->allowAccessDomain:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 192
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 185
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const-string/jumbo v3, "WVServerConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " PatternSyntaxException pattern:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static isBlackUrl(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v2

    .line 126
    :cond_1
    sget-object v3, Lc8/PB;->forbiddenDomain:Ljava/util/regex/Pattern;

    if-nez v3, :cond_3

    .line 127
    sget-object v3, Lc8/PB;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    const-string/jumbo v3, ""

    sput-object v3, Lc8/PB;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    .line 131
    :cond_2
    :try_start_0
    sget-object v3, Lc8/PB;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lc8/PB;->forbiddenDomain:Ljava/util/regex/Pattern;

    .line 132
    const-string/jumbo v3, "WVServerConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "compile pattern black rule, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/PB;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    sget-object v3, Lc8/PB;->forbiddenDomain:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 141
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 134
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const-string/jumbo v3, "WVServerConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " PatternSyntaxException pattern:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static isSupportDownload(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v2

    .line 152
    :cond_1
    sget-object v3, Lc8/PB;->supportDownloadDomain:Ljava/util/regex/Pattern;

    if-nez v3, :cond_3

    .line 153
    sget-object v3, Lc8/PB;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const-string/jumbo v3, ""

    sput-object v3, Lc8/PB;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    .line 157
    :cond_2
    :try_start_0
    sget-object v3, Lc8/PB;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lc8/PB;->supportDownloadDomain:Ljava/util/regex/Pattern;

    .line 158
    const-string/jumbo v3, "WVServerConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "compile pattern supportDownloadDomain rule, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/PB;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    sget-object v3, Lc8/PB;->supportDownloadDomain:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 167
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 160
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const-string/jumbo v3, "WVServerConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " PatternSyntaxException pattern:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static isThirdPartyUrl(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v2

    .line 95
    :cond_1
    sget-object v3, Lc8/PB;->thirdPartyDomain:Ljava/util/regex/Pattern;

    if-nez v3, :cond_3

    .line 96
    sget-object v3, Lc8/PB;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    const-string/jumbo v3, "^((https?:)?\\/\\/([^/\\?#]+\\.)*((5317wan|guahao|wap\\.wandafilm|wrating|alipayobjects|(hft|\\w+app)\\.evergrande|jmt\\.wxcsgd|mpay\\.cx580|mt\\.locojoy|cpa1\\.locojoy|miiee|imaijia)\\.com|(h5\\.edaijia|beta\\.library\\.sh|web\\.chelaile\\.net|app3\\.shmzj\\.gov|bsfw\\.qingdao\\.gov|www\\.hzpolice\\.gov|www\\.sxgajj\\.gov|service\\.zjzwfw\\.gov|people\\.com|hbjg\\.premier-tech)\\.cn|(aliplay|ali\\.hk515)\\.net|tmall\\.pp\\.cc)([\\?|#|/|:].*)?)$"

    sput-object v3, Lc8/PB;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    .line 100
    :cond_2
    :try_start_0
    sget-object v3, Lc8/PB;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lc8/PB;->thirdPartyDomain:Ljava/util/regex/Pattern;

    .line 101
    const-string/jumbo v3, "WVServerConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "compile pattern thirdPartyDomain rule, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/PB;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_3
    :goto_1
    :try_start_1
    sget-object v3, Lc8/PB;->thirdPartyDomain:Ljava/util/regex/Pattern;

    if-eqz v3, :cond_0

    .line 109
    sget-object v3, Lc8/PB;->thirdPartyDomain:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 110
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 103
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const-string/jumbo v3, "WVServerConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " PatternSyntaxException pattern:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static isTrustedUrl(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 68
    :cond_1
    sget-object v3, Lc8/PB;->domainPat:Ljava/util/regex/Pattern;

    if-nez v3, :cond_3

    .line 69
    sget-object v3, Lc8/PB;->DOMAIN_PATTERN:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    const-string/jumbo v3, "^https?:\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|taobao\\.net|tdd\\.la|yao\\.95095\\.com|tmall\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?|go(/.*)?)$"

    sput-object v3, Lc8/PB;->DOMAIN_PATTERN:Ljava/lang/String;

    .line 73
    :cond_2
    :try_start_0
    sget-object v3, Lc8/PB;->DOMAIN_PATTERN:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lc8/PB;->domainPat:Ljava/util/regex/Pattern;

    .line 75
    const-string/jumbo v3, "WVServerConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "compile pattern domainPat rule, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/PB;->DOMAIN_PATTERN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_3
    :goto_1
    :try_start_1
    sget-object v3, Lc8/PB;->domainPat:Ljava/util/regex/Pattern;

    if-eqz v3, :cond_0

    .line 83
    sget-object v3, Lc8/PB;->domainPat:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 84
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 77
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const-string/jumbo v3, "WVServerConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " PatternSyntaxException pattern:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static updateGlobalConfig(Ljava/lang/String;)Z
    .locals 5
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v4

    .line 206
    :cond_1
    const/4 v0, 0x0

    .line 207
    .local v0, "jsObj":Lorg/json/JSONObject;
    new-instance v1, Lc8/gC;

    invoke-direct {v1}, Lc8/gC;-><init>()V

    .line 208
    .local v1, "response":Lc8/gC;
    invoke-virtual {v1, p0}, Lc8/gC;->parseJsonResult(Ljava/lang/String;)Lc8/gC;

    move-result-object v2

    iget-boolean v2, v2, Lc8/gC;->success:Z

    if-eqz v2, :cond_2

    .line 209
    iget-object v0, v1, Lc8/gC;->data:Lorg/json/JSONObject;

    .line 211
    :cond_2
    if-eqz v0, :cond_0

    .line 212
    const-string/jumbo v2, "lock"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    sput-boolean v2, Lc8/PB;->CACHE:Z

    .line 213
    const-string/jumbo v2, "log"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_2
    sput-boolean v2, Lc8/PB;->LOG:Z

    .line 214
    const-string/jumbo v2, "statistics"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v4, v3

    :cond_3
    sput-boolean v4, Lc8/PB;->STATISTICS:Z

    .line 215
    const-string/jumbo v2, "alidomain"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lc8/PB;->DOMAIN_PATTERN:Ljava/lang/String;

    .line 216
    const/4 v2, 0x0

    sput-object v2, Lc8/PB;->domainPat:Ljava/util/regex/Pattern;

    move v4, v3

    .line 217
    goto :goto_0

    :cond_4
    move v2, v4

    .line 212
    goto :goto_1

    :cond_5
    move v2, v4

    .line 213
    goto :goto_2
.end method
