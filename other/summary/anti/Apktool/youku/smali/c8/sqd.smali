.class public Lc8/sqd;
.super Landroid/widget/GridView;
.source "PullToRefreshGridView.java"

# interfaces
.implements Lc8/Iqd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalGridView"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uqd;


# direct methods
.method public constructor <init>(Lc8/uqd;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lc8/uqd;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    iput-object p1, p0, Lc8/sqd;->this$0:Lc8/uqd;

    .line 66
    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/GridView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lc8/sqd;->this$0:Lc8/uqd;

    invoke-virtual {v0, p1}, Lc8/uqd;->setEmptyView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 82
    return-void
.end method
