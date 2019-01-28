.class public Lc8/Mbo;
.super Landroid/widget/RelativeLayout;
.source "BannerView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Lbo;,
        Lc8/Kbo;
    }
.end annotation


# static fields
.field private static final FLIP_INTERVAL_DEFAULT:J = 0xdacL

.field private static final MSG_TYPE_SCROLL_PAGE:I = 0x11201


# instance fields
.field private banner_view_pager:Landroid/support/v4/view/ViewPager;

.field private fakeAdapter:Lc8/Lbo;

.field private fakeViewPage:Landroid/support/v4/view/ViewPager;

.field innerCoverPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private isResumed:Z

.field private mFlipInterval:J

.field private onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private pageIndicator:Lc8/Peo;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const-wide/16 v0, 0xdac

    iput-wide v0, p0, Lc8/Mbo;->mFlipInterval:J

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Mbo;->isResumed:Z

    .line 241
    new-instance v0, Lc8/Jbo;

    invoke-direct {v0, p0}, Lc8/Jbo;-><init>(Lc8/Mbo;)V

    iput-object v0, p0, Lc8/Mbo;->innerCoverPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 86
    invoke-direct {p0}, Lc8/Mbo;->init()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const-wide/16 v0, 0xdac

    iput-wide v0, p0, Lc8/Mbo;->mFlipInterval:J

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Mbo;->isResumed:Z

    .line 241
    new-instance v0, Lc8/Jbo;

    invoke-direct {v0, p0}, Lc8/Jbo;-><init>(Lc8/Mbo;)V

    iput-object v0, p0, Lc8/Mbo;->innerCoverPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 76
    invoke-direct {p0}, Lc8/Mbo;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const-wide/16 v0, 0xdac

    iput-wide v0, p0, Lc8/Mbo;->mFlipInterval:J

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Mbo;->isResumed:Z

    .line 241
    new-instance v0, Lc8/Jbo;

    invoke-direct {v0, p0}, Lc8/Jbo;-><init>(Lc8/Mbo;)V

    iput-object v0, p0, Lc8/Mbo;->innerCoverPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 81
    invoke-direct {p0}, Lc8/Mbo;->init()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lc8/Mbo;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lc8/Mbo;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Mbo;->fakeViewPage:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Mbo;)Lc8/Lbo;
    .locals 1
    .param p0, "x0"    # Lc8/Mbo;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Mbo;->fakeAdapter:Lc8/Lbo;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Mbo;)V
    .locals 0
    .param p0, "x0"    # Lc8/Mbo;

    .prologue
    .line 31
    invoke-direct {p0}, Lc8/Mbo;->startFlipAnimation()V

    return-void
.end method

.method static synthetic access$300(Lc8/Mbo;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .param p0, "x0"    # Lc8/Mbo;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Mbo;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/Mbo;->uiHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method private initViewPagerScroll(Landroid/support/v4/view/ViewPager;)V
    .locals 4
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 279
    :try_start_0
    const-class v2, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 280
    .local v0, "mScroller":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 281
    new-instance v1, Lc8/Eeo;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/Eeo;-><init>(Landroid/content/Context;)V

    .line 282
    .local v1, "scroller":Lc8/Eeo;
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lc8/Eeo;->setScrollDuration(I)V

    .line 283
    invoke-static {v0, p1, v1}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v0    # "mScroller":Ljava/lang/reflect/Field;
    .end local v1    # "scroller":Lc8/Eeo;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    .line 287
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method private startFlipAnimation()V
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Lc8/Mbo;->mFlipInterval:J

    invoke-direct {p0, v0, v1}, Lc8/Mbo;->startFlipAnimation(J)V

    .line 295
    return-void
.end method

.method private startFlipAnimation(J)V
    .locals 3
    .param p1, "flipInterval"    # J

    .prologue
    const v2, 0x11201

    .line 301
    iget-object v0, p0, Lc8/Mbo;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lc8/Mbo;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    iget-object v0, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    .line 305
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lc8/Mbo;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/Mbo;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method protected findChildPageIndicator()Lc8/Peo;
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lc8/Mbo;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/Mbo;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 130
    invoke-virtual {p0, v0}, Lc8/Mbo;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lc8/Peo;

    if-eqz v2, :cond_0

    .line 132
    check-cast v1, Lc8/Peo;

    .line 136
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :goto_1
    return-object v1

    .line 129
    .restart local v0    # "i":I
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected findChildViewPager()Landroid/support/v4/view/ViewPager;
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lc8/Mbo;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/Mbo;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 113
    invoke-virtual {p0, v0}, Lc8/Mbo;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 114
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 115
    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 119
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :goto_1
    return-object v1

    .line 112
    .restart local v0    # "i":I
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFlipInterval()J
    .locals 2

    .prologue
    .line 428
    iget-wide v0, p0, Lc8/Mbo;->mFlipInterval:J

    return-wide v0
.end method

.method public getOnPageChangeListener()Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lc8/Mbo;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method protected getPageIndicator()Lc8/Peo;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 161
    invoke-virtual {p0}, Lc8/Mbo;->findChildPageIndicator()Lc8/Peo;

    move-result-object v1

    .line 162
    .local v1, "pageIndicator":Lc8/Peo;
    if-nez v1, :cond_0

    .line 163
    new-instance v1, Lc8/Heo;

    .end local v1    # "pageIndicator":Lc8/Peo;
    invoke-virtual {p0}, Lc8/Mbo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/Heo;-><init>(Landroid/content/Context;)V

    .line 164
    .restart local v1    # "pageIndicator":Lc8/Peo;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v2, v1

    .line 167
    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lc8/Mbo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-object v1
.end method

.method protected getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 145
    invoke-virtual {p0}, Lc8/Mbo;->findChildViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    .line 146
    .local v0, "viewPager":Landroid/support/v4/view/ViewPager;
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Landroid/support/v4/view/ViewPager;

    .end local v0    # "viewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {p0}, Lc8/Mbo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 148
    .restart local v0    # "viewPager":Landroid/support/v4/view/ViewPager;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lc8/Mbo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    :cond_0
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 313
    iget-boolean v3, p0, Lc8/Mbo;->isResumed:Z

    if-nez v3, :cond_1

    .line 314
    const/4 v2, 0x0

    .line 334
    :cond_0
    :goto_0
    return v2

    .line 316
    :cond_1
    const v3, 0x11201

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_0

    .line 318
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MSG_TYPE_SCROLL_PAGE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Oao;->w(Ljava/lang/String;)I

    .line 319
    iget-object v3, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    .line 320
    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "nextIndex":I
    iget-object v3, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    iget-object v4, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    .line 323
    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 324
    iget-object v3, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 326
    :cond_2
    iget-object v3, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1    # "nextIndex":I
    :cond_3
    :goto_1
    invoke-direct {p0}, Lc8/Mbo;->startFlipAnimation()V

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lc8/Mbo;->isResumed:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 99
    invoke-virtual {p0}, Lc8/Mbo;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    .line 100
    invoke-virtual {p0}, Lc8/Mbo;->getPageIndicator()Lc8/Peo;

    move-result-object v0

    iput-object v0, p0, Lc8/Mbo;->pageIndicator:Lc8/Peo;

    .line 101
    iget-object v0, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lc8/Mbo;->innerCoverPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 102
    iget-object v0, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0}, Lc8/Mbo;->initViewPagerScroll(Landroid/support/v4/view/ViewPager;)V

    .line 103
    return-void
.end method

.method public setAdapter(Lc8/Kbo;)V
    .locals 1
    .param p1, "adapter"    # Lc8/Kbo;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Mbo;->setAdapter(Lc8/Kbo;I)V

    .line 181
    return-void
.end method

.method public setAdapter(Lc8/Kbo;I)V
    .locals 4
    .param p1, "adapter"    # Lc8/Kbo;
    .param p2, "selectedIndex"    # I

    .prologue
    const/4 v3, 0x1

    .line 190
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/Kbo;->getActualCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p1}, Lc8/Kbo;->getActualCount()I

    move-result v0

    .line 194
    .local v0, "size":I
    if-le v0, v3, :cond_2

    .line 195
    add-int/lit16 v1, p2, 0x3e8

    mul-int/2addr v0, v1

    .line 197
    :cond_2
    new-instance v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lc8/Mbo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/Mbo;->fakeViewPage:Landroid/support/v4/view/ViewPager;

    .line 198
    iget-object v1, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 199
    iget-object v1, p0, Lc8/Mbo;->banner_view_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 200
    iget-object v1, p0, Lc8/Mbo;->pageIndicator:Lc8/Peo;

    if-eqz v1, :cond_3

    .line 201
    new-instance v1, Lc8/Lbo;

    iget-object v2, p1, Lc8/Kbo;->dataList:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lc8/Lbo;-><init>(Lc8/Mbo;Ljava/util/List;)V

    iput-object v1, p0, Lc8/Mbo;->fakeAdapter:Lc8/Lbo;

    .line 202
    iget-object v1, p0, Lc8/Mbo;->fakeViewPage:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lc8/Mbo;->fakeAdapter:Lc8/Lbo;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 203
    iget-object v1, p0, Lc8/Mbo;->pageIndicator:Lc8/Peo;

    iget-object v2, p0, Lc8/Mbo;->fakeViewPage:Landroid/support/v4/view/ViewPager;

    invoke-interface {v1, v2}, Lc8/Peo;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 205
    :cond_3
    iget-object v1, p0, Lc8/Mbo;->fakeAdapter:Lc8/Lbo;

    invoke-virtual {v1}, Lc8/Lbo;->getCount()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 207
    iget-wide v2, p0, Lc8/Mbo;->mFlipInterval:J

    invoke-direct {p0, v2, v3}, Lc8/Mbo;->startFlipAnimation(J)V

    goto :goto_0

    .line 209
    :cond_4
    iget-object v1, p0, Lc8/Mbo;->pageIndicator:Lc8/Peo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Mbo;->pageIndicator:Lc8/Peo;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lc8/Mbo;->pageIndicator:Lc8/Peo;

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFlipInterval(J)V
    .locals 1
    .param p1, "flipInterval"    # J

    .prologue
    .line 432
    iput-wide p1, p0, Lc8/Mbo;->mFlipInterval:J

    .line 433
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "onPageChangeListener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 440
    iput-object p1, p0, Lc8/Mbo;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 441
    return-void
.end method

.method public setResumed(Z)V
    .locals 1
    .param p1, "resumed"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lc8/Mbo;->isResumed:Z

    .line 231
    iget-boolean v0, p0, Lc8/Mbo;->isResumed:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lc8/Mbo;->startFlipAnimation()V

    .line 234
    :cond_0
    return-void
.end method
