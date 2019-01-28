.class public Lc8/Gq;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lc8/Ku;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jq;


# direct methods
.method constructor <init>(Lc8/Jq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jq;

    .prologue
    .line 116
    iput-object p1, p0, Lc8/Gq;->this$0:Lc8/Jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemHoverEnter(Lc8/Rq;Landroid/view/MenuItem;)V
    .locals 12
    .param p1, "menu"    # Lc8/Rq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    iget-object v8, p0, Lc8/Gq;->this$0:Lc8/Jq;

    iget-object v8, v8, Lc8/Jq;->mSubMenuHoverHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 132
    const/4 v2, -0x1

    .line 133
    .local v2, "menuIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v8, p0, Lc8/Gq;->this$0:Lc8/Jq;

    iget-object v8, v8, Lc8/Jq;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 134
    iget-object v8, p0, Lc8/Gq;->this$0:Lc8/Jq;

    iget-object v8, v8, Lc8/Jq;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/Hq;

    iget-object v8, v8, Lc8/Hq;->menu:Lc8/Rq;

    if-ne p1, v8, :cond_1

    .line 135
    move v2, v1

    .line 140
    :cond_0
    const/4 v8, -0x1

    if-ne v2, v8, :cond_2

    .line 173
    :goto_1
    return-void

    .line 133
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 146
    .local v3, "nextIndex":I
    iget-object v8, p0, Lc8/Gq;->this$0:Lc8/Jq;

    iget-object v8, v8, Lc8/Jq;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 147
    iget-object v8, p0, Lc8/Gq;->this$0:Lc8/Jq;

    iget-object v8, v8, Lc8/Jq;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Hq;

    .line 152
    .local v4, "nextInfo":Lc8/Hq;
    :goto_2
    new-instance v5, Lc8/Fq;

    invoke-direct {v5, p0, v4, p2, p1}, Lc8/Fq;-><init>(Lc8/Gq;Lc8/Hq;Landroid/view/MenuItem;Lc8/Rq;)V

    .line 171
    .local v5, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xc8

    add-long v6, v8, v10

    .line 172
    .local v6, "uptimeMillis":J
    iget-object v8, p0, Lc8/Gq;->this$0:Lc8/Jq;

    iget-object v8, v8, Lc8/Jq;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5, p1, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_1

    .line 149
    .end local v4    # "nextInfo":Lc8/Hq;
    .end local v5    # "runnable":Ljava/lang/Runnable;
    .end local v6    # "uptimeMillis":J
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "nextInfo":Lc8/Hq;
    goto :goto_2
.end method

.method public onItemHoverExit(Lc8/Rq;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    iget-object v0, p0, Lc8/Gq;->this$0:Lc8/Jq;

    iget-object v0, v0, Lc8/Jq;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 123
    return-void
.end method
