.class public Lc8/vUf;
.super Landroid/content/BroadcastReceiver;
.source "HotpatchReceiver.java"


# static fields
.field public static final ACTION_AGOO_MSG:Ljava/lang/String; = "com.taobao.tao.msgcenter.agoo"

.field public static final AGOO_MSG_BODY:Ljava/lang/String; = "taobao_agoo_msg"

.field private static final SECOND:I = 0x3e8


# instance fields
.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    iput-object p1, p0, Lc8/vUf;->mVersion:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static getTextContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    invoke-static {p0}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 74
    .local v1, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "text"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "content":Ljava/lang/String;
    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "temp":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "temp":[Ljava/lang/String;
    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    const-string/jumbo v3, ""

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receive intent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    const-string/jumbo v5, "com.taobao.tao.msgcenter.agoo"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 29
    const-string/jumbo v5, "taobao_agoo_msg"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "body":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get agoo push message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    if-nez v0, :cond_1

    .line 61
    .end local v0    # "body":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 34
    .restart local v0    # "body":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lc8/vUf;->getTextContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "text":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "temp":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string/jumbo v6, "hotpatch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    aget-object v5, v3, v5

    iget-object v6, p0, Lc8/vUf;->mVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    .local v2, "second":I
    if-nez v2, :cond_2

    .line 44
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lc8/tUf;->queryNewHotPatch(Z)V

    goto :goto_0

    .end local v2    # "second":I
    .end local v3    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 46
    .restart local v2    # "second":I
    .restart local v3    # "temp":[Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 47
    .local v1, "handler":Landroid/os/Handler;
    new-instance v5, Lc8/uUf;

    invoke-direct {v5, p0}, Lc8/uUf;-><init>(Lc8/vUf;)V

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    mul-int/lit16 v7, v2, 0x3e8

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
