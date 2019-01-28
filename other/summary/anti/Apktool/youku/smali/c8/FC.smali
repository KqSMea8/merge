.class public Lc8/FC;
.super Lc8/RD;
.source "WVPackageAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/EC;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVPackageAppInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/FC;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/FC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method static synthetic access$100(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/FC;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/FC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method static synthetic access$200(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/FC;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/FC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method static synthetic access$300(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/FC;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/FC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method static synthetic access$400(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/FC;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/FC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method static synthetic access$500(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/FC;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/FC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method static synthetic access$600(Lc8/FC;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/FC;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/FC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method private localPathForURL(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 116
    .local v2, "result":Lc8/kE;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "url"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v4, "^((?i)https:)?//"

    const-string/jumbo v5, "http://"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 125
    invoke-static {v3}, Lc8/fH;->getLocPathByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "localPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    const-string/jumbo v4, "HY_FAILED"

    invoke-virtual {v2, v4}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 133
    .end local v0    # "jsObj":Lorg/json/JSONObject;
    .end local v1    # "localPath":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v4

    const-string/jumbo v4, "WVPackageAppInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "param parse to JSON error, param="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v4, "HY_PARAM_ERR"

    invoke-virtual {v2, v4}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 130
    .restart local v0    # "jsObj":Lorg/json/JSONObject;
    .restart local v1    # "localPath":Ljava/lang/String;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "localPath"

    invoke-virtual {v2, v4, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_0
.end method

.method private previewApp(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 8
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v4, Lc8/kE;

    invoke-direct {v4}, Lc8/kE;-><init>()V

    .line 185
    .local v4, "result":Lc8/kE;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "appName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    .local v0, "appName":Ljava/lang/String;
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v1

    .line 194
    .local v1, "config":Lc8/WG;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "http://wapp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v6}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".taobao.com/app/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "prefix":Ljava/lang/String;
    invoke-static {}, Lc8/VB;->getInstance()Lc8/VB;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/app-prefix.wvc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lc8/CC;

    invoke-direct {v7, p0}, Lc8/CC;-><init>(Lc8/FC;)V

    invoke-virtual {v5, v6, v7}, Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V

    .line 224
    invoke-static {}, Lc8/VB;->getInstance()Lc8/VB;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/config/app.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lc8/DC;

    invoke-direct {v7, p0, v1}, Lc8/DC;-><init>(Lc8/FC;Lc8/WG;)V

    invoke-virtual {v5, v6, v7}, Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V

    .line 275
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 276
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "config":Lc8/WG;
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    .end local v3    # "prefix":Ljava/lang/String;
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v5

    const-string/jumbo v5, "WVPackageAppInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "param parse to JSON error, param="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v5, "HY_PARAM_ERR"

    invoke-virtual {v4, v5}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method private readMemoryStatisitcs(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 12
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v5, Lc8/kE;

    invoke-direct {v5}, Lc8/kE;-><init>()V

    .line 158
    .local v5, "result":Lc8/kE;
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v7

    invoke-virtual {v7}, Lc8/GG;->getInfoMap()Ljava/util/HashMap;

    move-result-object v1

    .line 159
    .local v1, "infoSnippetHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 161
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    .local v0, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/BG;

    .line 165
    .local v6, "value":Lc8/BG;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v4, "object":Lorg/json/JSONObject;
    :try_start_0
    iget-wide v8, v6, Lc8/BG;->count:D

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-nez v7, :cond_1

    iget v7, v6, Lc8/BG;->failCount:I

    if-eqz v7, :cond_0

    .line 170
    :cond_1
    const-string/jumbo v7, "accessCount"

    iget-wide v8, v6, Lc8/BG;->count:D

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 171
    const-string/jumbo v7, "errorCount"

    iget v8, v6, Lc8/BG;->failCount:I

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string/jumbo v7, "needReinstall"

    iget-boolean v8, v6, Lc8/BG;->needReinstall:Z

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_1
    invoke-virtual {v5, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 178
    .end local v0    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v6    # "value":Lc8/BG;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 179
    return-void

    .restart local v0    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;>;"
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "object":Lorg/json/JSONObject;
    .restart local v6    # "value":Lc8/BG;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private registerApp(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 139
    .local v3, "result":Lc8/kE;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "appName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    .local v0, "appName":Ljava/lang/String;
    new-instance v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    invoke-direct {v1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;-><init>()V

    .line 148
    .local v1, "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    iput-object v0, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    .line 149
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    .line 150
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lc8/LG;->updateGlobalConfig(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Z

    .line 151
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 152
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v4

    const-string/jumbo v4, "WVPackageAppInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "param parse to JSON error, param="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v4, "HY_PARAM_ERR"

    invoke-virtual {v3, v4}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 98
    const-string/jumbo v0, "localPathForURL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0, p3, p2}, Lc8/FC;->localPathForURL(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 100
    :cond_0
    const-string/jumbo v0, "registerApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0, p3, p2}, Lc8/FC;->registerApp(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 102
    :cond_1
    const-string/jumbo v0, "previewApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-direct {p0, p3, p2}, Lc8/FC;->previewApp(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 104
    :cond_2
    const-string/jumbo v0, "readMemoryStatisitcs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    invoke-direct {p0, p3, p2}, Lc8/FC;->readMemoryStatisitcs(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 107
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 46
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    new-instance v1, Lc8/EC;

    invoke-direct {v1, p2}, Lc8/EC;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    invoke-virtual {v0, v1}, Lc8/qH;->addEventListener(Lc8/pH;)V

    .line 47
    invoke-super {p0, p1, p2}, Lc8/RD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    .line 48
    return-void
.end method
