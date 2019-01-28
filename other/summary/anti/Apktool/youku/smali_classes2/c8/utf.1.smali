.class public final Lc8/utf;
.super Ljava/lang/Object;
.source "OrangeAccsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/accssupport/OrangeAccsService;->handleAccsUpdate([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lc8/utf;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "json":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lc8/utf;->val$data:[B

    if-eqz v4, :cond_2

    .line 47
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lc8/utf;->val$data:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "json":Ljava/lang/String;
    .local v1, "json":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v4, "OrangeAccsService"

    const-string/jumbo v5, "handleAccsUpdate"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "json"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    const-class v4, Lcom/taobao/orange/model/NameSpaceDO;

    invoke-static {v1, v4}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/orange/model/NameSpaceDO;

    .line 50
    .local v2, "nameSpaceDO":Lcom/taobao/orange/model/NameSpaceDO;
    if-nez v2, :cond_0

    .line 51
    const-string/jumbo v4, "OrangeAccsService"

    const-string/jumbo v5, "handleAccsUpdate nameSpaceDO null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 67
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "nameSpaceDO":Lcom/taobao/orange/model/NameSpaceDO;
    .restart local v0    # "json":Ljava/lang/String;
    :goto_0
    return-void

    .line 54
    .end local v0    # "json":Ljava/lang/String;
    .restart local v1    # "json":Ljava/lang/String;
    .restart local v2    # "nameSpaceDO":Lcom/taobao/orange/model/NameSpaceDO;
    :cond_0
    sget-object v4, Lc8/Jsf;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const-string/jumbo v4, "OrangeAccsService"

    const-string/jumbo v5, "handleAccsUpdate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "load config immediately"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lc8/Jsf;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;Z)Z

    move-object v0, v1

    .end local v1    # "json":Ljava/lang/String;
    .restart local v0    # "json":Ljava/lang/String;
    goto :goto_0

    .line 58
    .end local v0    # "json":Ljava/lang/String;
    .restart local v1    # "json":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "OrangeAccsService"

    const-string/jumbo v5, "handleAccsUpdate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "cache config as orange not init"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v4

    iget-object v4, v4, Lc8/Jsf;->mPushConfigSet:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 61
    .end local v1    # "json":Ljava/lang/String;
    .restart local v0    # "json":Ljava/lang/String;
    goto :goto_0

    .line 62
    .end local v2    # "nameSpaceDO":Lcom/taobao/orange/model/NameSpaceDO;
    :cond_2
    :try_start_2
    const-string/jumbo v4, "OrangeAccsService"

    const-string/jumbo v5, "handleAccsUpdate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "data null"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v3

    .line 65
    .local v3, "t":Ljava/lang/Throwable;
    :goto_1
    const-string/jumbo v4, "OrangeAccsService"

    const-string/jumbo v5, "handleAccsUpdate"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "json"

    aput-object v7, v6, v9

    aput-object v0, v6, v10

    invoke-static {v4, v5, v3, v6}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    .end local v0    # "json":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v1    # "json":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "json":Ljava/lang/String;
    .restart local v0    # "json":Ljava/lang/String;
    goto :goto_1
.end method
