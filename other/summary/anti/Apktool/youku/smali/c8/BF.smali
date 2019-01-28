.class public Lc8/BF;
.super Ljava/lang/Object;
.source "WVJsPatch.java"

# interfaces
.implements Lc8/pH;


# static fields
.field private static final TAG:Ljava/lang/String; = "WVJsPatch"

.field private static jsPatch:Lc8/BF;


# instance fields
.field private configRuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/DF;",
            ">;"
        }
    .end annotation
.end field

.field private ruleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/DF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lc8/BF;->jsPatch:Lc8/BF;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/BF;->configRuleMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/BF;->ruleMap:Ljava/util/Map;

    .line 49
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    sget-object v1, Lc8/BF;->jsPatch:Lc8/BF;

    invoke-virtual {v0, v1}, Lc8/qH;->addEventListener(Lc8/pH;)V

    .line 50
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/BF;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lc8/BF;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/BF;->jsPatch:Lc8/BF;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lc8/BF;

    invoke-direct {v0}, Lc8/BF;-><init>()V

    sput-object v0, Lc8/BF;->jsPatch:Lc8/BF;

    .line 45
    :cond_0
    sget-object v0, Lc8/BF;->jsPatch:Lc8/BF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private tryJsPatch(Ljava/util/Map;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z
    .locals 9
    .param p2, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p3, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/DF;",
            ">;",
            "Landroid/taobao/windvane/webview/IWVWebView;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "rulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/taobao/windvane/jspatch/WVPatchConfig;>;"
    const/4 v5, 0x0

    .line 172
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    :cond_0
    const-string/jumbo v6, "WVJsPatch"

    const-string/jumbo v7, "no jspatch need execute"

    invoke-static {v6, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_1
    :goto_0
    return v5

    .line 176
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    .local v2, "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/jspatch/WVPatchConfig;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 178
    .local v4, "rule":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/DF;

    .line 179
    .local v0, "config":Lc8/DF;
    if-nez v0, :cond_4

    .line 180
    const-string/jumbo v6, "WVJsPatch"

    const-string/jumbo v7, "config is null"

    invoke-static {v6, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_4
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 184
    const-string/jumbo v6, "WVJsPatch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "start match rules, rule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_5
    iget-object v6, v0, Lc8/DF;->pattern:Ljava/util/regex/Pattern;

    if-nez v6, :cond_6

    .line 188
    :try_start_0
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    iput-object v6, v0, Lc8/DF;->pattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_6
    :goto_2
    iget-object v6, v0, Lc8/DF;->pattern:Ljava/util/regex/Pattern;

    if-eqz v6, :cond_3

    .line 194
    iget-object v6, v0, Lc8/DF;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 195
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 196
    iget-object v5, v0, Lc8/DF;->jsString:Ljava/lang/String;

    const-string/jumbo v6, "javascript:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "javascript:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lc8/DF;->jsString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lc8/DF;->jsString:Ljava/lang/String;

    .line 200
    :cond_7
    iget-object v5, v0, Lc8/DF;->jsString:Ljava/lang/String;

    invoke-interface {p2, v5}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 202
    const-string/jumbo v5, "WVJsPatch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "url matched, start execute jspatch, jsString: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lc8/DF;->jsString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 190
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v6

    const-string/jumbo v6, "WVJsPatch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "compile rule error, pattern: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public addRuleWithPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Lc8/DF;

    invoke-direct {v0}, Lc8/DF;-><init>()V

    .line 60
    .local v0, "patchConfig":Lc8/DF;
    iput-object p2, v0, Lc8/DF;->jsString:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lc8/BF;->ruleMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public addRuleWithPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Lc8/DF;

    invoke-direct {v0}, Lc8/DF;-><init>()V

    .line 73
    .local v0, "patchConfig":Lc8/DF;
    iput-object p3, v0, Lc8/DF;->jsString:Ljava/lang/String;

    .line 74
    iput-object p1, v0, Lc8/DF;->key:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lc8/BF;->ruleMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public declared-synchronized config(Ljava/lang/String;)V
    .locals 8
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/BF;->removeAllConfigRules()V

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    const-string/jumbo v5, "WVJsPatch"

    const-string/jumbo v6, "no jspatch"

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 128
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 131
    .local v4, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    new-instance v3, Lc8/DF;

    invoke-direct {v3}, Lc8/DF;-><init>()V

    .line 133
    .local v3, "patchConfig":Lc8/DF;
    iput-object v4, v3, Lc8/DF;->jsString:Ljava/lang/String;

    .line 134
    iget-object v5, p0, Lc8/BF;->configRuleMap:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "patchConfig":Lc8/DF;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    :try_start_2
    const-string/jumbo v5, "WVJsPatch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get config error, config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 141
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_3
    :try_start_3
    iget-object v5, p0, Lc8/BF;->ruleMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 142
    const-string/jumbo v5, "WVJsPatch"

    const-string/jumbo v6, "jspatch config is Empty"

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_4
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    const-string/jumbo v5, "WVJsPatch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "config success, config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized execute(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v0, "WVJsPatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start execute jspatch, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lc8/BF;->ruleMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lc8/BF;->tryJsPatch(Ljava/util/Map;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z

    .line 161
    iget-object v0, p0, Lc8/BF;->configRuleMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lc8/BF;->tryJsPatch(Ljava/util/Map;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfigRuleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/DF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lc8/BF;->configRuleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRuleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/DF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lc8/BF;->ruleMap:Ljava/util/Map;

    return-object v0
.end method

.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 2
    .param p1, "id"    # I
    .param p2, "ctx"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 243
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    .line 244
    iget-object v0, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v1, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/BF;->execute(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    .line 246
    :cond_0
    new-instance v0, Landroid/taobao/windvane/service/WVEventResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    return-object v0
.end method

.method public declared-synchronized putConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "jsString"    # Ljava/lang/String;

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    new-instance v0, Lc8/DF;

    invoke-direct {v0}, Lc8/DF;-><init>()V

    .line 235
    .local v0, "config":Lc8/DF;
    iput-object p2, v0, Lc8/DF;->jsString:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lc8/BF;->configRuleMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string/jumbo v1, "WVJsPatch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putConfig, url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " js: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lc8/DF;->jsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local v0    # "config":Lc8/DF;
    :cond_0
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeAllConfigRules()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lc8/BF;->configRuleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    return-void
.end method

.method public removeAllRules()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lc8/BF;->ruleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    return-void
.end method

.method public removeRuleWithKey(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v4, p0, Lc8/BF;->ruleMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/BF;->ruleMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_2

    .line 85
    :cond_0
    const-string/jumbo v4, "WVJsPatch"

    const-string/jumbo v5, "not need removeRuleWithKey"

    invoke-static {v4, v5}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    return-void

    .line 88
    :cond_2
    iget-object v4, p0, Lc8/BF;->ruleMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 89
    .local v2, "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/jspatch/WVPatchConfig;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/DF;

    .line 90
    .local v0, "config":Lc8/DF;
    if-eqz v0, :cond_3

    iget-object v4, v0, Lc8/DF;->key:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lc8/DF;->key:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, "mapKey":Ljava/lang/String;
    iget-object v4, p0, Lc8/BF;->ruleMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v4, "WVJsPatch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeRuleWithKey : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
