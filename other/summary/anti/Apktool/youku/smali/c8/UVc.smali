.class public abstract Lc8/UVc;
.super Lc8/SVc;
.source "RecyclableCard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lc8/SVc;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract applyTo(Landroid/view/View;)V
.end method

.method public convert(Landroid/view/View;)Z
    .locals 3
    .param p1, "convertCardView"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p0}, Lc8/UVc;->getCardLayoutId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 57
    :goto_0
    return v2

    .line 53
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lc8/UVc;->applyTo(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "com.baseproject.basecard.cards.base.RecyclableCard#convert()"

    invoke-static {v2, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getCardContent(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lc8/UVc;->getCardLayoutId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "view":Landroid/view/View;
    :try_start_0
    invoke-virtual {p0, v1}, Lc8/UVc;->applyTo(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "com.baseproject.basecard.cards.base.RecyclableCard#getCardContent()"

    invoke-static {v2, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract getCardLayoutId()I
.end method
