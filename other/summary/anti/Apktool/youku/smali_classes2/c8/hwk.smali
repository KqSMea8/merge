.class public final Lc8/hwk;
.super Lc8/Kvk;
.source "NetMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jwk;->getMobileProductsAndRestData(Ljava/lang/String;Lc8/Ivk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field startTime:J

.field final synthetic val$callback:Lc8/Ivk;


# direct methods
.method constructor <init>(Lc8/Ivk;)V
    .locals 2

    .prologue
    .line 371
    iput-object p1, p0, Lc8/hwk;->val$callback:Lc8/Ivk;

    invoke-direct {p0}, Lc8/Kvk;-><init>()V

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/hwk;->startTime:J

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v0, p0, Lc8/hwk;->val$callback:Lc8/Ivk;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lc8/hwk;->val$callback:Lc8/Ivk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u8ba2\u8d2d\u5173\u7cfb\u5931\u8d25\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    .line 389
    const-string/jumbo v0, "-1002"

    iget-wide v2, p0, Lc8/hwk;->startTime:J

    const-string/jumbo v1, "3"

    invoke-static {v0, v2, v3, v1}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lc8/hwk;->val$callback:Lc8/Ivk;

    invoke-interface {v0, p2}, Lc8/Ivk;->onSuccess(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v0, "0"

    iget-wide v2, p0, Lc8/hwk;->startTime:J

    const-string/jumbo v1, "3"

    invoke-static {v0, v2, v3, v1}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lc8/hwk;->val$callback:Lc8/Ivk;

    const-string/jumbo v1, "result str null \u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f\uff0c\u4f46\u63a5\u53e3\u8fd4\u56de\u503c\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    .line 381
    const-string/jumbo v0, "-1004"

    iget-wide v2, p0, Lc8/hwk;->startTime:J

    const-string/jumbo v1, "3"

    invoke-static {v0, v2, v3, v1}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method
