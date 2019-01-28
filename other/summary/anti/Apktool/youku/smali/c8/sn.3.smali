.class public Lc8/sn;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lc8/pn;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Lc8/N;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoneycombDelegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field mSetIndicatorInfo:Lc8/xn;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lc8/sn;->mActivity:Landroid/app/Activity;

    .line 534
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lc8/sn;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lc8/sn;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lc8/yn;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 2

    .prologue
    .line 548
    iget-object v1, p0, Lc8/sn;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 549
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lc8/sn;->mSetIndicatorInfo:Lc8/xn;

    iget-object v1, p0, Lc8/sn;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lc8/yn;->setActionBarDescription(Lc8/xn;Landroid/app/Activity;I)Lc8/xn;

    move-result-object v0

    iput-object v0, p0, Lc8/sn;->mSetIndicatorInfo:Lc8/xn;

    .line 568
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "themeImage"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 555
    iget-object v1, p0, Lc8/sn;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 556
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 557
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 558
    iget-object v1, p0, Lc8/sn;->mSetIndicatorInfo:Lc8/xn;

    iget-object v2, p0, Lc8/sn;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2, p1, p2}, Lc8/yn;->setActionBarUpIndicator(Lc8/xn;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Lc8/xn;

    move-result-object v1

    iput-object v1, p0, Lc8/sn;->mSetIndicatorInfo:Lc8/xn;

    .line 560
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 562
    :cond_0
    return-void
.end method