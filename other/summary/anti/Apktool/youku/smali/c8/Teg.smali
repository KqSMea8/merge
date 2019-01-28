.class public Lc8/Teg;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WXGesture.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Seg;
    }
.end annotation


# static fields
.field private static final CUR_EVENT:I = -0x1

.field public static final DOWN:Ljava/lang/String; = "down"

.field public static final END:Ljava/lang/String; = "end"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final MOVE:Ljava/lang/String; = "move"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final START:Ljava/lang/String; = "start"

.field private static final TAG:Ljava/lang/String; = "Gesture"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final UP:Ljava/lang/String; = "up"


# instance fields
.field private component:Lc8/tbg;

.field private globalEventOffset:Landroid/graphics/Point;

.field private globalOffset:Landroid/graphics/Point;

.field private globalRect:Landroid/graphics/Rect;

.field private locEventOffset:Landroid/graphics/PointF;

.field private locLeftTop:Landroid/graphics/PointF;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsPreventMoveEvent:Z

.field private mIsTouchEventConsumed:Z

.field private mParentOrientation:I

.field private mPendingPan:Lc8/Weg;

.field private panDownTime:J

.field private swipeDownTime:J


# direct methods
.method public constructor <init>(Lc8/tbg;Landroid/content/Context;)V
    .locals 6
    .param p1, "wxComponent"    # Lc8/tbg;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 68
    iput-wide v4, p0, Lc8/Teg;->swipeDownTime:J

    .line 69
    iput-wide v4, p0, Lc8/Teg;->panDownTime:J

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lc8/Teg;->mParentOrientation:I

    .line 72
    iput-boolean v2, p0, Lc8/Teg;->mIsPreventMoveEvent:Z

    .line 73
    iput-boolean v2, p0, Lc8/Teg;->mIsTouchEventConsumed:Z

    .line 76
    iput-object p1, p0, Lc8/Teg;->component:Lc8/tbg;

    .line 77
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lc8/Teg;->globalRect:Landroid/graphics/Rect;

    .line 78
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lc8/Teg;->globalOffset:Landroid/graphics/Point;

    .line 79
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lc8/Teg;->globalEventOffset:Landroid/graphics/Point;

    .line 80
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lc8/Teg;->locEventOffset:Landroid/graphics/PointF;

    .line 81
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lc8/Teg;->locLeftTop:Landroid/graphics/PointF;

    .line 82
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lc8/Seg;

    invoke-direct {v2}, Lc8/Seg;-><init>()V

    invoke-direct {v1, p2, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lc8/Teg;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    invoke-virtual {p1}, Lc8/tbg;->getParentScroller()Lc8/ebg;

    move-result-object v0

    .line 84
    .local v0, "parentScrollable":Lc8/ebg;
    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Lc8/ebg;->getOrientation()I

    move-result v1

    iput v1, p0, Lc8/Teg;->mParentOrientation:I

    .line 87
    :cond_0
    return-void
.end method

.method private containsSimplePan()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lc8/Teg;->component:Lc8/tbg;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_START:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v0, v1}, Lc8/tbg;->containsGesture(Lc8/Weg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Teg;->component:Lc8/tbg;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v0, v1}, Lc8/tbg;->containsGesture(Lc8/Weg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Teg;->component:Lc8/tbg;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_END:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v0, v1}, Lc8/tbg;->containsGesture(Lc8/Weg;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pos"    # I
    .param p3, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 266
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 268
    invoke-direct {p0, p1, p2, v0}, Lc8/Teg;->createJSONObject(Landroid/view/MotionEvent;II)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lc8/Teg;->isPointerNumChanged(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 272
    .local v3, "pointerIndex":I
    const/4 v4, -0x1

    invoke-direct {p0, p1, v4, v3}, Lc8/Teg;->createJSONObject(Landroid/view/MotionEvent;II)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v3    # "pointerIndex":I
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "changedTouches"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    if-eqz p3, :cond_2

    .line 277
    const-string/jumbo v4, "state"

    invoke-interface {v2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_2
    return-object v2
.end method

.method private createJSONObject(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p1, "screenXY"    # Landroid/graphics/PointF;
    .param p2, "pageXY"    # Landroid/graphics/PointF;
    .param p3, "pointerId"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 336
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "pageX"

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string/jumbo v1, "pageY"

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string/jumbo v1, "screenX"

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string/jumbo v1, "screenY"

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v1, "identifier"

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-object v0
.end method

.method private createJSONObject(Landroid/view/MotionEvent;II)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pos"    # I
    .param p3, "pointerIndex"    # I

    .prologue
    .line 315
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 316
    invoke-direct {p0, p1, p3}, Lc8/Teg;->getEventLocInPageCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object v0

    .line 317
    .local v0, "pageXY":Landroid/graphics/PointF;
    invoke-direct {p0, p1, p3}, Lc8/Teg;->getEventLocInScreenCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object v1

    .line 322
    .local v1, "screenXY":Landroid/graphics/PointF;
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1, v0, v2}, Lc8/Teg;->createJSONObject(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    return-object v2

    .line 319
    .end local v0    # "pageXY":Landroid/graphics/PointF;
    .end local v1    # "screenXY":Landroid/graphics/PointF;
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lc8/Teg;->getEventLocInPageCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object v0

    .line 320
    .restart local v0    # "pageXY":Landroid/graphics/PointF;
    invoke-direct {p0, p1, p3, p2}, Lc8/Teg;->getEventLocInScreenCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object v1

    .restart local v1    # "screenXY":Landroid/graphics/PointF;
    goto :goto_0
.end method

.method private createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0, p1}, Lc8/Teg;->getHistoricalEvents(Landroid/view/MotionEvent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, p2}, Lc8/Teg;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-object v0
.end method

.method private finishDisallowInterceptTouchEvent(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method private getEventLocInPageCoordinate(FF)Landroid/graphics/PointF;
    .locals 4
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lc8/Teg;->locEventOffset:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 430
    iget-object v0, p0, Lc8/Teg;->locLeftTop:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 431
    iget-object v0, p0, Lc8/Teg;->component:Lc8/tbg;

    iget-object v1, p0, Lc8/Teg;->locLeftTop:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lc8/tbg;->computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V

    .line 432
    iget-object v0, p0, Lc8/Teg;->locEventOffset:Landroid/graphics/PointF;

    iget-object v1, p0, Lc8/Teg;->locLeftTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lc8/Teg;->locLeftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    .line 433
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lc8/Teg;->locEventOffset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v2}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v1

    iget-object v2, p0, Lc8/Teg;->locEventOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v3}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v3

    invoke-static {v2, v3}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private getEventLocInPageCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 395
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lc8/Teg;->getEventLocInPageCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private getEventLocInPageCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "position"    # I

    .prologue
    .line 410
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    .line 411
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 412
    .local v0, "eventX":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 417
    .local v1, "eventY":F
    :goto_0
    invoke-direct {p0, v0, v1}, Lc8/Teg;->getEventLocInPageCoordinate(FF)Landroid/graphics/PointF;

    move-result-object v2

    return-object v2

    .line 414
    .end local v0    # "eventX":F
    .end local v1    # "eventY":F
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    .line 415
    .restart local v0    # "eventX":F
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v1

    .restart local v1    # "eventY":F
    goto :goto_0
.end method

.method private getEventLocInScreenCoordinate(FF)Landroid/graphics/PointF;
    .locals 4
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v0, p0, Lc8/Teg;->globalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 383
    iget-object v0, p0, Lc8/Teg;->globalOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 384
    iget-object v0, p0, Lc8/Teg;->globalEventOffset:Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 385
    iget-object v0, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lc8/Teg;->globalRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lc8/Teg;->globalOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 386
    iget-object v0, p0, Lc8/Teg;->globalEventOffset:Landroid/graphics/Point;

    iget-object v1, p0, Lc8/Teg;->globalOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lc8/Teg;->globalOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 387
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lc8/Teg;->globalEventOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v2}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v1

    iget-object v2, p0, Lc8/Teg;->globalEventOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v3}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v3

    invoke-static {v2, v3}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private getEventLocInScreenCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 348
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lc8/Teg;->getEventLocInScreenCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private getEventLocInScreenCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "position"    # I

    .prologue
    .line 363
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    .line 364
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 365
    .local v0, "eventX":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 370
    .local v1, "eventY":F
    :goto_0
    invoke-direct {p0, v0, v1}, Lc8/Teg;->getEventLocInScreenCoordinate(FF)Landroid/graphics/PointF;

    move-result-object v2

    return-object v2

    .line 367
    .end local v0    # "eventX":F
    .end local v1    # "eventY":F
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    .line 368
    .restart local v0    # "eventX":F
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v1

    .restart local v1    # "eventY":F
    goto :goto_0
.end method

.method private getHistoricalEvents(Landroid/view/MotionEvent;)Ljava/util/List;
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 250
    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lc8/Teg;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 251
    .local v2, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "i":I
    .end local v2    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v1
.end method

.method private getPanEventAction(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 160
    :pswitch_0
    const-string/jumbo v0, "start"

    goto :goto_0

    .line 162
    :pswitch_1
    const-string/jumbo v0, "move"

    goto :goto_0

    .line 164
    :pswitch_2
    const-string/jumbo v0, "end"

    goto :goto_0

    .line 166
    :pswitch_3
    const-string/jumbo v0, "end"

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private handleMotionEvent(Lc8/Weg;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "WXGestureType"    # Lc8/Weg;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 213
    iget-object v3, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v3, p1}, Lc8/tbg;->containsGesture(Lc8/Weg;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lc8/Teg;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 216
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 218
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const/4 v3, 0x1

    .line 220
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handlePanMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 179
    iget-object v6, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    if-nez v6, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v4

    .line 182
    :cond_1
    const/4 v3, 0x0

    .line 183
    .local v3, "state":Ljava/lang/String;
    iget-object v6, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    sget-object v7, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    sget-object v7, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    if-ne v6, v7, :cond_3

    .line 184
    :cond_2
    invoke-direct {p0, p1}, Lc8/Teg;->getPanEventAction(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v3

    .line 188
    :cond_3
    iget-object v6, p0, Lc8/Teg;->component:Lc8/tbg;

    iget-object v7, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    invoke-virtual {v6, v7}, Lc8/tbg;->containsGesture(Lc8/Weg;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    iget-boolean v4, p0, Lc8/Teg;->mIsPreventMoveEvent:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "move"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    .line 190
    goto :goto_0

    .line 192
    :cond_4
    invoke-direct {p0, p1, v3}, Lc8/Teg;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 193
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 194
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lc8/Teg;->component:Lc8/tbg;

    iget-object v6, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 197
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v5, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_7

    .line 198
    :cond_6
    const/4 v4, 0x0

    iput-object v4, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    :cond_7
    move v4, v5

    .line 200
    goto :goto_0
.end method

.method private hasSameOrientationWithParent()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 98
    iget v1, p0, Lc8/Teg;->mParentOrientation:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/Teg;->component:Lc8/tbg;

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v1, v2}, Lc8/tbg;->containsGesture(Lc8/Weg;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lc8/Teg;->mParentOrientation:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lc8/Teg;->component:Lc8/tbg;

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v1, v2}, Lc8/tbg;->containsGesture(Lc8/Weg;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isParentScrollable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-object v2, p0, Lc8/Teg;->component:Lc8/tbg;

    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    iget-object v2, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v2}, Lc8/tbg;->getParentScroller()Lc8/ebg;

    move-result-object v0

    .line 94
    .local v0, "parentScrollable":Lc8/ebg;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc8/ebg;->isScrollable()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPointerNumChanged(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isTouchEventConsumedByAdvancedGesture()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lc8/Teg;->mIsTouchEventConsumed:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 449
    iget-object v1, p0, Lc8/Teg;->component:Lc8/tbg;

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->LONG_PRESS:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v1, v2}, Lc8/tbg;->containsGesture(Lc8/Weg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lc8/Teg;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 451
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v1}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v2

    iget-object v1, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->LONG_PRESS:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v1}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 455
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Teg;->mIsTouchEventConsumed:Z

    .line 457
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 464
    const/4 v6, 0x0

    .line 465
    .local v6, "result":Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 466
    :cond_0
    const/4 v7, 0x0

    .line 519
    :goto_0
    return v7

    .line 468
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 469
    .local v0, "dx":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 471
    .local v1, "dy":F
    cmpl-float v7, v0, v1

    if-lez v7, :cond_5

    .line 472
    sget-object v5, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 476
    .local v5, "possiblePan":Lc8/Weg;
    :goto_1
    iget-object v7, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    sget-object v8, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    sget-object v8, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    if-ne v7, v8, :cond_6

    .line 478
    :cond_2
    invoke-direct {p0, p2}, Lc8/Teg;->handlePanMotionEvent(Landroid/view/MotionEvent;)Z

    .line 479
    const/4 v6, 0x1

    .line 518
    :cond_3
    :goto_2
    iget-boolean v7, p0, Lc8/Teg;->mIsTouchEventConsumed:Z

    if-nez v7, :cond_4

    if-eqz v6, :cond_f

    :cond_4
    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lc8/Teg;->mIsTouchEventConsumed:Z

    move v7, v6

    .line 519
    goto :goto_0

    .line 474
    .end local v5    # "possiblePan":Lc8/Weg;
    :cond_5
    sget-object v5, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .restart local v5    # "possiblePan":Lc8/Weg;
    goto :goto_1

    .line 480
    :cond_6
    iget-object v7, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v7, v5}, Lc8/tbg;->containsGesture(Lc8/Weg;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 482
    iget-object v7, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v7}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_7

    .line 483
    const/4 v7, 0x1

    invoke-interface {v3, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 485
    :cond_7
    iget-object v7, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    if-eqz v7, :cond_8

    .line 486
    iget-object v7, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    invoke-direct {p0, v7, p2}, Lc8/Teg;->handleMotionEvent(Lc8/Weg;Landroid/view/MotionEvent;)Z

    .line 488
    :cond_8
    iput-object v5, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    .line 489
    iget-object v7, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const-string/jumbo v10, "start"

    invoke-direct {p0, p2, v9, v10}, Lc8/Teg;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 491
    const/4 v6, 0x1

    .line 492
    goto :goto_2

    .end local v3    # "p":Landroid/view/ViewParent;
    :cond_9
    invoke-direct {p0}, Lc8/Teg;->containsSimplePan()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 493
    iget-wide v8, p0, Lc8/Teg;->panDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_a

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lc8/Teg;->panDownTime:J

    .line 495
    sget-object v7, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_END:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    iput-object v7, p0, Lc8/Teg;->mPendingPan:Lc8/Weg;

    .line 496
    iget-object v7, p0, Lc8/Teg;->component:Lc8/tbg;

    sget-object v8, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_START:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v8}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lc8/Teg;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 502
    :goto_4
    const/4 v6, 0x1

    goto :goto_2

    .line 499
    :cond_a
    iget-object v7, p0, Lc8/Teg;->component:Lc8/tbg;

    sget-object v8, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v8}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct {p0, p2, v9, v10}, Lc8/Teg;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 503
    :cond_b
    iget-object v7, p0, Lc8/Teg;->component:Lc8/tbg;

    sget-object v8, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->SWIPE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v7, v8}, Lc8/tbg;->containsGesture(Lc8/Weg;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 504
    iget-wide v8, p0, Lc8/Teg;->swipeDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lc8/Teg;->swipeDownTime:J

    .line 506
    const/4 v7, 0x0

    invoke-direct {p0, p2, v7}, Lc8/Teg;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 507
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 508
    .local v4, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    .line 509
    const-string/jumbo v8, "direction"

    const/4 v7, 0x0

    cmpl-float v7, p3, v7

    if-lez v7, :cond_c

    const-string/jumbo v7, "left"

    :goto_5
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :goto_6
    iget-object v7, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v7}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v7

    iget-object v8, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v8}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v8

    invoke-interface {v8}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->SWIPE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v9}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v4}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 515
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 509
    :cond_c
    const-string/jumbo v7, "right"

    goto :goto_5

    .line 511
    :cond_d
    const-string/jumbo v8, "direction"

    const/4 v7, 0x0

    cmpl-float v7, p4, v7

    if-lez v7, :cond_e

    const-string/jumbo v7, "up"

    :goto_7
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_e
    const-string/jumbo v7, "down"

    goto :goto_7

    .line 518
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 118
    :try_start_0
    iget-object v4, p0, Lc8/Teg;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 119
    .local v2, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 153
    .end local v2    # "result":Z
    :goto_0
    :pswitch_0
    return v2

    .line 122
    .restart local v2    # "result":Z
    :pswitch_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lc8/Teg;->mIsTouchEventConsumed:Z

    .line 127
    invoke-direct {p0}, Lc8/Teg;->hasSameOrientationWithParent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lc8/Teg;->isParentScrollable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    iget-object v4, p0, Lc8/Teg;->component:Lc8/tbg;

    invoke-virtual {v4}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "p":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 130
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 133
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_0
    sget-object v4, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_DOWN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v4, p2}, Lc8/Teg;->handleMotionEvent(Lc8/Weg;Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 134
    goto :goto_0

    .line 136
    :pswitch_2
    sget-object v4, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v4, p2}, Lc8/Teg;->handleMotionEvent(Lc8/Weg;Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 137
    goto :goto_0

    .line 140
    :pswitch_3
    invoke-direct {p0, p1}, Lc8/Teg;->finishDisallowInterceptTouchEvent(Landroid/view/View;)V

    .line 141
    sget-object v4, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_UP:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v4, p2}, Lc8/Teg;->handleMotionEvent(Lc8/Weg;Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 142
    invoke-direct {p0, p2}, Lc8/Teg;->handlePanMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 143
    goto :goto_0

    .line 145
    :pswitch_4
    invoke-direct {p0, p1}, Lc8/Teg;->finishDisallowInterceptTouchEvent(Landroid/view/View;)V

    .line 146
    sget-object v4, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_CANCEL:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v4, p2}, Lc8/Teg;->handleMotionEvent(Lc8/Weg;Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 147
    invoke-direct {p0, p2}, Lc8/Teg;->handlePanMotionEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 151
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Gesture RunTime Error "

    invoke-static {v4, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 153
    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setPreventMoveEvent(Z)V
    .locals 0
    .param p1, "preventMoveEvent"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lc8/Teg;->mIsPreventMoveEvent:Z

    .line 104
    return-void
.end method
