.class public Lc8/rdg;
.super Ljava/lang/Object;
.source "TemplateStickyHelper.java"


# instance fields
.field private mStickyTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerTemplateList:Lc8/Bdg;

.field private stickyHolderCache:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/sdg;",
            ">;"
        }
    .end annotation
.end field

.field private stickyPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Bdg;)V
    .locals 2
    .param p1, "recyclerTemplateList"    # Lc8/Bdg;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lc8/rdg;->recyclerTemplateList:Lc8/Bdg;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/rdg;->stickyPositions:Ljava/util/List;

    .line 48
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/rdg;->stickyHolderCache:Landroid/support/v4/util/ArrayMap;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/rdg;->mStickyTypes:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public getStickyPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lc8/rdg;->stickyPositions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/rdg;->stickyPositions:Ljava/util/List;

    .line 246
    :cond_0
    iget-object v0, p0, Lc8/rdg;->stickyPositions:Ljava/util/List;

    return-object v0
.end method

.method public getStickyTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lc8/rdg;->mStickyTypes:Ljava/util/List;

    return-object v0
.end method

.method public onBeforeScroll(II)V
    .locals 28
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->stickyPositions:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->stickyPositions:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-nez v26, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->recyclerTemplateList:Lc8/Bdg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lc8/Ifg;

    .line 60
    .local v4, "bounceRecyclerView":Lc8/Ifg;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->recyclerTemplateList:Lc8/Bdg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v26

    check-cast v26, Lc8/Ifg;

    invoke-virtual/range {v26 .. v26}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v21

    check-cast v21, Lc8/Rv;

    .line 61
    .local v21, "recyclerView":Lc8/Rv;
    invoke-virtual/range {v21 .. v21}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v15

    .line 62
    .local v15, "layoutManager":Lc8/xv;
    const/4 v8, -0x1

    .line 63
    .local v8, "firstVisiblePosition":I
    const/4 v14, -0x1

    .line 64
    .local v14, "lastVisiblePosition":I
    instance-of v0, v15, Lc8/wu;

    move/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v26, v15

    .line 65
    check-cast v26, Lc8/wu;

    invoke-virtual/range {v26 .. v26}, Lc8/wu;->findFirstVisibleItemPosition()I

    move-result v8

    .line 66
    check-cast v15, Lc8/wu;

    .end local v15    # "layoutManager":Lc8/xv;
    invoke-virtual {v15}, Lc8/wu;->findLastVisibleItemPosition()I

    move-result v14

    .line 72
    :cond_2
    :goto_1
    if-ltz v8, :cond_0

    .line 76
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lc8/Rv;->findViewHolderForAdapterPosition(I)Lc8/Qv;

    move-result-object v6

    check-cast v6, Lc8/sdg;

    .line 77
    .local v6, "firstVisibleItemHolder":Lc8/sdg;
    if-eqz v6, :cond_0

    .line 82
    const/16 v16, -0x1

    .line 83
    .local v16, "matchStickyPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->stickyPositions:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 84
    .local v9, "headerPosition":Ljava/lang/Integer;
    if-eqz v9, :cond_3

    .line 87
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    if-gt v0, v8, :cond_5

    .line 88
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v16

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 92
    goto :goto_2

    .line 67
    .end local v6    # "firstVisibleItemHolder":Lc8/sdg;
    .end local v9    # "headerPosition":Ljava/lang/Integer;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "matchStickyPosition":I
    .restart local v15    # "layoutManager":Lc8/xv;
    :cond_4
    instance-of v0, v15, Lc8/Qw;

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 68
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v7, v0, [I

    .local v7, "firstVisibleItemPositions":[I
    move-object/from16 v26, v15

    .line 69
    check-cast v26, Lc8/Qw;

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lc8/Qw;->findFirstVisibleItemPositions([I)[I

    move-result-object v26

    const/16 v27, 0x0

    aget v8, v26, v27

    .line 70
    check-cast v15, Lc8/Qw;

    .end local v15    # "layoutManager":Lc8/xv;
    invoke-virtual {v15, v7}, Lc8/Qw;->findLastVisibleItemPositions([I)[I

    move-result-object v26

    const/16 v27, 0x0

    aget v14, v26, v27

    goto :goto_1

    .line 93
    .end local v7    # "firstVisibleItemPositions":[I
    .restart local v6    # "firstVisibleItemHolder":Lc8/sdg;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v16    # "matchStickyPosition":I
    :cond_5
    if-gez v16, :cond_8

    .line 95
    invoke-virtual {v4}, Lc8/Ifg;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lc8/Ifg;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 96
    .local v22, "stickyFakeView":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lc8/sdg;

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 97
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lc8/sdg;

    .line 98
    .local v23, "stickyFakeViewHolder":Lc8/sdg;
    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lc8/Ifg;->removeView(Landroid/view/View;)V

    .line 99
    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTranslationY(F)V

    .line 100
    invoke-virtual/range {v23 .. v23}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    if-eqz v26, :cond_6

    invoke-virtual/range {v23 .. v23}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v26

    if-eqz v26, :cond_6

    invoke-virtual/range {v23 .. v23}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v26

    const-string/jumbo v27, "unsticky"

    invoke-virtual/range {v26 .. v27}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 103
    invoke-virtual/range {v23 .. v23}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    const-string/jumbo v27, "unsticky"

    invoke-virtual/range {v26 .. v27}, Lc8/tbg;->fireEvent(Ljava/lang/String;)V

    .line 108
    .end local v23    # "stickyFakeViewHolder":Lc8/sdg;
    :cond_6
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lc8/Rv;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_0

    .line 109
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lc8/Rv;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 110
    .local v13, "itemView":Landroid/view/View;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lc8/Rv;->getChildViewHolder(Landroid/view/View;)Lc8/Qv;

    move-result-object v12

    check-cast v12, Lc8/sdg;

    .line 111
    .local v12, "itemHolder":Lc8/sdg;
    if-eqz v12, :cond_7

    .line 114
    invoke-virtual {v12}, Lc8/sdg;->getAdapterPosition()I

    move-result v3

    .line 115
    .local v3, "adapterPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->stickyPositions:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 118
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v26

    if-eqz v26, :cond_7

    .line 119
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .end local v3    # "adapterPosition":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 126
    .end local v10    # "i":I
    .end local v12    # "itemHolder":Lc8/sdg;
    .end local v13    # "itemView":Landroid/view/View;
    .end local v22    # "stickyFakeView":Landroid/view/View;
    :cond_8
    invoke-virtual {v4}, Lc8/Ifg;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lc8/Ifg;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 127
    .restart local v22    # "stickyFakeView":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lc8/sdg;

    move/from16 v26, v0

    if-eqz v26, :cond_9

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lc8/sdg;

    invoke-virtual/range {v26 .. v26}, Lc8/sdg;->getHolderPosition()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    .line 131
    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lc8/sdg;

    move/from16 v26, v0

    if-eqz v26, :cond_a

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lc8/sdg;

    invoke-virtual/range {v26 .. v26}, Lc8/sdg;->getHolderPosition()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v16

    if-eq v0, v1, :cond_a

    .line 133
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lc8/sdg;

    .line 134
    .restart local v23    # "stickyFakeViewHolder":Lc8/sdg;
    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lc8/Ifg;->removeView(Landroid/view/View;)V

    .line 135
    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTranslationY(F)V

    .line 136
    invoke-virtual/range {v23 .. v23}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    if-eqz v26, :cond_a

    invoke-virtual/range {v23 .. v23}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v26

    if-eqz v26, :cond_a

    invoke-virtual/range {v23 .. v23}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v26

    const-string/jumbo v27, "unsticky"

    invoke-virtual/range {v26 .. v27}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 139
    invoke-virtual/range {v23 .. v23}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    const-string/jumbo v27, "unsticky"

    invoke-virtual/range {v26 .. v27}, Lc8/tbg;->fireEvent(Ljava/lang/String;)V

    .line 144
    .end local v23    # "stickyFakeViewHolder":Lc8/sdg;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->recyclerTemplateList:Lc8/Bdg;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lc8/Bdg;->getItemViewType(I)I

    move-result v24

    .line 145
    .local v24, "stickyHolderType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->stickyHolderCache:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/sdg;

    .line 146
    .local v5, "fakeStickyHolder":Lc8/sdg;
    if-nez v5, :cond_b

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->recyclerTemplateList:Lc8/Bdg;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lc8/Bdg;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/sdg;

    move-result-object v5

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->stickyHolderCache:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->recyclerTemplateList:Lc8/Bdg;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lc8/Bdg;->onBindViewHolder(Lc8/sdg;I)V

    .line 151
    iget-object v0, v5, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTranslationY(F)V

    .line 152
    iget-object v0, v5, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v19, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lc8/tbg;->clearPreLayout()V

    .line 155
    iget-object v0, v5, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    if-eqz v26, :cond_c

    .line 156
    iget-object v0, v5, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 157
    .local v20, "parent":Landroid/view/ViewGroup;
    iget-object v0, v5, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    .end local v20    # "parent":Landroid/view/ViewGroup;
    :cond_c
    iget-object v0, v5, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lc8/Ifg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {v5}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    invoke-virtual {v5}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lc8/tbg;->setLayout(Lc8/qYf;)V

    .line 161
    iget-object v0, v5, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    .line 162
    invoke-virtual {v5}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    if-eqz v26, :cond_d

    invoke-virtual {v5}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v26

    if-eqz v26, :cond_d

    invoke-virtual {v5}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v26

    const-string/jumbo v27, "sticky"

    invoke-virtual/range {v26 .. v27}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 165
    invoke-virtual {v5}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    const-string/jumbo v27, "sticky"

    invoke-virtual/range {v26 .. v27}, Lc8/tbg;->fireEvent(Ljava/lang/String;)V

    .line 168
    .end local v5    # "fakeStickyHolder":Lc8/sdg;
    .end local v19    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v24    # "stickyHolderType":I
    :cond_d
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lc8/sdg;

    .line 169
    .restart local v23    # "stickyFakeViewHolder":Lc8/sdg;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    invoke-virtual/range {v21 .. v21}, Lc8/Rv;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_10

    .line 170
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lc8/Rv;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 171
    .restart local v13    # "itemView":Landroid/view/View;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lc8/Rv;->getChildViewHolder(Landroid/view/View;)Lc8/Qv;

    move-result-object v12

    check-cast v12, Lc8/sdg;

    .line 172
    .restart local v12    # "itemHolder":Lc8/sdg;
    if-eqz v12, :cond_e

    .line 175
    invoke-virtual {v12}, Lc8/sdg;->getAdapterPosition()I

    move-result v3

    .line 176
    .restart local v3    # "adapterPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->stickyPositions:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 179
    invoke-virtual/range {v23 .. v23}, Lc8/sdg;->getHolderPosition()I

    move-result v26

    move/from16 v0, v26

    if-ne v3, v0, :cond_f

    .line 180
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_e

    .line 181
    const/16 v26, 0x4

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .end local v3    # "adapterPosition":I
    :cond_e
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 184
    .restart local v3    # "adapterPosition":I
    :cond_f
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v26

    if-eqz v26, :cond_e

    .line 185
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 190
    .end local v3    # "adapterPosition":I
    .end local v12    # "itemHolder":Lc8/sdg;
    .end local v13    # "itemView":Landroid/view/View;
    :cond_10
    invoke-virtual {v6}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lc8/tbg;->isSticky()Z

    move-result v26

    if-eqz v26, :cond_17

    .line 191
    iget-object v0, v6, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getY()F

    move-result v26

    const/16 v27, 0x0

    cmpg-float v26, v26, v27

    if-gez v26, :cond_15

    .line 192
    iget-object v0, v6, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_11

    .line 193
    iget-object v0, v6, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_11
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v26

    if-eqz v26, :cond_12

    .line 196
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->bringToFront()V

    .line 214
    :cond_13
    :goto_6
    add-int/lit8 v18, v8, 0x1

    .line 215
    .local v18, "nextVisiblePostion":I
    if-lez v14, :cond_14

    .line 216
    move/from16 v10, v18

    :goto_7
    if-gt v10, v14, :cond_14

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->stickyPositions:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 218
    move/from16 v18, v10

    .line 223
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/rdg;->stickyPositions:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_19

    .line 224
    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTranslationY()F

    move-result v26

    const/16 v27, 0x0

    cmpg-float v26, v26, v27

    if-gez v26, :cond_0

    .line 225
    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0

    .line 200
    .end local v18    # "nextVisiblePostion":I
    :cond_15
    iget-object v0, v6, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    if-eqz v26, :cond_16

    .line 201
    iget-object v0, v6, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_16
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_13

    .line 204
    const/16 v26, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 208
    :cond_17
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v26

    if-eqz v26, :cond_13

    .line 209
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 216
    .restart local v18    # "nextVisiblePostion":I
    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    .line 229
    :cond_19
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/Rv;->findViewHolderForAdapterPosition(I)Lc8/Qv;

    move-result-object v17

    check-cast v17, Lc8/sdg;

    .line 230
    .local v17, "nextStickyHolder":Lc8/sdg;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 234
    move-object/from16 v0, v17

    iget-object v0, v0, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getY()F

    move-result v26

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 235
    .local v25, "translationY":I
    if-gtz v25, :cond_1a

    .line 236
    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0

    .line 238
    :cond_1a
    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/sdg;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0
.end method
