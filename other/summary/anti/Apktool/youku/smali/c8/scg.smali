.class public abstract Lc8/scg;
.super Lc8/tbg;
.source "WXVContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rcg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lc8/tbg",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WXVContainer"


# instance fields
.field private mBoxShadowHost:Lc8/rcg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/scg",
            "<TT;>.BoxShadowHost;"
        }
    .end annotation
.end field

.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 60
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "lazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    .line 57
    return-void
.end method


# virtual methods
.method public addChild(Lc8/tbg;)V
    .locals 1
    .param p1, "child"    # Lc8/tbg;

    .prologue
    .line 266
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lc8/scg;->addChild(Lc8/tbg;I)V

    .line 267
    return-void
.end method

.method public addChild(Lc8/tbg;I)V
    .locals 8
    .param p1, "child"    # Lc8/tbg;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v1, -0x1

    .line 270
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 271
    .local v2, "startNanos":J
    if-eqz p1, :cond_0

    if-ge p2, v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v4, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 275
    .local v0, "count":I
    if-lt p2, v0, :cond_2

    move p2, v1

    .line 276
    :cond_2
    if-ne p2, v1, :cond_3

    .line 277
    iget-object v1, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :goto_1
    iget-object v1, p0, Lc8/scg;->mTraceInfo:Lc8/lag;

    iget-wide v4, v1, Lc8/lag;->uiThreadNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Lc8/lag;->uiThreadNanos:J

    goto :goto_0

    .line 279
    :cond_3
    iget-object v1, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v1, -0x1

    .line 317
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/scg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {p0}, Lc8/scg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 322
    .local v0, "count":I
    if-lt p2, v0, :cond_2

    move p2, v1

    .line 323
    :cond_2
    if-ne p2, v1, :cond_3

    .line 324
    invoke-virtual {p0}, Lc8/scg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 326
    :cond_3
    invoke-virtual {p0}, Lc8/scg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public applyLayoutAndEvent(Lc8/tbg;)V
    .locals 10
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 105
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 106
    .local v4, "startNanos":J
    invoke-virtual {p0}, Lc8/scg;->isLazy()Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    if-nez p1, :cond_0

    .line 108
    move-object p1, p0

    .line 110
    :cond_0
    invoke-super {p0, p1}, Lc8/tbg;->applyLayoutAndEvent(Lc8/tbg;)V

    .line 111
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v1

    .line 112
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 113
    invoke-virtual {p0, v2}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v0

    .local v0, "child":Lc8/tbg;
    move-object v3, p1

    .line 114
    check-cast v3, Lc8/scg;

    invoke-virtual {v3, v2}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc8/tbg;->applyLayoutAndEvent(Lc8/tbg;)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "child":Lc8/tbg;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lc8/scg;->mTraceInfo:Lc8/lag;

    iget-wide v6, v3, Lc8/lag;->uiThreadNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v3, Lc8/lag;->uiThreadNanos:J

    .line 119
    return-void
.end method

.method public bindData(Lc8/tbg;)V
    .locals 10
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 159
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 160
    .local v2, "startNanos":J
    invoke-virtual {p0}, Lc8/scg;->isLazy()Z

    move-result v4

    if-nez v4, :cond_1

    .line 161
    if-nez p1, :cond_0

    .line 162
    move-object p1, p0

    .line 164
    :cond_0
    invoke-super {p0, p1}, Lc8/tbg;->bindData(Lc8/tbg;)V

    .line 165
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 166
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 167
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v5

    move-object v4, p1

    check-cast v4, Lc8/scg;

    invoke-virtual {v4, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v4

    invoke-virtual {v5, v4}, Lc8/tbg;->bindData(Lc8/tbg;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lc8/scg;->mTraceInfo:Lc8/lag;

    iget-wide v6, v4, Lc8/lag;->uiThreadNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v4, Lc8/lag;->uiThreadNanos:J

    .line 171
    return-void
.end method

.method public childCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    iget-object v0, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public createChildViewAt(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 289
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 290
    .local v2, "startNanos":J
    invoke-virtual {p0, p1}, Lc8/scg;->rearrangeIndexAndGetChild(I)Landroid/util/Pair;

    move-result-object v1

    .line 291
    .local v1, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Integer;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 292
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lc8/tbg;

    .line 293
    .local v0, "child":Lc8/tbg;
    invoke-virtual {v0}, Lc8/tbg;->createView()V

    .line 294
    invoke-virtual {v0}, Lc8/tbg;->isVirtualComponent()Z

    move-result v4

    if-nez v4, :cond_0

    .line 295
    invoke-virtual {v0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v5

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v5, v4}, Lc8/scg;->addSubView(Landroid/view/View;I)V

    .line 298
    .end local v0    # "child":Lc8/tbg;
    :cond_0
    iget-object v4, p0, Lc8/scg;->mTraceInfo:Lc8/lag;

    iget-wide v6, v4, Lc8/lag;->uiThreadNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v4, Lc8/lag;->uiThreadNanos:J

    .line 299
    return-void
.end method

.method public createViewImpl()V
    .locals 4

    .prologue
    .line 195
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lc8/tbg;->createViewImpl()V

    .line 196
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 197
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 198
    invoke-virtual {p0, v1}, Lc8/scg;->createChildViewAt(I)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {p0}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 203
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 207
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    iget-object v2, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 209
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 210
    iget-object v2, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/tbg;

    invoke-virtual {v2}, Lc8/tbg;->destroy()V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    iget-object v2, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 214
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0}, Lc8/tbg;->destroy()V

    .line 215
    return-void
.end method

.method public detachViewAndClearPreInfo()Landroid/view/View;
    .locals 4

    .prologue
    .line 233
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lc8/tbg;->detachViewAndClearPreInfo()Landroid/view/View;

    move-result-object v2

    .line 234
    .local v2, "original":Landroid/view/View;
    iget-object v3, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 236
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 237
    iget-object v3, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/tbg;

    invoke-virtual {v3}, Lc8/tbg;->detachViewAndClearPreInfo()Landroid/view/View;

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method public getBoxShadowHost(Z)Landroid/view/View;
    .locals 7
    .param p1, "isClear"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v3, 0x0

    .line 489
    if-eqz p1, :cond_1

    .line 491
    iget-object v0, p0, Lc8/scg;->mBoxShadowHost:Lc8/rcg;

    .line 516
    :cond_0
    :goto_0
    return-object v0

    .line 494
    :cond_1
    invoke-virtual {p0}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 495
    .local v0, "hostView":Landroid/view/ViewGroup;
    if-nez v0, :cond_2

    move-object v0, v3

    .line 496
    goto :goto_0

    .line 500
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lc8/scg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getType()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v3, "div"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    const-string/jumbo v3, "BoxShadow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Draw box-shadow with BoxShadowHost on div: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lc8/scg;->mBoxShadowHost:Lc8/rcg;

    if-nez v3, :cond_3

    .line 504
    new-instance v3, Lc8/rcg;

    invoke-virtual {p0}, Lc8/scg;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lc8/rcg;-><init>(Lc8/scg;Landroid/content/Context;)V

    iput-object v3, p0, Lc8/scg;->mBoxShadowHost:Lc8/rcg;

    .line 505
    iget-object v3, p0, Lc8/scg;->mBoxShadowHost:Lc8/rcg;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lc8/Jgg;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 506
    iget-object v3, p0, Lc8/scg;->mBoxShadowHost:Lc8/rcg;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lc8/rcg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    iget-object v3, p0, Lc8/scg;->mBoxShadowHost:Lc8/rcg;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 509
    :cond_3
    iget-object v3, p0, Lc8/scg;->mBoxShadowHost:Lc8/rcg;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 510
    iget-object v3, p0, Lc8/scg;->mBoxShadowHost:Lc8/rcg;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 511
    iget-object v0, p0, Lc8/scg;->mBoxShadowHost:Lc8/rcg;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 514
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "BoxShadow"

    invoke-static {v3, v1}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getChild(I)Lc8/tbg;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    iget-object v0, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 256
    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 262
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    return v0
.end method

.method public getChildLayoutParams(Lc8/tbg;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "child"    # Lc8/tbg;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "top"    # I
    .param p8, "bottom"    # I

    .prologue
    .line 126
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v0, 0x0

    .line 127
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 131
    :cond_0
    if-nez v0, :cond_2

    .line 132
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 140
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_0
    return-object v0

    .line 134
    :cond_2
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 137
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p5, p7, p6, p8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected getChildrenLayoutTopOffset()I
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstScroller()Lc8/ebg;
    .locals 3

    .prologue
    .line 145
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    instance-of v2, p0, Lc8/ebg;

    if-eqz v2, :cond_0

    .line 146
    check-cast p0, Lc8/ebg;

    .line 155
    .end local p0    # "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    .local v0, "i":I
    :goto_0
    return-object p0

    .line 148
    .end local v0    # "i":I
    .restart local p0    # "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lc8/scg;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 149
    invoke-virtual {p0, v0}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->getFirstScroller()Lc8/ebg;

    move-result-object v1

    .line 150
    .local v1, "scrollable":Lc8/ebg;
    if-eqz v1, :cond_1

    move-object p0, v1

    .line 151
    goto :goto_0

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    .end local v1    # "scrollable":Lc8/ebg;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0}, Lc8/scg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0}, Lc8/scg;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public ignoreFocus()V
    .locals 2

    .prologue
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    .local v0, "host":Landroid/view/ViewGroup;, "TT;"
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 84
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 86
    :cond_0
    return-void
.end method

.method public final indexOf(Lc8/tbg;)I
    .locals 1
    .param p1, "comp"    # Lc8/tbg;

    .prologue
    .line 285
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    iget-object v0, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public interceptFocus()V
    .locals 2

    .prologue
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v1, 0x1

    .line 67
    invoke-virtual {p0}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    .local v0, "host":Landroid/view/ViewGroup;, "TT;"
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 71
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 74
    :cond_0
    return-void
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "wxEventType"    # Ljava/lang/String;
    .param p2, "direction"    # Ljava/lang/String;

    .prologue
    .line 354
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0, p1, p2}, Lc8/tbg;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 364
    :cond_0
    return-void

    .line 358
    :cond_1
    iget-object v2, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    .line 359
    .local v0, "component":Lc8/tbg;
    invoke-virtual {v0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    const-string/jumbo p1, "disappear"

    .line 362
    :cond_2
    invoke-virtual {v0, p1, p2}, Lc8/tbg;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityBack()Z
    .locals 3

    .prologue
    .line 433
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lc8/tbg;->onActivityBack()Z

    .line 435
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 436
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 437
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->onActivityBack()Z

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onActivityCreate()V
    .locals 3

    .prologue
    .line 371
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lc8/tbg;->onActivityCreate()V

    .line 373
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 374
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 375
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->onActivityCreate()V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_0
    return-void
.end method

.method public onActivityDestroy()V
    .locals 3

    .prologue
    .line 422
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lc8/tbg;->onActivityDestroy()V

    .line 424
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 425
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 426
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->onActivityDestroy()V

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 3

    .prologue
    .line 392
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lc8/tbg;->onActivityPause()V

    .line 394
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 395
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 396
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->onActivityPause()V

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 444
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lc8/tbg;->onActivityResult(IILandroid/content/Intent;)V

    .line 446
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 447
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 448
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lc8/tbg;->onActivityResult(IILandroid/content/Intent;)V

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 3

    .prologue
    .line 402
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lc8/tbg;->onActivityResume()V

    .line 404
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 405
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 406
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->onActivityResume()V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_0
    return-void
.end method

.method public onActivityStart()V
    .locals 3

    .prologue
    .line 381
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lc8/tbg;->onActivityStart()V

    .line 383
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 384
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 385
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->onActivityStart()V

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 3

    .prologue
    .line 412
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lc8/tbg;->onActivityStop()V

    .line 414
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 415
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 416
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->onActivityStop()V

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 454
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0, p1}, Lc8/tbg;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 456
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 457
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 458
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lc8/tbg;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onRenderFinish(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 476
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/scg;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 477
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 478
    .local v0, "child":Lc8/tbg;
    iget-object v2, v0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget-object v3, p0, Lc8/scg;->mTraceInfo:Lc8/lag;

    iget-wide v4, v3, Lc8/lag;->uiQueueTime:J

    iput-wide v4, v2, Lc8/lag;->uiQueueTime:J

    .line 479
    invoke-virtual {v0, p1}, Lc8/tbg;->onRenderFinish(I)V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "child":Lc8/tbg;
    :cond_0
    invoke-super {p0, p1}, Lc8/tbg;->onRenderFinish(I)V

    .line 482
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 466
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lc8/tbg;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 468
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 469
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 470
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lc8/tbg;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_0
    return-void
.end method

.method protected rearrangeIndexAndGetChild(I)Landroid/util/Pair;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Lc8/tbg;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    .line 303
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    move v0, p1

    .local v0, "indexToCreate":I
    if-gez p1, :cond_0

    .line 304
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 307
    :cond_0
    if-gez v0, :cond_1

    .line 308
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0, v0}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public recycled()V
    .locals 3

    .prologue
    .line 221
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    iget-object v2, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lc8/scg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->isFixed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lc8/scg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/xYf;->canRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 223
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 224
    iget-object v2, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/tbg;

    invoke-virtual {v2}, Lc8/tbg;->recycled()V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0}, Lc8/tbg;->recycled()V

    .line 229
    return-void
.end method

.method public refreshData(Lc8/tbg;)V
    .locals 4
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 175
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    if-nez p1, :cond_0

    .line 176
    move-object p1, p0

    .line 178
    :cond_0
    invoke-super {p0, p1}, Lc8/tbg;->refreshData(Lc8/tbg;)V

    .line 179
    invoke-virtual {p0}, Lc8/scg;->childCount()I

    move-result v0

    .line 180
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 181
    invoke-virtual {p0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lc8/scg;

    invoke-virtual {v2, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v3, v2}, Lc8/tbg;->refreshData(Lc8/tbg;)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    return-void
.end method

.method public remove(Lc8/tbg;Z)V
    .locals 2
    .param p1, "child"    # Lc8/tbg;
    .param p2, "destroy"    # Z

    .prologue
    .line 331
    .local p0, "this":Lc8/scg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lc8/scg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {p0}, Lc8/scg;->getInstance()Lc8/nVf;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lc8/scg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    invoke-virtual {p0}, Lc8/scg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/nVf;->removeFixedView(Landroid/view/View;)V

    .line 347
    :cond_2
    :goto_1
    if-eqz p2, :cond_0

    .line 348
    invoke-virtual {p1}, Lc8/tbg;->destroy()V

    goto :goto_0

    .line 340
    :cond_3
    invoke-virtual {p0}, Lc8/scg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p1}, Lc8/tbg;->isVirtualComponent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 342
    invoke-virtual {p0}, Lc8/scg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 344
    :cond_4
    invoke-virtual {p1}, Lc8/tbg;->removeVirtualComponent()V

    goto :goto_1
.end method
