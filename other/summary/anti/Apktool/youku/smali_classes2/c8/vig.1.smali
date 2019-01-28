.class public final Lc8/vig;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/tig;


# instance fields
.field final synthetic k:Lc8/uig;


# direct methods
.method constructor <init>(Lc8/uig;)V
    .locals 0

    iput-object p1, p0, Lc8/vig;->k:Lc8/uig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "onAuthFinish, errCode = %s, authCode = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lc8/vig;->k:Lc8/uig;

    invoke-static {v0}, Lc8/uig;->c(Lc8/uig;)Lc8/yig;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lc8/vig;->k:Lc8/uig;

    invoke-static {v1}, Lc8/uig;->a(Lc8/uig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tig;

    invoke-interface {v0, p1, p2}, Lc8/tig;->onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAuthGotQrcode(Ljava/lang/String;[B)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onAuthGotQrcode, qrcodeImgPath = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lc8/vig;->k:Lc8/uig;

    invoke-static {v1}, Lc8/uig;->a(Lc8/uig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tig;

    invoke-interface {v0, p1, p2}, Lc8/tig;->onAuthGotQrcode(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onQrcodeScanned()V
    .locals 2

    iget-object v0, p0, Lc8/vig;->k:Lc8/uig;

    invoke-static {v0}, Lc8/uig;->b(Lc8/uig;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/vig;->k:Lc8/uig;

    invoke-static {v0}, Lc8/uig;->b(Lc8/uig;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc8/wig;

    invoke-direct {v1, p0}, Lc8/wig;-><init>(Lc8/vig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
