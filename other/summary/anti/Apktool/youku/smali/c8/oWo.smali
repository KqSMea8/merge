.class public Lc8/oWo;
.super Lc8/Kbg;
.source "YKImage.java"


# static fields
.field private static final GIF_SUBFIX:Ljava/lang/String; = ".gif"


# instance fields
.field private mIsMaybeGif:Z


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "lazy"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lc8/Kbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 28
    return-void
.end method

.method private isMaybeGif(Ljava/lang/String;)Z
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 72
    if-eqz p1, :cond_2

    .line 74
    :try_start_0
    const-string/jumbo v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v3

    .line 77
    :cond_1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 78
    .local v2, "u":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    .line 88
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "u":Ljava/net/URI;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lc8/oWo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v0, Lc8/pWo;

    invoke-direct {v0, p1}, Lc8/pWo;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "view":Lc8/pWo;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lc8/pWo;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/pWo;->setCropToPadding(Z)V

    .line 67
    :cond_0
    invoke-virtual {v0, p0}, Lc8/pWo;->holdComponent(Lc8/Kbg;)V

    .line 68
    return-object v0
.end method

.method public setAutoPlay(Z)V
    .locals 1
    .param p1, "autoPlay"    # Z
    .annotation runtime Lc8/vbg;
        name = "autoPlay"
    .end annotation

    .prologue
    .line 46
    iget-boolean v0, p0, Lc8/oWo;->mIsMaybeGif:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/oWo;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lc8/pWo;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lc8/oWo;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/pWo;

    invoke-virtual {v0, p1}, Lc8/pWo;->setPlay(Z)V

    .line 49
    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 32
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 41
    invoke-super {p0, p1, p2}, Lc8/Kbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    .line 32
    :pswitch_0
    const-string/jumbo v3, "autoPlay"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 35
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v2}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 36
    .local v0, "result":Ljava/lang/Boolean;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "YKImage setProperty AUTO_PLAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lc8/oWo;->setAutoPlay(Z)V

    goto :goto_1

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x55bf6d83
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lc8/Kbg;->setSrc(Ljava/lang/String;)V

    .line 54
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-direct {p0, p1}, Lc8/oWo;->isMaybeGif(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/oWo;->mIsMaybeGif:Z

    goto :goto_0
.end method
