.class public Lc8/ao;
.super Lc8/vo;
.source "AppCompatDelegateImplV11.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Lc8/N;
    value = 0xb
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lc8/Rn;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lc8/Rn;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lc8/vo;-><init>(Landroid/content/Context;Landroid/view/Window;Lc8/Rn;)V

    .line 32
    return-void
.end method


# virtual methods
.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 36
    invoke-super {p0, p1}, Lc8/vo;->hasWindowFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/ao;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
