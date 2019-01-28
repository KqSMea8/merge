.class public Lc8/QI;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appSecret:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private authCode:Ljava/lang/String;

.field private env:Lanet/channel/entity/ENV;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    iput-object v0, p0, Lc8/QI;->env:Lanet/channel/entity/ENV;

    return-void
.end method


# virtual methods
.method public build()Lc8/RI;
    .locals 8

    .prologue
    .line 106
    iget-object v2, p0, Lc8/QI;->appkey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "appkey can not be null or empty!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    invoke-static {}, Lc8/RI;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/RI;

    .line 111
    .local v0, "config":Lc8/RI;
    invoke-static {v0}, Lc8/RI;->access$100(Lc8/RI;)Lanet/channel/entity/ENV;

    move-result-object v2

    iget-object v3, p0, Lc8/QI;->env:Lanet/channel/entity/ENV;

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lc8/RI;->access$200(Lc8/RI;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/QI;->appkey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const-string/jumbo v2, "awcn.Config"

    const-string/jumbo v3, "duplicated config exist!"

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "appkey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lc8/QI;->appkey:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "env"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lc8/QI;->env:Lanet/channel/entity/ENV;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lc8/QI;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    invoke-static {}, Lc8/RI;->access$000()Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 115
    :try_start_0
    invoke-static {}, Lc8/RI;->access$000()Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lc8/QI;->tag:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    monitor-exit v3

    .line 141
    :cond_2
    :goto_0
    return-object v0

    .line 116
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 122
    .end local v0    # "config":Lc8/RI;
    :cond_3
    new-instance v0, Lc8/RI;

    invoke-direct {v0}, Lc8/RI;-><init>()V

    .line 123
    .restart local v0    # "config":Lc8/RI;
    iget-object v2, p0, Lc8/QI;->appkey:Ljava/lang/String;

    invoke-static {v0, v2}, Lc8/RI;->access$202(Lc8/RI;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lc8/QI;->env:Lanet/channel/entity/ENV;

    invoke-static {v0, v2}, Lc8/RI;->access$102(Lc8/RI;Lanet/channel/entity/ENV;)Lanet/channel/entity/ENV;

    .line 126
    iget-object v2, p0, Lc8/QI;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    iget-object v2, p0, Lc8/QI;->appkey:Ljava/lang/String;

    const-string/jumbo v3, "$"

    iget-object v4, p0, Lc8/QI;->env:Lanet/channel/entity/ENV;

    invoke-virtual {v4}, Lanet/channel/entity/ENV;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/cM;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/RI;->access$302(Lc8/RI;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    :goto_1
    iget-object v2, p0, Lc8/QI;->appSecret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 133
    invoke-static {}, Lc8/lK;->getSecurityFactory()Lc8/hK;

    move-result-object v2

    iget-object v3, p0, Lc8/QI;->appSecret:Ljava/lang/String;

    invoke-interface {v2, v3}, Lc8/hK;->createNonSecurity(Ljava/lang/String;)Lc8/gK;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/RI;->access$402(Lc8/RI;Lc8/gK;)Lc8/gK;

    .line 138
    :goto_2
    invoke-static {}, Lc8/RI;->access$000()Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 139
    :try_start_1
    invoke-static {}, Lc8/RI;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Lc8/RI;->access$300(Lc8/RI;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 129
    :cond_4
    iget-object v2, p0, Lc8/QI;->tag:Ljava/lang/String;

    invoke-static {v0, v2}, Lc8/RI;->access$302(Lc8/RI;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 135
    :cond_5
    invoke-static {}, Lc8/lK;->getSecurityFactory()Lc8/hK;

    move-result-object v2

    iget-object v3, p0, Lc8/QI;->authCode:Ljava/lang/String;

    invoke-interface {v2, v3}, Lc8/hK;->createSecurity(Ljava/lang/String;)Lc8/gK;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/RI;->access$402(Lc8/RI;Lc8/gK;)Lc8/gK;

    goto :goto_2
.end method

.method public setAppSecret(Ljava/lang/String;)Lc8/QI;
    .locals 0
    .param p1, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lc8/QI;->appSecret:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public setAppkey(Ljava/lang/String;)Lc8/QI;
    .locals 0
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lc8/QI;->appkey:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setAuthCode(Ljava/lang/String;)Lc8/QI;
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lc8/QI;->authCode:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public setEnv(Lanet/channel/entity/ENV;)Lc8/QI;
    .locals 0
    .param p1, "env"    # Lanet/channel/entity/ENV;

    .prologue
    .line 91
    iput-object p1, p0, Lc8/QI;->env:Lanet/channel/entity/ENV;

    .line 92
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lc8/QI;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lc8/QI;->tag:Ljava/lang/String;

    .line 82
    return-object p0
.end method
