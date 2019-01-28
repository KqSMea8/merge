.class public Lc8/Je;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lc8/Ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 2185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2186
    iput-object p1, p0, Lc8/Je;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 2187
    return-void
.end method


# virtual methods
.method public onTabReselected(Lc8/Fe;)V
    .locals 0
    .param p1, "tab"    # Lc8/Fe;

    .prologue
    .line 2202
    return-void
.end method

.method public onTabSelected(Lc8/Fe;)V
    .locals 2
    .param p1, "tab"    # Lc8/Fe;

    .prologue
    .line 2191
    iget-object v0, p0, Lc8/Je;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lc8/Fe;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2192
    return-void
.end method

.method public onTabUnselected(Lc8/Fe;)V
    .locals 0
    .param p1, "tab"    # Lc8/Fe;

    .prologue
    .line 2197
    return-void
.end method
