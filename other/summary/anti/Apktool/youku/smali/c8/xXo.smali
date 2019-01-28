.class public Lc8/xXo;
.super Lc8/scg;
.source "ViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/scg",
        "<",
        "Lc8/zXo;",
        ">;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;"
    }
.end annotation


# static fields
.field public static final COMPONENT_TYPE:Ljava/lang/String; = "yk-viewpager"

.field private static final EVENT_PAGE_SCROLL:Ljava/lang/String; = "pageScroll"

.field private static final EVENT_PAGE_SCROLL2:Ljava/lang/String; = "pagescroll"

.field private static final EVENT_PAGE_SCROLL_STATE_CHANGED:Ljava/lang/String; = "pageScrollStateChanged"

.field private static final EVENT_PAGE_SCROLL_STATE_CHANGED2:Ljava/lang/String; = "pagescrollstatechanged"

.field private static final EVENT_PAGE_SELECTED:Ljava/lang/String; = "pageSelected"

.field private static final EVENT_PAGE_SELECTED2:Ljava/lang/String; = "pageselected"


# instance fields
.field private mInitialPage:I

.field private mInitialPageSetted:Z

.field private mIsCurrentItemFromJs:Z

.field private mViewPager:Lc8/zXo;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "lazy"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/xXo;->mIsCurrentItemFromJs:Z

    .line 46
    return-void
.end method

.method private setCurrentItemFromJs(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 161
    if-gez p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/xXo;->mIsCurrentItemFromJs:Z

    .line 165
    iget-object v0, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v0, p1, p2}, Lc8/zXo;->setCurrentItem(IZ)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/xXo;->mIsCurrentItemFromJs:Z

    goto :goto_0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lc8/scg;->addEvent(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lc8/xXo;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lc8/xXo;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    :cond_0
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v0}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iput-boolean v3, p0, Lc8/xXo;->mIsCurrentItemFromJs:Z

    .line 79
    iget-object v0, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v0, p1}, Lc8/zXo;->addViewToAdapter(Landroid/view/View;)V

    .line 80
    iput-boolean v2, p0, Lc8/xXo;->mIsCurrentItemFromJs:Z

    .line 81
    iget-boolean v0, p0, Lc8/xXo;->mInitialPageSetted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lc8/xXo;->mInitialPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lc8/xXo;->mInitialPage:I

    iget-object v1, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v1}, Lc8/zXo;->getViewCountInAdapter()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 82
    iget v0, p0, Lc8/xXo;->mInitialPage:I

    invoke-direct {p0, v0, v2}, Lc8/xXo;->setCurrentItemFromJs(IZ)V

    .line 83
    iput-boolean v3, p0, Lc8/xXo;->mInitialPageSetted:Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lc8/scg;->destroy()V

    .line 113
    iget-object v0, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v0}, Lc8/zXo;->removeAllViews()V

    .line 117
    :cond_0
    return-void
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lc8/xXo;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/xXo;->initComponentHostView(Landroid/content/Context;)Lc8/zXo;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/zXo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Lc8/zXo;

    invoke-virtual {p0}, Lc8/xXo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/zXo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    .line 55
    iget-object v0, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v0, p0}, Lc8/zXo;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 56
    iget-object v0, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 6
    .param p1, "arg0"    # I

    .prologue
    .line 223
    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 238
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Unsupported pageScrollState"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 229
    :pswitch_0
    const-string/jumbo v1, "idle"

    .line 240
    .local v1, "pageScrollState":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    .line 241
    .local v0, "event":Lcom/taobao/weex/dom/WXEvent;
    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "ref":Ljava/lang/String;
    invoke-virtual {p0}, Lc8/xXo;->getHostView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lc8/Jgg;->onScreenArea(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "pageScrollState"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v4, "pageScrollStateChanged"

    invoke-virtual {v0, v4}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    invoke-virtual {p0}, Lc8/xXo;->getInstance()Lc8/nVf;

    move-result-object v4

    const-string/jumbo v5, "pageScrollStateChanged"

    invoke-virtual {v4, v3, v5, v2}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 232
    .end local v0    # "event":Lcom/taobao/weex/dom/WXEvent;
    .end local v1    # "pageScrollState":Ljava/lang/String;
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "ref":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "dragging"

    .line 233
    .restart local v1    # "pageScrollState":Ljava/lang/String;
    goto :goto_1

    .line 235
    .end local v1    # "pageScrollState":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "settling"

    .line 236
    .restart local v1    # "pageScrollState":Ljava/lang/String;
    goto :goto_1

    .line 247
    .restart local v0    # "event":Lcom/taobao/weex/dom/WXEvent;
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "ref":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "pagescrollstatechanged"

    invoke-virtual {v0, v4}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    invoke-virtual {p0}, Lc8/xXo;->getInstance()Lc8/nVf;

    move-result-object v4

    const-string/jumbo v5, "pagescrollstatechanged"

    invoke-virtual {v4, v3, v5, v2}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    .line 175
    .local v0, "event":Lcom/taobao/weex/dom/WXEvent;
    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "ref":Ljava/lang/String;
    invoke-virtual {p0}, Lc8/xXo;->getHostView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lc8/Jgg;->onScreenArea(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v3, "offset"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v3, "pageScroll"

    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    invoke-virtual {p0}, Lc8/xXo;->getInstance()Lc8/nVf;

    move-result-object v3

    const-string/jumbo v4, "pageScroll"

    invoke-virtual {v3, v2, v4, v1}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 182
    :cond_2
    const-string/jumbo v3, "pagescroll"

    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {p0}, Lc8/xXo;->getInstance()Lc8/nVf;

    move-result-object v3

    const-string/jumbo v4, "pagescroll"

    invoke-virtual {v3, v2, v4, v1}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    .line 190
    iget-boolean v4, p0, Lc8/xXo;->mIsCurrentItemFromJs:Z

    if-eqz v4, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPageSelected >>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 196
    :cond_2
    iget-object v4, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v4}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v4}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v4

    invoke-virtual {v4}, Lc8/yXo;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    iget-object v4, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v4}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v4

    invoke-virtual {v4}, Lc8/yXo;->getCount()I

    move-result v4

    rem-int v2, p1, v4

    .line 201
    .local v2, "realPosition":I
    iget-object v4, p0, Lc8/xXo;->mChildren:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/xXo;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 205
    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    .line 209
    .local v0, "event":Lcom/taobao/weex/dom/WXEvent;
    invoke-virtual {p0}, Lc8/xXo;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "ref":Ljava/lang/String;
    invoke-virtual {p0}, Lc8/xXo;->getHostView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lc8/Jgg;->onScreenArea(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "position"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v4, "pageSelected"

    invoke-virtual {v0, v4}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    invoke-virtual {p0}, Lc8/xXo;->getInstance()Lc8/nVf;

    move-result-object v4

    const-string/jumbo v5, "pageSelected"

    invoke-virtual {v4, v3, v5, v1}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 215
    :cond_3
    const-string/jumbo v4, "pageselected"

    invoke-virtual {v0, v4}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    invoke-virtual {p0}, Lc8/xXo;->getInstance()Lc8/nVf;

    move-result-object v4

    const-string/jumbo v5, "pageselected"

    invoke-virtual {v4, v3, v5, v1}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public remove(Lc8/tbg;Z)V
    .locals 4
    .param p1, "child"    # Lc8/tbg;
    .param p2, "destroy"    # Z

    .prologue
    const/4 v3, 0x0

    .line 89
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v1}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lc8/xXo;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    if-eqz p2, :cond_2

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/xXo;->mIsCurrentItemFromJs:Z

    .line 96
    iget-object v1, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/zXo;->removeViewFromAdapter(Landroid/view/View;)V

    .line 97
    iput-boolean v3, p0, Lc8/xXo;->mIsCurrentItemFromJs:Z

    .line 98
    iget-object v1, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v1}, Lc8/zXo;->getCurrentItem()I

    move-result v0

    .line 99
    .local v0, "currItem":I
    if-lez v0, :cond_2

    .line 100
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v3}, Lc8/xXo;->setCurrentItemFromJs(IZ)V

    .line 105
    .end local v0    # "currItem":I
    :cond_2
    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p1}, Lc8/tbg;->destroy()V

    goto :goto_0
.end method

.method public setCurrentItemWithAnimation(I)V
    .locals 1
    .param p1, "item"    # I
    .annotation runtime Lc8/vbg;
        name = "currentItem"
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc8/xXo;->setCurrentItemFromJs(IZ)V

    .line 153
    return-void
.end method

.method public setCurrentItemWithAnimation2(I)V
    .locals 0
    .param p1, "item"    # I
    .annotation runtime Lc8/vbg;
        name = "currentitem"
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lc8/xXo;->setCurrentItemWithAnimation(I)V

    .line 158
    return-void
.end method

.method public setInitialPage(I)V
    .locals 0
    .param p1, "item"    # I
    .annotation runtime Lc8/vbg;
        name = "initialPage"
    .end annotation

    .prologue
    .line 141
    iput p1, p0, Lc8/xXo;->mInitialPage:I

    .line 143
    return-void
.end method

.method public setInitialPage2(I)V
    .locals 0
    .param p1, "item"    # I
    .annotation runtime Lc8/vbg;
        name = "initialpage"
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lc8/xXo;->setInitialPage(I)V

    .line 148
    return-void
.end method

.method public setPageMargin(F)V
    .locals 2
    .param p1, "margin"    # F
    .annotation runtime Lc8/vbg;
        name = "pageMargin"
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-static {p1}, Lc8/Jgg;->getRealPxByWidth2(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lc8/zXo;->setPageMargin(I)V

    .line 132
    return-void
.end method

.method public setPageMargin2(F)V
    .locals 0
    .param p1, "margin"    # F
    .annotation runtime Lc8/vbg;
        name = "pagemargin"
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lc8/xXo;->setPageMargin(F)V

    .line 137
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation runtime Lc8/vbg;
        name = "scrollEnabled"
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lc8/xXo;->mViewPager:Lc8/zXo;

    invoke-virtual {v0, p1}, Lc8/zXo;->setScrollEnabled(Z)V

    .line 122
    return-void
.end method

.method public setScrollEnabled2(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation runtime Lc8/vbg;
        name = "scrollenabled"
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lc8/xXo;->setScrollEnabled(Z)V

    .line 127
    return-void
.end method
