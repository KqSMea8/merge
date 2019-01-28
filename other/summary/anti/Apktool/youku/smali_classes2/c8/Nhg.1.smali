.class public Lc8/Nhg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lc8/jmg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Phg;->b(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lc8/Dmg;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lc8/Phg;


# direct methods
.method constructor <init>(Lc8/Phg;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lc8/Dmg;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lc8/Nhg;->f:Lc8/Phg;

    iput-object p2, p0, Lc8/Nhg;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lc8/Nhg;->b:Ljava/lang/String;

    iput-object p4, p0, Lc8/Nhg;->c:Ljava/lang/String;

    iput-object p5, p0, Lc8/Nhg;->d:Lc8/Dmg;

    iput-object p6, p0, Lc8/Nhg;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 252
    if-nez p1, :cond_1

    .line 253
    iget-object v0, p0, Lc8/Nhg;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "imageLocalUrl"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lc8/Nhg;->f:Lc8/Phg;

    iget-object v1, p0, Lc8/Nhg;->e:Landroid/app/Activity;

    iget-object v2, p0, Lc8/Nhg;->a:Landroid/os/Bundle;

    iget-object v3, p0, Lc8/Nhg;->d:Lc8/Dmg;

    invoke-static {v0, v1, v2, v3}, Lc8/Phg;->a(Lc8/Phg;Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 270
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lc8/Nhg;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Nhg;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lc8/Nhg;->d:Lc8/Dmg;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lc8/Nhg;->d:Lc8/Dmg;

    new-instance v2, Lc8/Fmg;

    const/4 v3, -0x6

    const-string/jumbo v4, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lc8/Fmg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lc8/Dmg;->onError(Lc8/Fmg;)V

    .line 259
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v2, "shareToMobileQQ -- error: \u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    invoke-static {v0, v2}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_2
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v0

    const-string/jumbo v2, "SHARE_CHECK_SDK"

    const-string/jumbo v3, "1000"

    iget-object v4, p0, Lc8/Nhg;->f:Lc8/Phg;

    invoke-static {v4}, Lc8/Phg;->a(Lc8/Phg;)Lc8/thg;

    move-result-object v4

    invoke-virtual {v4}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v9, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    move v8, v1

    invoke-virtual/range {v0 .. v9}, Lc8/Dlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    return-void
.end method
