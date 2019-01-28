.class public Lc8/JVe;
.super Ljava/lang/Object;
.source "UtdidBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KVe;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KVe;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lc8/KVe;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KVe;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/JVe;->this$0:Lc8/KVe;

    iput-object p2, p0, Lc8/JVe;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lc8/JVe;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 39
    const-string/jumbo v8, ""

    .line 41
    .local v8, "intentUtdid":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 43
    .local v5, "intentPackage":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lc8/JVe;->val$intent:Landroid/content/Intent;

    const-string/jumbo v11, "data"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "intentData":Ljava/lang/String;
    iget-object v10, p0, Lc8/JVe;->val$intent:Landroid/content/Intent;

    const-string/jumbo v11, "sign"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "intentSign":Ljava/lang/String;
    invoke-static {v4}, Lc8/aWe;->getDecodedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "intentString":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v9, "json":Lorg/json/JSONObject;
    const-string/jumbo v10, "utdid"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 49
    const-string/jumbo v10, "utdid"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    :cond_0
    const-string/jumbo v10, "appkey"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 52
    const-string/jumbo v10, "appkey"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    :cond_1
    const-string/jumbo v10, "appName"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 55
    const-string/jumbo v10, "appName"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    :cond_2
    invoke-static {}, Lc8/FVe;->getInstance()Lc8/FVe;

    move-result-object v10

    invoke-virtual {v10}, Lc8/FVe;->getCurrentAppUtdid()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "currentAppUtdid":Ljava/lang/String;
    const-string/jumbo v10, ""

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "currentAppUtdid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",intentUtdid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lc8/yWe;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 61
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 62
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 63
    iget-object v10, p0, Lc8/JVe;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "currentAppName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 66
    invoke-static {v7}, Lc8/nWe;->getHmacMd5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "appSign":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 68
    invoke-static {}, Lc8/FVe;->getInstance()Lc8/FVe;

    move-result-object v10

    invoke-virtual {v10, v8}, Lc8/FVe;->setAppUtdid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "appSign":Ljava/lang/String;
    .end local v1    # "currentAppName":Ljava/lang/String;
    .end local v2    # "currentAppUtdid":Ljava/lang/String;
    .end local v4    # "intentData":Ljava/lang/String;
    .end local v6    # "intentSign":Ljava/lang/String;
    .end local v7    # "intentString":Ljava/lang/String;
    .end local v9    # "json":Lorg/json/JSONObject;
    :cond_3
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, ""

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
