.class public Lc8/CH;
.super Ljava/lang/Object;
.source "WVURLInterceptService.java"


# static fields
.field private static mABTestHandler:Lc8/xH;

.field private static mHandler:Lc8/FH;

.field private static mIntercepter:Lc8/GH;

.field private static rulePat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static urlRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/yH;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lc8/CH;->urlRules:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lc8/CH;->rulePat:Ljava/util/Map;

    .line 33
    sput-object v1, Lc8/CH;->mIntercepter:Lc8/GH;

    .line 35
    sput-object v1, Lc8/CH;->mHandler:Lc8/FH;

    .line 36
    sput-object v1, Lc8/CH;->mABTestHandler:Lc8/xH;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWVABTestHandler()Lc8/xH;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lc8/CH;->mABTestHandler:Lc8/xH;

    return-object v0
.end method

.method public static getWVURLInterceptHandler()Lc8/FH;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lc8/CH;->mHandler:Lc8/FH;

    return-object v0
.end method

.method public static getWVURLInterceptRulePats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lc8/CH;->rulePat:Ljava/util/Map;

    return-object v0
.end method

.method public static getWVURLIntercepter()Lc8/GH;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lc8/CH;->mIntercepter:Lc8/GH;

    return-object v0
.end method

.method public static getWVURLinterceptRules()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lc8/yH;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lc8/CH;->urlRules:Ljava/util/Set;

    return-object v0
.end method

.method public static registerWVABTestURLHandler(Lc8/xH;)V
    .locals 0
    .param p0, "mHandler"    # Lc8/xH;

    .prologue
    .line 91
    sput-object p0, Lc8/CH;->mABTestHandler:Lc8/xH;

    .line 92
    return-void
.end method

.method public static registerWVURLInterceptHandler(Lc8/FH;)V
    .locals 0
    .param p0, "mHandler"    # Lc8/FH;

    .prologue
    .line 83
    sput-object p0, Lc8/CH;->mHandler:Lc8/FH;

    .line 84
    return-void
.end method

.method public static registerWVURLInterceptRulePats(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "rulePat":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/regex/Pattern;>;"
    sput-object p0, Lc8/CH;->rulePat:Ljava/util/Map;

    .line 63
    return-void
.end method

.method public static registerWVURLIntercepter(Lc8/GH;)V
    .locals 0
    .param p0, "mIntercepter"    # Lc8/GH;

    .prologue
    .line 70
    sput-object p0, Lc8/CH;->mIntercepter:Lc8/GH;

    .line 71
    return-void
.end method

.method public static registerWVURLinterceptRules(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lc8/yH;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "urlRules":Ljava/util/Set;, "Ljava/util/Set<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/yH;

    .line 46
    .local v0, "data":Lc8/yH;
    iget-boolean v3, v0, Lc8/yH;->needdecode:Z

    if-eqz v3, :cond_0

    .line 48
    :try_start_0
    iget-object v3, v0, Lc8/yH;->pattern:Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lc8/yH;->pattern:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v0    # "data":Lc8/yH;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sput-object p0, Lc8/CH;->urlRules:Ljava/util/Set;

    .line 55
    return-void
.end method

.method public static resetRulesAndPat()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lc8/CH;->urlRules:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 75
    sget-object v0, Lc8/CH;->rulePat:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 76
    return-void
.end method
