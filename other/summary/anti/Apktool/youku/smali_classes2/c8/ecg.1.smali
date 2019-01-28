.class public Lc8/ecg;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliderOnScrollListener"
.end annotation


# instance fields
.field private lastPositionOffset:F

.field private selectedPosition:I

.field private target:Lc8/gcg;


# direct methods
.method public constructor <init>(Lc8/gcg;)V
    .locals 1
    .param p1, "target"    # Lc8/gcg;

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/high16 v0, 0x42c60000    # 99.0f

    iput v0, p0, Lc8/ecg;->lastPositionOffset:F

    .line 447
    iput-object p1, p0, Lc8/ecg;->target:Lc8/gcg;

    .line 448
    iget-object v0, p1, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->superGetCurrentItem()I

    move-result v0

    iput v0, p0, Lc8/ecg;->selectedPosition:I

    .line 449
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 490
    packed-switch p1, :pswitch_data_0

    .line 502
    :goto_0
    return-void

    .line 492
    :pswitch_0
    const/high16 v0, 0x42c60000    # 99.0f

    iput v0, p0, Lc8/ecg;->lastPositionOffset:F

    .line 493
    iget-object v0, p0, Lc8/ecg;->target:Lc8/gcg;

    const-string/jumbo v1, "scrollend"

    invoke-virtual {v0, v1}, Lc8/gcg;->fireEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :pswitch_1
    iget-object v0, p0, Lc8/ecg;->target:Lc8/gcg;

    const-string/jumbo v1, "scrollstart"

    invoke-virtual {v0, v1}, Lc8/gcg;->fireEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v4, 0x1

    .line 453
    iget v2, p0, Lc8/ecg;->lastPositionOffset:F

    const/high16 v3, 0x42c60000    # 99.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 454
    iput p2, p0, Lc8/ecg;->lastPositionOffset:F

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget v2, p0, Lc8/ecg;->lastPositionOffset:F

    sub-float v1, p2, v2

    .line 460
    .local v1, "offset":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lc8/ecg;->target:Lc8/gcg;

    invoke-static {v3}, Lc8/gcg;->access$000(Lc8/gcg;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 461
    iget v2, p0, Lc8/ecg;->selectedPosition:I

    if-ne p1, v2, :cond_3

    .line 463
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 464
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "offsetXRatio"

    neg-float v3, p2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v2, p0, Lc8/ecg;->target:Lc8/gcg;

    const-string/jumbo v3, "scroll"

    invoke-virtual {v2, v3, v0}, Lc8/gcg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 472
    .end local v0    # "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_1
    iput p2, p0, Lc8/ecg;->lastPositionOffset:F

    goto :goto_0

    .line 466
    :cond_3
    iget v2, p0, Lc8/ecg;->selectedPosition:I

    if-ge p1, v2, :cond_2

    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 469
    .restart local v0    # "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "offsetXRatio"

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v2, p0, Lc8/ecg;->target:Lc8/gcg;

    const-string/jumbo v3, "scroll"

    invoke-virtual {v2, v3, v0}, Lc8/gcg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 478
    iput p1, p0, Lc8/ecg;->selectedPosition:I

    .line 479
    return-void
.end method
