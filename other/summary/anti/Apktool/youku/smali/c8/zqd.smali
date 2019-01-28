.class public Lc8/zqd;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"

# interfaces
.implements Lc8/Iqd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Bqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalListView"
.end annotation


# instance fields
.field private mAddedLvFooter:Z

.field final synthetic this$0:Lc8/Bqd;


# direct methods
.method public constructor <init>(Lc8/Bqd;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "this$0"    # Lc8/Bqd;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 288
    iput-object p1, p0, Lc8/zqd;->this$0:Lc8/Bqd;

    .line 289
    invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/zqd;->mAddedLvFooter:Z

    .line 290
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 300
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Landroid/widget/ListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method protected layoutChildren()V
    .locals 1

    .prologue
    .line 334
    :try_start_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lc8/zqd;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    goto :goto_0

    .line 342
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 283
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lc8/zqd;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 313
    iget-boolean v0, p0, Lc8/zqd;->mAddedLvFooter:Z

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lc8/zqd;->this$0:Lc8/Bqd;

    invoke-static {v0}, Lc8/Bqd;->access$000(Lc8/Bqd;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lc8/zqd;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/zqd;->mAddedLvFooter:Z

    .line 318
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 319
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 323
    iget-object v0, p0, Lc8/zqd;->this$0:Lc8/Bqd;

    invoke-virtual {v0, p1}, Lc8/Bqd;->setEmptyView(Landroid/view/View;)V

    .line 324
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 329
    return-void
.end method
