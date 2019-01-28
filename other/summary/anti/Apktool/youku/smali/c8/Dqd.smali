.class public Lc8/Dqd;
.super Lc8/oqd;
.source "PullToRefreshScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Cqd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/oqd",
        "<",
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# instance fields
.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lc8/oqd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lc8/Dqd;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 25
    new-instance v0, Lc8/Cqd;

    invoke-direct {v0, p0, p1, p2}, Lc8/Cqd;-><init>(Lc8/Dqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lc8/Dqd;->mScrollView:Landroid/widget/ScrollView;

    .line 30
    :goto_0
    iget-object v0, p0, Lc8/Dqd;->mScrollView:Landroid/widget/ScrollView;

    sget v1, Lcom/youku/phone/R$id;->scrollview:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setId(I)V

    .line 31
    iget-object v0, p0, Lc8/Dqd;->mScrollView:Landroid/widget/ScrollView;

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lc8/Dqd;->mScrollView:Landroid/widget/ScrollView;

    goto :goto_0
.end method

.method public fullScroll(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Dqd;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullDown()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lc8/Dqd;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReadyForPullUp()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v1, p0, Lc8/Dqd;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "scrollViewChild":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 52
    iget-object v1, p0, Lc8/Dqd;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lc8/Dqd;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    .line 54
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 52
    goto :goto_0

    :cond_1
    move v1, v2

    .line 54
    goto :goto_0
.end method
