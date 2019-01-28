.class public Lc8/rqd;
.super Lc8/hqd;
.source "PullToRefreshExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qqd;,
        Lc8/pqd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/hqd",
        "<",
        "Landroid/widget/ExpandableListView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lc8/hqd;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lc8/hqd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lc8/hqd;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lc8/rqd;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ExpandableListView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ExpandableListView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 52
    new-instance v0, Lc8/qqd;

    invoke-direct {v0, p0, p1, p2}, Lc8/qqd;-><init>(Lc8/rqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    .local v0, "lv":Landroid/widget/ExpandableListView;
    :goto_0
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setId(I)V

    .line 59
    return-object v0

    .line 54
    .end local v0    # "lv":Landroid/widget/ExpandableListView;
    :cond_0
    new-instance v0, Lc8/pqd;

    invoke-direct {v0, p0, p1, p2}, Lc8/pqd;-><init>(Lc8/rqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "lv":Landroid/widget/ExpandableListView;
    goto :goto_0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lc8/rqd;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/pqd;

    invoke-virtual {v0}, Lc8/pqd;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method
