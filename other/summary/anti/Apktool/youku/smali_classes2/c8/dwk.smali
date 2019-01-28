.class public final Lc8/dwk;
.super Lc8/Kvk;
.source "NetMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jwk;->getUnicomRelateShip(Ljava/lang/String;Lc8/Ivk;)V
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
    .line 127
    iput-object p1, p0, Lc8/dwk;->val$callback:Lc8/Ivk;

    invoke-direct {p0}, Lc8/Kvk;-><init>()V

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/dwk;->startTime:J

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lc8/dwk;->val$callback:Lc8/Ivk;

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "-1002"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lc8/dwk;->startTime:J

    const-string/jumbo v4, "3"

    invoke-static {v0, v1, v2, v3, v4}, Lc8/owk;->unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 147
    iget-object v0, p0, Lc8/dwk;->val$callback:Lc8/Ivk;

    invoke-interface {v0, p2}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "resultStr"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lc8/dwk;->val$callback:Lc8/Ivk;

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const-string/jumbo v0, "-1004"

    const-string/jumbo v1, ""

    iget-wide v2, p0, Lc8/dwk;->startTime:J

    const-string/jumbo v4, "3"

    invoke-static {v0, v1, v2, v3, v4}, Lc8/owk;->unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 135
    iget-object v0, p0, Lc8/dwk;->val$callback:Lc8/Ivk;

    const-string/jumbo v1, "\u6570\u636e\u8fd4\u56de\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const-string/jumbo v0, "0"

    iget-wide v2, p0, Lc8/dwk;->startTime:J

    const-string/jumbo v1, "3"

    invoke-static {v0, p2, v2, v3, v1}, Lc8/owk;->unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 138
    iget-object v0, p0, Lc8/dwk;->val$callback:Lc8/Ivk;

    invoke-interface {v0, p2}, Lc8/Ivk;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method
