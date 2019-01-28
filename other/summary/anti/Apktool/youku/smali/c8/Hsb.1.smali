.class public Lc8/Hsb;
.super Lc8/Arb;
.source "ExpressionTouchHandler.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private isFlickGestureAvailable:Z

.field private isPanGestureAvailable:Z

.field private mDownX:F

.field private mDownY:F

.field private mDx:F

.field private mDy:F

.field private mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lc8/nVf;)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lc8/Arb;-><init>(Lc8/nVf;)V

    .line 39
    invoke-virtual {p1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lc8/Hsb;->mGestureDetector:Landroid/view/GestureDetector;

    .line 41
    return-void
.end method

.method private fireEventByState(Ljava/lang/String;FF)V
    .locals 10
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 262
    iget-object v1, p0, Lc8/Hsb;->mCallback:Lc8/EWf;

    if-eqz v1, :cond_0

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 264
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget v1, Lc8/UUf;->sDefaultWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-double v6, v1

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-double v8, v1

    div-double v2, v6, v8

    .line 266
    .local v2, "x":D
    sget v1, Lc8/UUf;->sDefaultWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-double v6, v1

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-double v8, v1

    div-double v4, v6, v8

    .line 267
    .local v4, "y":D
    const-string/jumbo v1, "deltaX"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string/jumbo v1, "deltaY"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lc8/Hsb;->mCallback:Lc8/EWf;

    invoke-interface {v1, v0}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const-string/jumbo v1, "ExpressionBinding"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ">>>>>>>>>>>fire event:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v0    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "x":D
    .end local v4    # "y":D
    :cond_0
    return-void
.end method


# virtual methods
.method isFlickGestureAvailable()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lc8/Hsb;->isFlickGestureAvailable:Z

    return v0
.end method

.method isPanGestureAvailable()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lc8/Hsb;->isPanGestureAvailable:Z

    return v0
.end method

.method public onActivityPause()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public onActivityResume()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public onBindExpression(Ljava/lang/String;Ljava/util/Map;Lc8/ysb;Ljava/util/List;Lc8/EWf;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exitExpressionPair"    # Lc8/ysb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/ysb;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p2, "globalConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-super/range {p0 .. p5}, Lc8/Arb;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Lc8/ysb;Ljava/util/List;Lc8/EWf;)V

    .line 214
    return-void
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 185
    iget-object v2, p0, Lc8/Hsb;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lc8/Hsb;->mInstanceId:Ljava/lang/String;

    .line 186
    .local v0, "instanceId":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p1}, Lc8/Cyb;->findViewByRef(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 187
    .local v1, "sourceView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 188
    const-string/jumbo v2, "ExpressionBinding"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ExpressionTouchHandler] onCreate failed. sourceView not found:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v2, 0x0

    .line 195
    :goto_1
    return v2

    .line 185
    .end local v0    # "instanceId":Ljava/lang/String;
    .end local v1    # "sourceView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lc8/Hsb;->mAnchorInstanceId:Ljava/lang/String;

    goto :goto_0

    .line 191
    .restart local v0    # "instanceId":Ljava/lang/String;
    .restart local v1    # "sourceView":Landroid/view/View;
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    const-string/jumbo v2, "ExpressionBinding"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ExpressionTouchHandler] onCreate success. {source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lc8/Hsb;->mExpressionHoldersMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lc8/Hsb;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 245
    iput-object v1, p0, Lc8/Hsb;->mExpressionHoldersMap:Ljava/util/Map;

    .line 247
    :cond_0
    iput-object v1, p0, Lc8/Hsb;->mExitExpressionPair:Lc8/ysb;

    .line 248
    iput-object v1, p0, Lc8/Hsb;->mCallback:Lc8/EWf;

    .line 249
    iput-boolean v2, p0, Lc8/Hsb;->isFlickGestureAvailable:Z

    .line 250
    iput-boolean v2, p0, Lc8/Hsb;->isPanGestureAvailable:Z

    .line 251
    iget-object v0, p0, Lc8/Hsb;->mCachedExpressionMap:Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;

    invoke-virtual {v0}, Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;->clear()V

    .line 252
    return-void
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    const/4 v4, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 228
    :goto_1
    invoke-virtual {p0}, Lc8/Hsb;->isPanGestureAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lc8/Hsb;->isFlickGestureAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 229
    iget-object v3, p0, Lc8/Hsb;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lc8/Hsb;->mInstanceId:Ljava/lang/String;

    .line 230
    .local v1, "instanceId":Ljava/lang/String;
    :goto_2
    invoke-static {v1, p1}, Lc8/Cyb;->findViewByRef(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, "hostView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 232
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    :cond_1
    const-string/jumbo v3, "ExpressionBinding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove touch listener success.["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v0    # "hostView":Landroid/view/View;
    .end local v1    # "instanceId":Ljava/lang/String;
    :goto_3
    return v2

    .line 218
    :sswitch_0
    const-string/jumbo v5, "pan"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "flick"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_0

    .line 220
    :pswitch_0
    invoke-virtual {p0, v3}, Lc8/Hsb;->setPanGestureAvailable(Z)V

    goto :goto_1

    .line 223
    :pswitch_1
    invoke-virtual {p0, v3}, Lc8/Hsb;->setFlickGestureAvailable(Z)V

    goto :goto_1

    .line 229
    :cond_2
    iget-object v1, p0, Lc8/Hsb;->mAnchorInstanceId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move v2, v3

    .line 237
    goto :goto_3

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b09d -> :sswitch_0
        0x5d00c0b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected onExit(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "internal_x"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 257
    .local v0, "deltaX":F
    const-string/jumbo v2, "internal_y"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 258
    .local v1, "deltaY":F
    const-string/jumbo v2, "exit"

    invoke-direct {p0, v2, v0, v1}, Lc8/Hsb;->fireEventByState(Ljava/lang/String;FF)V

    .line 259
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-boolean v0, p0, Lc8/Hsb;->isFlickGestureAvailable:Z

    if-nez v0, :cond_0

    .line 166
    :cond_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 159
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 120
    iget-boolean v7, p0, Lc8/Hsb;->isPanGestureAvailable:Z

    if-nez v7, :cond_0

    .line 121
    const-string/jumbo v7, "ExpressionBinding"

    const-string/jumbo v8, "pan gesture is not enabled"

    invoke-static {v7, v8}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v7, 0x0

    .line 154
    :goto_0
    return v7

    .line 126
    :cond_0
    if-nez p1, :cond_1

    .line 128
    iget v4, p0, Lc8/Hsb;->mDownX:F

    .line 129
    .local v4, "downX":F
    iget v5, p0, Lc8/Hsb;->mDownY:F

    .line 135
    .local v5, "downY":F
    :goto_1
    if-nez p2, :cond_2

    .line 136
    const/4 v7, 0x0

    goto :goto_0

    .line 131
    .end local v4    # "downX":F
    .end local v5    # "downY":F
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 132
    .restart local v4    # "downX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .restart local v5    # "downY":F
    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 140
    .local v0, "curX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 142
    .local v1, "curY":F
    sub-float v2, v0, v4

    .line 143
    .local v2, "deltaX":F
    sub-float v3, v1, v5

    .line 146
    .local v3, "deltaY":F
    :try_start_0
    iget-object v7, p0, Lc8/Hsb;->mScope:Ljava/util/Map;

    float-to-double v8, v2

    float-to-double v10, v3

    invoke-static {v7, v8, v9, v10, v11}, Lc8/otb;->applyXYToScope(Ljava/util/Map;DD)V

    .line 147
    iget-object v7, p0, Lc8/Hsb;->mExitExpressionPair:Lc8/ysb;

    iget-object v8, p0, Lc8/Hsb;->mScope:Ljava/util/Map;

    invoke-virtual {p0, v7, v8}, Lc8/Hsb;->evaluateExitExpression(Lc8/ysb;Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 148
    iget-object v7, p0, Lc8/Hsb;->mExpressionHoldersMap:Ljava/util/Map;

    iget-object v8, p0, Lc8/Hsb;->mScope:Ljava/util/Map;

    const-string/jumbo v9, "pan"

    invoke-virtual {p0, v7, v8, v9}, Lc8/Hsb;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_3
    :goto_2
    const/4 v7, 0x0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v6

    .line 151
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ExpressionBinding"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "runtime error\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 176
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 200
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_1
    return-void

    .line 200
    :sswitch_0
    const-string/jumbo v2, "pan"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "flick"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 202
    :pswitch_0
    invoke-virtual {p0, v1}, Lc8/Hsb;->setPanGestureAvailable(Z)V

    goto :goto_1

    .line 205
    :pswitch_1
    invoke-virtual {p0, v1}, Lc8/Hsb;->setFlickGestureAvailable(Z)V

    goto :goto_1

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b09d -> :sswitch_0
        0x5d00c0b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 113
    :goto_0
    iget-object v1, p0, Lc8/Hsb;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 64
    :pswitch_0
    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lc8/Hsb;->mDownX:F

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lc8/Hsb;->mDownY:F

    .line 66
    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lc8/Hsb;->fireEventByState(Ljava/lang/String;FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ExpressionBinding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runtime error\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    iget v1, p0, Lc8/Hsb;->mDownX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lc8/Hsb;->mDownY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lc8/Hsb;->mDownX:F

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lc8/Hsb;->mDownY:F

    .line 75
    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lc8/Hsb;->fireEventByState(Ljava/lang/String;FF)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lc8/Hsb;->mDownX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lc8/Hsb;->mDx:F

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lc8/Hsb;->mDownY:F

    sub-float/2addr v1, v2

    iput v1, p0, Lc8/Hsb;->mDy:F

    goto :goto_0

    .line 88
    :pswitch_2
    const/4 v1, 0x0

    iput v1, p0, Lc8/Hsb;->mDownX:F

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lc8/Hsb;->mDownY:F

    .line 90
    invoke-virtual {p0}, Lc8/Hsb;->clearExpressions()V

    .line 91
    const-string/jumbo v1, "end"

    iget v2, p0, Lc8/Hsb;->mDx:F

    iget v3, p0, Lc8/Hsb;->mDy:F

    invoke-direct {p0, v1, v2, v3}, Lc8/Hsb;->fireEventByState(Ljava/lang/String;FF)V

    .line 94
    const/4 v1, 0x0

    iput v1, p0, Lc8/Hsb;->mDx:F

    .line 95
    const/4 v1, 0x0

    iput v1, p0, Lc8/Hsb;->mDy:F

    goto/16 :goto_0

    .line 101
    :pswitch_3
    const/4 v1, 0x0

    iput v1, p0, Lc8/Hsb;->mDownX:F

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lc8/Hsb;->mDownY:F

    .line 103
    invoke-virtual {p0}, Lc8/Hsb;->clearExpressions()V

    .line 104
    const-string/jumbo v1, "cancel"

    iget v2, p0, Lc8/Hsb;->mDx:F

    iget v3, p0, Lc8/Hsb;->mDy:F

    invoke-direct {p0, v1, v2, v3}, Lc8/Hsb;->fireEventByState(Ljava/lang/String;FF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method setFlickGestureAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lc8/Hsb;->isFlickGestureAvailable:Z

    .line 49
    return-void
.end method

.method setPanGestureAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lc8/Hsb;->isPanGestureAvailable:Z

    .line 45
    return-void
.end method
