.class public Lc8/GMg;
.super Ljava/lang/Object;
.source "ClickManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/FMg;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lc8/EMg;)V
    .locals 0
    .param p1, "x0"    # Lc8/EMg;

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/GMg;-><init>()V

    return-void
.end method

.method private getClickView(Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/StringBuilder;)Landroid/view/View;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 98
    move-object v3, p1

    .line 101
    .local v3, "tagView":Landroid/view/View;
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 102
    check-cast v4, Landroid/view/ViewGroup;

    .line 103
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 104
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "childView":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lc8/GMg;->isClickView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 106
    invoke-direct {p0, v0, p2, p3}, Lc8/GMg;->getClickView(Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/StringBuilder;)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "findView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    mul-int/2addr v5, v6

    .line 109
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    mul-int/2addr v6, v7

    if-gt v5, v6, :cond_0

    invoke-static {v1}, Lc8/HMg;->isViewHasTag(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    move-object v3, v1

    .line 114
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    mul-int/2addr v5, v6

    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    mul-int/2addr v6, v7

    if-gt v5, v6, :cond_1

    .line 116
    invoke-static {v1}, Lc8/HMg;->isViewHasTag(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .end local v1    # "findView":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    return-object v3
.end method

.method public static getInstance()Lc8/GMg;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lc8/FMg;->access$100()Lc8/GMg;

    move-result-object v0

    return-object v0
.end method

.method private handleViewClick(Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 72
    .local v3, "view":Landroid/view/View;
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ut/mini/UTPageHitHelper;->getCurrentPageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v3, p2, v1}, Lc8/GMg;->getClickView(Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/StringBuilder;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "clickView":Landroid/view/View;
    invoke-static {v0}, Lc8/HMg;->isViewHasTag(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lc8/EMg;

    invoke-direct {v4, p0, v1, v3}, Lc8/EMg;-><init>(Lc8/GMg;Ljava/lang/StringBuilder;Landroid/view/View;)V

    invoke-direct {v2, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 84
    .local v2, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    .line 87
    .end local v2    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    :cond_0
    const-string/jumbo v4, "time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lc8/SMg;->start:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/VMg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private isClickView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 129
    .local v0, "clickX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 130
    .local v1, "clickY":F
    const/4 v9, 0x2

    new-array v3, v9, [I

    .line 131
    .local v3, "location":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 132
    aget v5, v3, v8

    .line 133
    .local v5, "x":I
    aget v6, v3, v7

    .line 134
    .local v6, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 135
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 136
    .local v2, "height":I
    int-to-float v9, v5

    cmpg-float v9, v0, v9

    if-ltz v9, :cond_0

    add-int v9, v5, v4

    int-to-float v9, v9

    cmpl-float v9, v0, v9

    if-gtz v9, :cond_0

    int-to-float v9, v6

    cmpg-float v9, v1, v9

    if-ltz v9, :cond_0

    add-int v9, v6, v2

    int-to-float v9, v9

    cmpl-float v9, v1, v9

    if-lez v9, :cond_1

    :cond_0
    move v7, v8

    .line 140
    :cond_1
    return v7
.end method


# virtual methods
.method eventAspect(Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lc8/SMg;->start:J

    .line 44
    sget-boolean v2, Lc8/SMg;->omitOpen:Z

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    if-eqz p1, :cond_0

    .line 51
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper;->getCurrentPageName()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "pageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lc8/SMg;->clickBlackList:Ljava/util/List;

    if-eqz v2, :cond_2

    sget-object v2, Lc8/SMg;->clickBlackList:Ljava/util/List;

    .line 55
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lc8/SMg;->clickBlackList:Ljava/util/List;

    .line 56
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 62
    invoke-direct {p0, p1, p2}, Lc8/GMg;->handleViewClick(Landroid/app/Activity;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "th":Ljava/lang/Throwable;
    const-string/jumbo v2, "ClickManager"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/VMg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
