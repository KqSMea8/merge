.class public Lc8/xqd;
.super Lc8/hqd;
.source "PullToRefreshHeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wqd;,
        Lc8/vqd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/hqd",
        "<",
        "Lc8/JZo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lc8/hqd;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lc8/hqd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lc8/hqd;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lc8/xqd;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Lc8/JZo;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Lc8/JZo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 58
    new-instance v0, Lc8/wqd;

    invoke-direct {v0, p0, p1, p2}, Lc8/wqd;-><init>(Lc8/xqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    .local v0, "gv":Lc8/JZo;
    :goto_0
    sget v1, Lcom/youku/phone/R$id;->gridview:I

    invoke-virtual {v0, v1}, Lc8/JZo;->setId(I)V

    .line 65
    return-object v0

    .line 60
    .end local v0    # "gv":Lc8/JZo;
    :cond_0
    new-instance v0, Lc8/vqd;

    invoke-direct {v0, p0, p1, p2}, Lc8/vqd;-><init>(Lc8/xqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "gv":Lc8/JZo;
    goto :goto_0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lc8/xqd;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/vqd;

    invoke-virtual {v0}, Lc8/vqd;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method
