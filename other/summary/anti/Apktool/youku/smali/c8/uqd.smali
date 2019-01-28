.class public Lc8/uqd;
.super Lc8/hqd;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tqd;,
        Lc8/sqd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/hqd",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lc8/hqd;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lc8/hqd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lc8/hqd;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lc8/uqd;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 53
    new-instance v0, Lc8/tqd;

    invoke-direct {v0, p0, p1, p2}, Lc8/tqd;-><init>(Lc8/uqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    .local v0, "gv":Landroid/widget/GridView;
    :goto_0
    sget v1, Lcom/youku/phone/R$id;->gridview:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setId(I)V

    .line 60
    return-object v0

    .line 55
    .end local v0    # "gv":Landroid/widget/GridView;
    :cond_0
    new-instance v0, Lc8/sqd;

    invoke-direct {v0, p0, p1, p2}, Lc8/sqd;-><init>(Lc8/uqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "gv":Landroid/widget/GridView;
    goto :goto_0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lc8/uqd;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/sqd;

    invoke-virtual {v0}, Lc8/sqd;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method
