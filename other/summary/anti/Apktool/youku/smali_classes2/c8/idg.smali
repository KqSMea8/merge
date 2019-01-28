.class public Lc8/idg;
.super Ljava/lang/Object;
.source "StickyHeaderHelper.java"


# instance fields
.field private mCurrentStickyRef:Ljava/lang/String;

.field private mHeaderComps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/jdg;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/idg;->mHeaderViews:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/idg;->mHeaderComps:Ljava/util/Map;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/idg;->mCurrentStickyRef:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lc8/idg;->mParent:Landroid/view/ViewGroup;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lc8/idg;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lc8/idg;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/idg;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lc8/idg;)V
    .locals 0
    .param p0, "x0"    # Lc8/idg;

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/idg;->changeFrontStickyVisible()V

    return-void
.end method

.method private changeFrontStickyVisible()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 170
    iget-object v3, p0, Lc8/idg;->mHeaderViews:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 189
    :cond_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x0

    .line 174
    .local v0, "fontVisible":Z
    iget-object v3, p0, Lc8/idg;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 175
    iget-object v3, p0, Lc8/idg;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 176
    .local v2, "view":Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lc8/idg;

    if-eqz v3, :cond_3

    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 178
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lc8/idg;

    if-eqz v3, :cond_2

    .line 182
    const/4 v0, 0x1

    .line 183
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public notifyStickyRemove(Lc8/jdg;)V
    .locals 4
    .param p1, "compToRemove"    # Lc8/jdg;

    .prologue
    .line 113
    if-nez p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lc8/idg;->mHeaderComps:Ljava/util/Map;

    invoke-virtual {p1}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/jdg;

    .line 116
    .local v0, "component":Lc8/jdg;
    iget-object v2, p0, Lc8/idg;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {p1}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 119
    .local v1, "headerView":Landroid/view/View;
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 120
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    goto :goto_0

    .line 124
    :cond_3
    iget-object v2, p0, Lc8/idg;->mCurrentStickyRef:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lc8/idg;->mCurrentStickyRef:Ljava/lang/String;

    invoke-virtual {p1}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/idg;->mCurrentStickyRef:Ljava/lang/String;

    .line 127
    :cond_4
    iget-object v2, p0, Lc8/idg;->mParent:Landroid/view/ViewGroup;

    new-instance v3, Lc8/hdg;

    invoke-direct {v3, p0, v1, v0}, Lc8/hdg;-><init>(Lc8/idg;Landroid/view/View;Lc8/jdg;)V

    invoke-static {v3}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 139
    invoke-virtual {v0}, Lc8/jdg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    const-string/jumbo v3, "unsticky"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const-string/jumbo v2, "unsticky"

    invoke-virtual {v0, v2}, Lc8/jdg;->fireEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyStickyShow(Lc8/jdg;)V
    .locals 10
    .param p1, "component"    # Lc8/jdg;

    .prologue
    .line 52
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v8, p0, Lc8/idg;->mHeaderComps:Ljava/util/Map;

    invoke-virtual {p1}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v8, p0, Lc8/idg;->mCurrentStickyRef:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 56
    iget-object v8, p0, Lc8/idg;->mHeaderComps:Ljava/util/Map;

    iget-object v9, p0, Lc8/idg;->mCurrentStickyRef:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/jdg;

    .line 57
    .local v0, "cell":Lc8/jdg;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lc8/jdg;->getScrollPositon()I

    move-result v8

    invoke-virtual {v0}, Lc8/jdg;->getScrollPositon()I

    move-result v9

    if-le v8, v9, :cond_3

    .line 58
    :cond_2
    invoke-virtual {p1}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lc8/idg;->mCurrentStickyRef:Ljava/lang/String;

    .line 65
    .end local v0    # "cell":Lc8/jdg;
    :cond_3
    :goto_1
    iget-object v8, p0, Lc8/idg;->mCurrentStickyRef:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 66
    const-string/jumbo v8, "Current Sticky ref is null."

    invoke-static {v8}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {p1}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lc8/idg;->mCurrentStickyRef:Ljava/lang/String;

    goto :goto_1

    .line 70
    :cond_5
    iget-object v8, p0, Lc8/idg;->mHeaderComps:Ljava/util/Map;

    iget-object v9, p0, Lc8/idg;->mCurrentStickyRef:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/jdg;

    .line 71
    .local v2, "headComponent":Lc8/jdg;
    invoke-virtual {v2}, Lc8/jdg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v4

    .line 72
    .local v4, "headerView":Landroid/view/View;
    if-nez v4, :cond_6

    .line 73
    const-string/jumbo v8, "Sticky header\'s real view is null."

    invoke-static {v8}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_6
    iget-object v8, p0, Lc8/idg;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {v2}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 77
    .local v3, "header":Landroid/view/View;
    if-eqz v3, :cond_7

    .line 79
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 104
    :goto_2
    invoke-direct {p0}, Lc8/idg;->changeFrontStickyVisible()V

    .line 105
    invoke-virtual {v2}, Lc8/jdg;->getDomObject()Lc8/qYf;

    move-result-object v8

    invoke-interface {v8}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v8

    const-string/jumbo v9, "sticky"

    invoke-virtual {v8, v9}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 106
    const-string/jumbo v8, "sticky"

    invoke-virtual {v2, v8}, Lc8/jdg;->fireEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_7
    iget-object v8, p0, Lc8/idg;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {v2}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 84
    .local v6, "translationX":F
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 85
    .local v7, "translationY":F
    invoke-virtual {v2}, Lc8/jdg;->removeSticky()V

    .line 88
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "existedParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_8

    .line 89
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    :cond_8
    invoke-virtual {v2}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v8, p0, Lc8/idg;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v2}, Lc8/jdg;->getStickyOffset()I

    move-result v8

    if-lez v8, :cond_9

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 96
    .local v5, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2}, Lc8/jdg;->getStickyOffset()I

    move-result v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v9, :cond_9

    .line 97
    invoke-virtual {v2}, Lc8/jdg;->getStickyOffset()I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 101
    .end local v5    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 102
    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2
.end method

.method public updateStickyView(I)V
    .locals 9
    .param p1, "currentStickyPos"    # I

    .prologue
    .line 146
    iget-object v7, p0, Lc8/idg;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 147
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v5, "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/list/WXCell;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 150
    .local v3, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/jdg;

    .line 151
    .local v0, "cell":Lc8/jdg;
    invoke-virtual {v0}, Lc8/jdg;->getScrollPositon()I

    move-result v4

    .line 152
    .local v4, "pos":I
    if-le v4, p1, :cond_1

    .line 153
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_1
    if-ne v4, p1, :cond_0

    .line 155
    invoke-virtual {v0}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/idg;->mCurrentStickyRef:Ljava/lang/String;

    .line 156
    iget-object v7, p0, Lc8/idg;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {v0}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 157
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 158
    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    .line 159
    invoke-direct {p0}, Lc8/idg;->changeFrontStickyVisible()V

    goto :goto_0

    .line 163
    .end local v0    # "cell":Lc8/jdg;
    .end local v3    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;>;"
    .end local v4    # "pos":I
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/jdg;

    .line 164
    .restart local v0    # "cell":Lc8/jdg;
    invoke-virtual {p0, v0}, Lc8/idg;->notifyStickyRemove(Lc8/jdg;)V

    goto :goto_1

    .line 166
    .end local v0    # "cell":Lc8/jdg;
    :cond_3
    return-void
.end method
