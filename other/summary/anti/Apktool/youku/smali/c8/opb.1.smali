.class public Lc8/opb;
.super Lc8/teg;
.source "AliWXImageView.java"

# interfaces
.implements Lc8/uXf;


# instance fields
.field private reference:Lc8/Zvf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lc8/teg;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private releaseDrawable()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lc8/opb;->reference:Lc8/Zvf;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lc8/opb;->reference:Lc8/Zvf;

    invoke-virtual {v0}, Lc8/Zvf;->release()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/opb;->reference:Lc8/Zvf;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 30
    :try_start_0
    invoke-virtual {p0}, Lc8/opb;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lc8/nxf;

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lc8/opb;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/nxf;

    invoke-virtual {v1}, Lc8/nxf;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    invoke-direct {p0}, Lc8/opb;->releaseDrawable()V

    .line 37
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/opb;->releaseDrawable()V

    .line 42
    invoke-super {p0, p1}, Lc8/teg;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    instance-of v1, p1, Lc8/Zvf;

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v1

    const-string/jumbo v2, "android_aliweex_image_release"

    const-string/jumbo v3, "allow_active_release"

    const-string/jumbo v4, ""

    invoke-interface {v1, v2, v3, v4}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "allowedReleaseImage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    .end local v0    # "allowedReleaseImage":Ljava/lang/String;
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v0    # "allowedReleaseImage":Ljava/lang/String;
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast p1, Lc8/Zvf;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Lc8/opb;->reference:Lc8/Zvf;

    goto :goto_0
.end method
