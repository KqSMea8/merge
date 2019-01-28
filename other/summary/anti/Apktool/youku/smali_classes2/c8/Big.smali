.class public final Lc8/Big;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Aig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lc8/Aig;",
        ">;"
    }
.end annotation


# instance fields
.field private A:I

.field private r:Lc8/tig;

.field private u:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc8/tig;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lc8/Big;->u:Ljava/lang/String;

    iput-object p2, p0, Lc8/Big;->r:Lc8/tig;

    const-string/jumbo v0, "https://long.open.weixin.qq.com/connect/l/qrconnect?f=json&uuid=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Big;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lc8/Big;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Big;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "MicroMsg.SDK.NoopingTask"

    const-string/jumbo v1, "run fail, uuid is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc8/Aig;

    invoke-direct {v0}, Lc8/Aig;-><init>()V

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lc8/Aig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lc8/Big;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/Big;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lc8/Big;->A:I

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0xea60

    invoke-static {v1, v0}, Lc8/zig;->a(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0}, Lc8/Aig;->b([B)Lc8/Aig;

    move-result-object v0

    const-string/jumbo v6, "nooping, url = %s, errCode = %s, uuidStatusCode = %d, time consumed = %d(ms)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    iget-object v1, v0, Lc8/Aig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v9

    iget v1, v0, Lc8/Aig;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v10

    const/4 v1, 0x3

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, v0, Lc8/Aig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    sget-object v2, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    if-ne v1, v2, :cond_6

    iget v1, v0, Lc8/Aig;->C:I

    iput v1, p0, Lc8/Big;->A:I

    iget v1, v0, Lc8/Aig;->C:I

    sget-object v2, Lcom/tencent/mm/opensdk/diffdev/a/g;->F:Lcom/tencent/mm/opensdk/diffdev/a/g;

    invoke-virtual {v2}, Lcom/tencent/mm/opensdk/diffdev/a/g;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lc8/Big;->r:Lc8/tig;

    invoke-interface {v0}, Lc8/tig;->onQrcodeScanned()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&last="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lc8/Big;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget v1, v0, Lc8/Aig;->C:I

    sget-object v2, Lcom/tencent/mm/opensdk/diffdev/a/g;->H:Lcom/tencent/mm/opensdk/diffdev/a/g;

    invoke-virtual {v2}, Lcom/tencent/mm/opensdk/diffdev/a/g;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget v1, v0, Lc8/Aig;->C:I

    sget-object v2, Lcom/tencent/mm/opensdk/diffdev/a/g;->G:Lcom/tencent/mm/opensdk/diffdev/a/g;

    invoke-virtual {v2}, Lcom/tencent/mm/opensdk/diffdev/a/g;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lc8/Aig;->B:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lc8/Aig;->B:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_5
    const-string/jumbo v1, "MicroMsg.SDK.NoopingTask"

    const-string/jumbo v2, "nooping fail, confirm with an empty code!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lc8/Aig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "MicroMsg.SDK.NoopingTask"

    const-string/jumbo v2, "nooping fail, errCode = %s, uuidStatusCode = %d"

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, v0, Lc8/Aig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {v4}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget v4, v0, Lc8/Aig;->C:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lc8/Aig;

    invoke-direct {v0}, Lc8/Aig;-><init>()V

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_Auth_Stopped:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lc8/Aig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto/16 :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lc8/Aig;

    iget-object v0, p0, Lc8/Big;->r:Lc8/tig;

    iget-object v1, p1, Lc8/Aig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iget-object v2, p1, Lc8/Aig;->B:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/tig;->onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;Ljava/lang/String;)V

    return-void
.end method
