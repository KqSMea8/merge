.class public Lc8/wK;
.super Ljava/lang/Object;
.source "TnetSpdySession.java"

# interfaces
.implements Lc8/tXp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/session/TnetSpdySession;->initSpdyAgent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/session/TnetSpdySession;


# direct methods
.method public constructor <init>(Lanet/channel/session/TnetSpdySession;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 448
    iput-object p1, p0, Lc8/wK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLPublicKey(I[B)[B
    .locals 10
    .param p1, "i"    # I
    .param p2, "bytes"    # [B

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 451
    const/4 v0, 0x0

    .line 453
    .local v0, "decrypt":[B
    :try_start_0
    iget-object v2, p0, Lc8/wK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v2, v2, Lanet/channel/session/TnetSpdySession;->iSecurity:Lc8/gK;

    iget-object v3, p0, Lc8/wK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-static {v3}, Lanet/channel/session/TnetSpdySession;->access$300(Lanet/channel/session/TnetSpdySession;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "ASE128"

    const-string/jumbo v5, "tnet_pksg_key"

    invoke-interface {v2, v3, v4, v5, p2}, Lc8/gK;->decrypt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 454
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-static {v2}, Lc8/KL;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    const-string/jumbo v2, "getSSLPublicKey"

    const/4 v3, 0x0

    const-string/jumbo v4, "decrypt"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_0
    :goto_0
    return-object v0

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "awcn.TnetSpdySession"

    const-string/jumbo v3, "getSSLPublicKey"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v9, v1, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
