.class public Lc8/jE;
.super Ljava/lang/Object;
.source "WVPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/iE;
    }
.end annotation


# static fields
.field public static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final SEPARATOR:Ljava/lang/String; = "::"

.field private static final TAG:Ljava/lang/String; = "WVPluginManager"

.field private static final aliasPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static jsBridgeService:Lc8/QD;

.field private static final objPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/RD;",
            ">;"
        }
    .end annotation
.end field

.field private static final plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/iE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/jE;->objPlugins:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/jE;->plugins:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/jE;->aliasPlugins:Ljava/util/Map;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lc8/jE;->jsBridgeService:Lc8/QD;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static createPlugin(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Lc8/RD;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    const/4 v9, 0x0

    .line 202
    sget-object v8, Lc8/jE;->plugins:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/iE;

    .line 204
    .local v7, "pluginInfo":Lc8/iE;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lc8/iE;->getClassName()Ljava/lang/String;

    move-result-object v1

    .local v1, "className":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 206
    .end local v1    # "className":Ljava/lang/String;
    :cond_0
    sget-object v8, Lc8/jE;->objPlugins:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 207
    sget-object v8, Lc8/jE;->objPlugins:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/RD;

    .line 254
    :goto_0
    return-object v8

    .line 210
    :cond_1
    sget-object v8, Lc8/jE;->jsBridgeService:Lc8/QD;

    if-eqz v8, :cond_6

    .line 211
    sget-object v8, Lc8/jE;->jsBridgeService:Lc8/QD;

    invoke-interface {v8, p0}, Lc8/QD;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 212
    .local v3, "cls":Ljava/lang/Class;
    if-nez v3, :cond_2

    move-object v8, v9

    .line 213
    goto :goto_0

    .line 215
    :cond_2
    const/4 v8, 0x1

    invoke-static {p0, v3, v8}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 216
    sget-object v8, Lc8/jE;->plugins:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "pluginInfo":Lc8/iE;
    check-cast v7, Lc8/iE;

    .line 217
    .restart local v7    # "pluginInfo":Lc8/iE;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lc8/iE;->getClassName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    :cond_3
    move-object v8, v9

    .line 218
    goto :goto_0

    .line 220
    :cond_4
    invoke-virtual {v7}, Lc8/iE;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 229
    .end local v3    # "cls":Ljava/lang/Class;
    .restart local v1    # "className":Ljava/lang/String;
    :cond_5
    :try_start_0
    invoke-virtual {v7}, Lc8/iE;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 231
    .local v5, "loader":Ljava/lang/ClassLoader;
    if-nez v5, :cond_8

    .line 232
    invoke-static {v1}, Lc8/jE;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 236
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v2, :cond_b

    const-class v8, Lc8/RD;

    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 237
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/RD;

    .line 238
    .local v6, "plugin":Lc8/RD;
    invoke-static {v7}, Lc8/iE;->access$000(Lc8/iE;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 239
    invoke-static {v7}, Lc8/iE;->access$000(Lc8/iE;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, p1, p2, v8}, Lc8/RD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v8, v6

    .line 246
    goto :goto_0

    .line 222
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "loader":Ljava/lang/ClassLoader;
    .end local v6    # "plugin":Lc8/RD;
    :cond_6
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 223
    const-string/jumbo v8, "WVPluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "create plugin failed, plugin not register or empty, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v8, v9

    .line 225
    goto :goto_0

    .line 234
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v5    # "loader":Ljava/lang/ClassLoader;
    :cond_8
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 242
    .restart local v6    # "plugin":Lc8/RD;
    :cond_9
    instance-of v8, p2, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v8, :cond_a

    .line 243
    move-object v0, p2

    check-cast v0, Landroid/taobao/windvane/webview/WVWebView;

    move-object v8, v0

    invoke-virtual {v6, p1, v8}, Lc8/RD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/WVWebView;)V

    .line 244
    :cond_a
    invoke-virtual {v6, p1, p2}, Lc8/RD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 248
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "loader":Ljava/lang/ClassLoader;
    .end local v6    # "plugin":Lc8/RD;
    :catch_0
    move-exception v4

    .line 249
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "WVPluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "create plugin error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 252
    const-string/jumbo v8, "WVPluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "create plugin failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move-object v8, v9

    .line 254
    goto/16 :goto_0
.end method

.method public static getOriginalPlugin(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p0, "aliasName"    # Ljava/lang/String;
    .param p1, "aliasMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    :cond_0
    const-string/jumbo v5, "WVPluginManager"

    const-string/jumbo v6, "getOriginalPlugin failed, alias is empty."

    invoke-static {v5, v6}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    :goto_0
    return-object v1

    .line 167
    :cond_2
    sget-object v5, Lc8/jE;->aliasPlugins:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 168
    .local v4, "original":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 169
    const-string/jumbo v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "index":I
    if-lez v0, :cond_1

    .line 171
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "::"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "method":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "name"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v5, "method"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "aliasName"    # Ljava/lang/String;
    .param p1, "aliasMethod"    # Ljava/lang/String;
    .param p2, "originalName"    # Ljava/lang/String;
    .param p3, "originalMethod"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v0, Lc8/jE;->plugins:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    :cond_0
    const-string/jumbo v0, "WVPluginManager"

    const-string/jumbo v1, "registerAlias quit, this is no original plugin or alias is invalid."

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    sget-object v0, Lc8/jE;->aliasPlugins:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/RD;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/taobao/windvane/jsbridge/WVApiPlugin;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 39
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "customLoader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/RD;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/taobao/windvane/jsbridge/WVApiPlugin;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 57
    :cond_0
    new-instance v0, Lc8/iE;

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lc8/iE;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 58
    .local v0, "info":Lc8/iE;
    sget-object v2, Lc8/jE;->plugins:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v0    # "info":Lc8/iE;
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 95
    :try_start_0
    instance-of v1, p1, Lc8/RD;

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Lc8/jE;->objPlugins:Ljava/util/Map;

    check-cast p1, Lc8/RD;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v1, "WVPluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerPlugin by Object error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fullClassName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 88
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fullClassName"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    new-instance v0, Lc8/iE;

    invoke-direct {v0, p1, p2}, Lc8/iE;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 120
    .local v0, "info":Lc8/iE;
    sget-object v1, Lc8/jE;->plugins:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v0    # "info":Lc8/iE;
    :cond_0
    return-void
.end method

.method public static varargs registerPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fullClassName"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    new-instance v0, Lc8/iE;

    invoke-direct {v0, p1, p2}, Lc8/iE;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 127
    .local v0, "info":Lc8/iE;
    invoke-virtual {v0, p3}, Lc8/iE;->setParamObj(Ljava/lang/Object;)V

    .line 128
    sget-object v1, Lc8/jE;->plugins:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v0    # "info":Lc8/iE;
    :cond_0
    return-void
.end method

.method public static varargs registerPluginwithParam(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "obj"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/RD;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/taobao/windvane/jsbridge/WVApiPlugin;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 75
    .local v1, "loader":Ljava/lang/ClassLoader;
    new-instance v0, Lc8/iE;

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lc8/iE;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 76
    .local v0, "info":Lc8/iE;
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {v0, p2}, Lc8/iE;->setParamObj(Ljava/lang/Object;)V

    .line 78
    :cond_0
    sget-object v2, Lc8/jE;->plugins:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v0    # "info":Lc8/iE;
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    return-void
.end method

.method public static registerWVJsBridgeService(Lc8/QD;)V
    .locals 0
    .param p0, "service"    # Lc8/QD;

    .prologue
    .line 137
    sput-object p0, Lc8/jE;->jsBridgeService:Lc8/QD;

    .line 138
    return-void
.end method

.method public static unregisterAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "aliasName"    # Ljava/lang/String;
    .param p1, "aliasMethod"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    const-string/jumbo v0, "WVPluginManager"

    const-string/jumbo v1, "unregisterAlias quit, alias is invalid."

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_1
    sget-object v0, Lc8/jE;->aliasPlugins:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static unregisterPlugin(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-object v0, Lc8/jE;->plugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    sget-object v0, Lc8/jE;->plugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    sget-object v0, Lc8/jE;->objPlugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lc8/jE;->objPlugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
