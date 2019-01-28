.class public Lc8/Pbg;
.super Lc8/tbg;
.source "WXLoadingIndicator.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/tbg",
        "<",
        "Lc8/mfg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lc8/Pbg;->initComponentHostView(Landroid/content/Context;)Lc8/mfg;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/mfg;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    new-instance v0, Lc8/mfg;

    invoke-direct {v0, p1}, Lc8/mfg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "color"
    .end annotation

    .prologue
    .line 62
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const/high16 v1, -0x10000

    invoke-static {p1, v1}, Lc8/Bgg;->getColor(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "parseColor":I
    invoke-virtual {p0}, Lc8/Pbg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/mfg;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Lc8/mfg;->setColorSchemeColors([I)V

    .line 66
    .end local v0    # "parseColor":I
    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 50
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 57
    invoke-super {p0, p1, p2}, Lc8/tbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    .line 50
    :pswitch_0
    const-string/jumbo v2, "color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 52
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "color":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0, v0}, Lc8/Pbg;->setColor(Ljava/lang/String;)V

    .line 55
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x5a72f63
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
