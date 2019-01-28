.class public Lc8/Bhg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Chg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lc8/Chg;


# direct methods
.method public constructor <init>(Lc8/Chg;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 454
    iput-object p1, p0, Lc8/Bhg;->b:Lc8/Chg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Bhg;->a:Ljava/lang/String;

    .line 455
    iput-object p2, p0, Lc8/Bhg;->a:Ljava/lang/String;

    .line 456
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 460
    const-string/jumbo v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-->timeoutUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Bhg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | mRetryUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Bhg;->b:Lc8/Chg;

    invoke-static {v2}, Lc8/Chg;->i(Lc8/Chg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lc8/Bhg;->a:Ljava/lang/String;

    iget-object v1, p0, Lc8/Bhg;->b:Lc8/Chg;

    invoke-static {v1}, Lc8/Chg;->i(Lc8/Chg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lc8/Bhg;->b:Lc8/Chg;

    invoke-static {v0}, Lc8/Chg;->f(Lc8/Chg;)Lc8/zhg;

    move-result-object v0

    new-instance v1, Lc8/Fmg;

    const/16 v2, 0x232a

    const-string/jumbo v3, "\u8bf7\u6c42\u9875\u9762\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    iget-object v4, p0, Lc8/Bhg;->b:Lc8/Chg;

    invoke-static {v4}, Lc8/Chg;->i(Lc8/Chg;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lc8/Fmg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/zhg;->onError(Lc8/Fmg;)V

    .line 463
    iget-object v0, p0, Lc8/Bhg;->b:Lc8/Chg;

    invoke-virtual {v0}, Lc8/Chg;->dismiss()V

    .line 465
    :cond_0
    return-void
.end method
