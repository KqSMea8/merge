.class public Lc8/nVf;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lc8/MUf;
.implements Lc8/pYf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/kVf;,
        Lc8/mVf;,
        Lc8/lVf;
    }
.end annotation


# static fields
.field public static final BUNDLE_URL:Ljava/lang/String; = "bundleUrl"

.field private static volatile mViewPortWidth:I


# instance fields
.field private enableLayerType:Z

.field private isCommit:Z

.field private isDestroy:Z

.field private volatile isPreRenderMode:Z

.field private mBundleUrl:Ljava/lang/String;

.field private mComponentObserver:Lc8/LUf;

.field mContext:Landroid/content/Context;

.field private mCreateInstance:Z

.field private mCurrentGround:Z

.field public mEnd:Z

.field public mExecJSTraceId:I

.field private mFlatGUIContext:Lc8/Gdg;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

.field private mGlobalEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInstanceId:Ljava/lang/String;

.field private mInstanceViewPortWidth:I

.field private mLastRefreshData:Lc8/PXf;

.field private mLayoutFinishListener:Lc8/SUf;

.field private mMaxDeepLayer:I

.field private mNativeInvokeHelper:Lc8/JWf;

.field private mNeedReLoad:Z

.field private mNeedValidate:Z

.field private mNestedInstanceInterceptor:Lc8/kVf;

.field private mRefreshStartTime:J

.field private mRenderContainer:Lc8/TUf;

.field private mRenderListener:Lc8/NUf;

.field public mRenderStartNanos:J

.field public mRenderStartTime:J

.field private mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

.field private mRendered:Z

.field private mRootComp:Lc8/tbg;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mStatisticsListener:Lc8/OUf;

.field private mUserTrackAdapter:Lc8/HVf;

.field private mUserTrackParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/lVf;",
            ">;"
        }
    .end annotation
.end field

.field private mWXPerformance:Lc8/OXf;

.field private mWXScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/AXf;",
            ">;"
        }
    .end annotation
.end field

.field private mWXScrollViewListener:Lc8/weg;

.field public measureTimes:[J

.field public mwxDims:[Ljava/lang/String;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public templateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackComponent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0x2ee

    sput v0, Lc8/nVf;->mViewPortWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v1, p0, Lc8/nVf;->mEnd:Z

    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/nVf;->mBundleUrl:Ljava/lang/String;

    .line 115
    iput-boolean v1, p0, Lc8/nVf;->isDestroy:Z

    .line 118
    iput-boolean v1, p0, Lc8/nVf;->isCommit:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 121
    iput-boolean v2, p0, Lc8/nVf;->enableLayerType:Z

    .line 122
    iput-boolean v1, p0, Lc8/nVf;->mNeedValidate:Z

    .line 123
    iput-boolean v1, p0, Lc8/nVf;->mNeedReLoad:Z

    .line 125
    const/16 v0, 0x2ee

    iput v0, p0, Lc8/nVf;->mInstanceViewPortWidth:I

    .line 126
    new-instance v0, Lc8/Gdg;

    invoke-direct {v0}, Lc8/Gdg;-><init>()V

    iput-object v0, p0, Lc8/nVf;->mFlatGUIContext:Lc8/Gdg;

    .line 130
    invoke-static {}, Lc8/mag;->nextId()I

    move-result v0

    iput v0, p0, Lc8/nVf;->mExecJSTraceId:I

    .line 135
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lc8/nVf;->mwxDims:[Ljava/lang/String;

    .line 136
    new-array v0, v3, [J

    iput-object v0, p0, Lc8/nVf;->measureTimes:[J

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/nVf;->responseHeaders:Ljava/util/Map;

    .line 144
    sget-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v0, p0, Lc8/nVf;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 167
    iput-boolean v1, p0, Lc8/nVf;->mCurrentGround:Z

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/nVf;->mVisibleListeners:Ljava/util/List;

    .line 1148
    iput-boolean v2, p0, Lc8/nVf;->mCreateInstance:Z

    .line 1428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/nVf;->mGlobalEvents:Ljava/util/HashMap;

    .line 268
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->generateInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/nVf;->mInstanceId:Ljava/lang/String;

    .line 269
    invoke-virtual {p0, p1}, Lc8/nVf;->init(Landroid/content/Context;)V

    .line 270
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v1, p0, Lc8/nVf;->mEnd:Z

    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/nVf;->mBundleUrl:Ljava/lang/String;

    .line 115
    iput-boolean v1, p0, Lc8/nVf;->isDestroy:Z

    .line 118
    iput-boolean v1, p0, Lc8/nVf;->isCommit:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 121
    iput-boolean v2, p0, Lc8/nVf;->enableLayerType:Z

    .line 122
    iput-boolean v1, p0, Lc8/nVf;->mNeedValidate:Z

    .line 123
    iput-boolean v1, p0, Lc8/nVf;->mNeedReLoad:Z

    .line 125
    const/16 v0, 0x2ee

    iput v0, p0, Lc8/nVf;->mInstanceViewPortWidth:I

    .line 126
    new-instance v0, Lc8/Gdg;

    invoke-direct {v0}, Lc8/Gdg;-><init>()V

    iput-object v0, p0, Lc8/nVf;->mFlatGUIContext:Lc8/Gdg;

    .line 130
    invoke-static {}, Lc8/mag;->nextId()I

    move-result v0

    iput v0, p0, Lc8/nVf;->mExecJSTraceId:I

    .line 135
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lc8/nVf;->mwxDims:[Ljava/lang/String;

    .line 136
    new-array v0, v3, [J

    iput-object v0, p0, Lc8/nVf;->measureTimes:[J

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/nVf;->responseHeaders:Ljava/util/Map;

    .line 144
    sget-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v0, p0, Lc8/nVf;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 167
    iput-boolean v1, p0, Lc8/nVf;->mCurrentGround:Z

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/nVf;->mVisibleListeners:Ljava/util/List;

    .line 1148
    iput-boolean v2, p0, Lc8/nVf;->mCreateInstance:Z

    .line 1428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/nVf;->mGlobalEvents:Ljava/util/HashMap;

    .line 277
    iput-object p2, p0, Lc8/nVf;->mInstanceId:Ljava/lang/String;

    .line 278
    invoke-virtual {p0, p1}, Lc8/nVf;->init(Landroid/content/Context;)V

    .line 279
    return-void
.end method

.method static synthetic access$102(Lc8/nVf;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/nVf;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lc8/nVf;->isPreRenderMode:Z

    return p1
.end method

.method static synthetic access$200(Lc8/nVf;)Lc8/TUf;
    .locals 1
    .param p0, "x0"    # Lc8/nVf;

    .prologue
    .line 99
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    return-object v0
.end method

.method static synthetic access$300(Lc8/nVf;)Lc8/NUf;
    .locals 1
    .param p0, "x0"    # Lc8/nVf;

    .prologue
    .line 99
    iget-object v0, p0, Lc8/nVf;->mRenderListener:Lc8/NUf;

    return-object v0
.end method

.method static synthetic access$400(Lc8/nVf;)Lc8/OUf;
    .locals 1
    .param p0, "x0"    # Lc8/nVf;

    .prologue
    .line 99
    iget-object v0, p0, Lc8/nVf;->mStatisticsListener:Lc8/OUf;

    return-object v0
.end method

.method static synthetic access$500(Lc8/nVf;)Lc8/HVf;
    .locals 1
    .param p0, "x0"    # Lc8/nVf;

    .prologue
    .line 99
    iget-object v0, p0, Lc8/nVf;->mUserTrackAdapter:Lc8/HVf;

    return-object v0
.end method

.method static synthetic access$600(Lc8/nVf;)Lc8/OXf;
    .locals 1
    .param p0, "x0"    # Lc8/nVf;

    .prologue
    .line 99
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    return-object v0
.end method

.method static synthetic access$700(Lc8/nVf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/nVf;

    .prologue
    .line 99
    iget-object v0, p0, Lc8/nVf;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lc8/nVf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/nVf;

    .prologue
    .line 99
    iget-object v0, p0, Lc8/nVf;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method private assembleFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 625
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private destroyView(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 1252
    :try_start_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 1253
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 1254
    .local v1, "cViewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1255
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/nVf;->destroyView(Landroid/view/View;)V

    .line 1254
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1258
    :cond_0
    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 1260
    const-string/jumbo v4, "mChildrenCount"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lc8/ygg;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1263
    .end local v1    # "cViewGroup":Landroid/view/ViewGroup;
    .end local v3    # "index":I
    :cond_1
    instance-of v4, p1, Lc8/uXf;

    if-eqz v4, :cond_2

    .line 1264
    check-cast p1, Lc8/uXf;

    .end local p1    # "rootView":Landroid/view/View;
    invoke-interface {p1}, Lc8/uXf;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    :cond_2
    :goto_1
    return-void

    .line 1266
    :catch_0
    move-exception v2

    .line 1267
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WXSDKInstance destroyView Exception: "

    invoke-static {v4, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private ensureRenderArchor()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 451
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Lc8/TUf;

    invoke-virtual {p0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/TUf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    .line 454
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lc8/TUf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/TUf;->setBackgroundColor(I)V

    .line 456
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    invoke-virtual {v0, p0}, Lc8/TUf;->setSDKInstance(Lc8/nVf;)V

    .line 457
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    invoke-virtual {v0, p0}, Lc8/TUf;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 460
    :cond_0
    return-void
.end method

.method public static getViewPortWidth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    sget v0, Lc8/nVf;->mViewPortWidth:I

    return v0
.end method

.method private renderByUrlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 12
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 518
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lc8/nVf;->ensureRenderArchor()V

    .line 519
    invoke-direct {p0, p1, p2}, Lc8/nVf;->wrapPageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 520
    iput-object p2, p0, Lc8/nVf;->mBundleUrl:Ljava/lang/String;

    .line 521
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getValidateProcessor()Lc8/iXf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 522
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getValidateProcessor()Lc8/iXf;

    move-result-object v1

    iget-object v2, p0, Lc8/nVf;->mBundleUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Lc8/iXf;->needValidate(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lc8/nVf;->mNeedValidate:Z

    .line 526
    :cond_0
    move-object v3, p3

    .local v3, "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p3, :cond_1

    .line 527
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 529
    .restart local v3    # "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string/jumbo v1, "bundleUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 530
    const-string/jumbo v1, "bundleUrl"

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 534
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 535
    invoke-direct {p0, v10}, Lc8/nVf;->assembleFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lc8/qgg;->loadFileOrAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/nVf;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 551
    :goto_0
    return-void

    .line 539
    :cond_3
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getIWXHttpAdapter()Lc8/DVf;

    move-result-object v9

    .line 541
    .local v9, "adapter":Lc8/DVf;
    new-instance v11, Lc8/QXf;

    invoke-direct {v11}, Lc8/QXf;-><init>()V

    .line 542
    .local v11, "wxRequest":Lc8/QXf;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "bundle"

    invoke-virtual {p0, v1, v2}, Lc8/nVf;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lc8/QXf;->url:Ljava/lang/String;

    .line 543
    iget-object v1, v11, Lc8/QXf;->paramMap:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 544
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v11, Lc8/QXf;->paramMap:Ljava/util/Map;

    .line 546
    :cond_4
    iget-object v1, v11, Lc8/QXf;->paramMap:Ljava/util/Map;

    const-string/jumbo v2, "user-agent"

    iget-object v4, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    invoke-static {}, Lc8/UUf;->getConfig()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/cag;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v0, Lc8/mVf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Lc8/mVf;-><init>(Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;JLc8/cVf;)V

    .line 549
    .local v0, "httpListener":Lc8/mVf;
    invoke-virtual {v0, p0}, Lc8/mVf;->setSDKInstance(Lc8/nVf;)V

    .line 550
    invoke-interface {v9, v11, v0}, Lc8/DVf;->sendRequest(Lc8/QXf;Lc8/CVf;)V

    goto :goto_0
.end method

.method private renderInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 7
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lc8/nVf;->mRendered:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const-string/jumbo v0, "WXSDKInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start render page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    const-string/jumbo v0, "executeBundleJS"

    iget-object v1, p0, Lc8/nVf;->mInstanceId:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v6

    .line 475
    .local v6, "traceEvent":Lc8/kag;
    iget v0, p0, Lc8/nVf;->mExecJSTraceId:I

    iput v0, v6, Lc8/kag;->traceId:I

    .line 476
    iget-object v0, p0, Lc8/nVf;->mInstanceId:Ljava/lang/String;

    iput-object v0, v6, Lc8/kag;->iid:Ljava/lang/String;

    .line 477
    const-string/jumbo v0, "JSThread"

    iput-object v0, v6, Lc8/kag;->tname:Ljava/lang/String;

    .line 478
    const-string/jumbo v0, "B"

    iput-object v0, v6, Lc8/kag;->ph:Ljava/lang/String;

    .line 479
    invoke-virtual {v6}, Lc8/kag;->submit()V

    .line 480
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/nVf;->mRenderStartNanos:J

    .line 483
    .end local v6    # "traceEvent":Lc8/kag;
    :cond_2
    invoke-direct {p0}, Lc8/nVf;->ensureRenderArchor()V

    .line 486
    move-object v3, p3

    .local v3, "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p3, :cond_3

    .line 487
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 490
    .restart local v3    # "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    sget-boolean v0, Lc8/UUf;->sDynamicMode:Z

    if-eqz v0, :cond_4

    sget-object v0, Lc8/UUf;->sDynamicUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "dynamicMode"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 491
    const-string/jumbo v0, "dynamicMode"

    const-string/jumbo v1, "true"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v2, Lc8/UUf;->sDynamicUrl:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/nVf;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    goto :goto_0

    .line 496
    :cond_4
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iput-object p1, v0, Lc8/OXf;->pageName:Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    float-to-double v4, v1

    iput-wide v4, v0, Lc8/OXf;->JSTemplateSize:D

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/nVf;->mRenderStartTime:J

    .line 500
    iput-object p5, p0, Lc8/nVf;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 502
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    const-string/jumbo v1, "wx_current_url"

    invoke-virtual {v0, v1, p1}, Lc8/pVf;->setCrashInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0, p0, p2, v3, p4}, Lc8/pVf;->createInstance(Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/nVf;->mRendered:Z

    .line 507
    iget-object v0, p0, Lc8/nVf;->mBundleUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iput-object p1, p0, Lc8/nVf;->mBundleUrl:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private updateRootComponentStyle(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "style"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 1384
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1385
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lc8/KYf;

    invoke-direct {v1}, Lc8/KYf;-><init>()V

    .line 1386
    .local v1, "task":Lc8/KYf;
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/KYf;->instanceId:Ljava/lang/String;

    .line 1387
    iget-object v2, v1, Lc8/KYf;->args:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1388
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lc8/KYf;->args:Ljava/util/List;

    .line 1390
    :cond_0
    iget-object v2, v1, Lc8/KYf;->args:Ljava/util/List;

    const-string/jumbo v3, "_root"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1391
    iget-object v2, v1, Lc8/KYf;->args:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1392
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1393
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1394
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/EYf;->sendMessage(Landroid/os/Message;)V

    .line 1395
    return-void
.end method

.method private wrapPageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 607
    const-string/jumbo v2, "default"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    move-object p1, p2

    .line 610
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 611
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 612
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 613
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 614
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 615
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 616
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 621
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected addEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 1469
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1472
    :cond_1
    iget-object v1, p0, Lc8/nVf;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1473
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 1474
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1475
    .restart local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lc8/nVf;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnInstanceVisibleListener(Lc8/lVf;)V
    .locals 1
    .param p1, "l"    # Lc8/lVf;

    .prologue
    .line 303
    iget-object v0, p0, Lc8/nVf;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public addUserTrackParameter(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 1550
    iget-object v0, p0, Lc8/nVf;->mUserTrackParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1551
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/nVf;->mUserTrackParams:Ljava/util/Map;

    .line 1553
    :cond_0
    iget-object v0, p0, Lc8/nVf;->mUserTrackParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    return-void
.end method

.method public applyUpdateTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1202
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v0, Lc8/OXf;->applyUpdateTime:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Lc8/OXf;->applyUpdateTime:J

    .line 1203
    return-void
.end method

.method public batchTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1195
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v0, Lc8/OXf;->batchTime:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Lc8/OXf;->batchTime:J

    .line 1196
    return-void
.end method

.method public callNativeTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1157
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v0, Lc8/OXf;->callNativeTime:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Lc8/OXf;->callNativeTime:J

    .line 1158
    return-void
.end method

.method public checkModuleEventRegistered(Ljava/lang/String;Lc8/MXf;)Z
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "module"    # Lc8/MXf;

    .prologue
    .line 1532
    if-eqz p2, :cond_0

    .line 1533
    invoke-virtual {p2, p1}, Lc8/MXf;->getEventCallbacks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1534
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1535
    const/4 v1, 0x1

    .line 1538
    .end local v0    # "events":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearUserTrackParameters()V
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lc8/nVf;->mUserTrackParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lc8/nVf;->mUserTrackParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1560
    :cond_0
    return-void
.end method

.method public commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/taobao/weex/common/WXErrorCode;

    .prologue
    .line 1220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1224
    :cond_1
    new-instance v0, Lc8/jVf;

    invoke-direct {v0, p0, p2, p1}, Lc8/jVf;-><init>(Lc8/nVf;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/nVf;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public createInstanceFinished(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 1211
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1212
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iput-wide p1, v0, Lc8/OXf;->communicateTime:J

    .line 1214
    :cond_0
    return-void
.end method

.method public final createNestedInstance(Lc8/dbg;)Lc8/nVf;
    .locals 2
    .param p1, "container"    # Lc8/dbg;

    .prologue
    .line 291
    invoke-virtual {p0}, Lc8/nVf;->newNestedInstance()Lc8/nVf;

    move-result-object v0

    .line 292
    .local v0, "sdkInstance":Lc8/nVf;
    iget-object v1, p0, Lc8/nVf;->mNestedInstanceInterceptor:Lc8/kVf;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lc8/nVf;->mNestedInstanceInterceptor:Lc8/kVf;

    invoke-interface {v1, v0, p1}, Lc8/kVf;->onCreateNestInstance(Lc8/nVf;Lc8/dbg;)V

    .line 295
    :cond_0
    return-object v0
.end method

.method public cssLayoutTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1198
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v0, Lc8/OXf;->cssLayoutTime:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Lc8/OXf;->cssLayoutTime:J

    .line 1199
    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 1272
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/nVf;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1273
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    iget-object v1, p0, Lc8/nVf;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/pVf;->destroyInstance(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/ubg;->removeComponentTypesByInstanceId(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lc8/nVf;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {p0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/nVf;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1278
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 1280
    :cond_0
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    if-eqz v0, :cond_1

    .line 1281
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->destroy()V

    .line 1282
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    invoke-direct {p0, v0}, Lc8/nVf;->destroyView(Landroid/view/View;)V

    .line 1283
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    .line 1286
    :cond_1
    iget-object v0, p0, Lc8/nVf;->mGlobalEvents:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 1287
    iget-object v0, p0, Lc8/nVf;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1290
    :cond_2
    iget-object v0, p0, Lc8/nVf;->mComponentObserver:Lc8/LUf;

    if-eqz v0, :cond_3

    .line 1291
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mComponentObserver:Lc8/LUf;

    .line 1294
    :cond_3
    invoke-virtual {p0}, Lc8/nVf;->getFlatUIContext()Lc8/Gdg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Gdg;->destroy()V

    .line 1295
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mFlatGUIContext:Lc8/Gdg;

    .line 1297
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mWXScrollListeners:Ljava/util/List;

    .line 1298
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    .line 1299
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mNestedInstanceInterceptor:Lc8/kVf;

    .line 1300
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mUserTrackAdapter:Lc8/HVf;

    .line 1301
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mScrollView:Landroid/widget/ScrollView;

    .line 1302
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    .line 1303
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mRenderListener:Lc8/NUf;

    .line 1304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/nVf;->isDestroy:Z

    .line 1305
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->mStatisticsListener:Lc8/OUf;

    .line 1306
    iget-object v0, p0, Lc8/nVf;->responseHeaders:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 1307
    iget-object v0, p0, Lc8/nVf;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1309
    :cond_4
    iget-object v0, p0, Lc8/nVf;->templateRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 1310
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nVf;->templateRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    :cond_5
    monitor-exit p0

    return-void

    .line 1272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableLayerType(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lc8/nVf;->enableLayerType:Z

    .line 216
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1465
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1466
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "elementRef"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1461
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1462
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "elementRef"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1457
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 1458
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 7
    .param p1, "elementRef"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1447
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "eventArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lc8/ZWf;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 1448
    return-void
.end method

.method public fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1431
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lc8/nVf;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1432
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1433
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1434
    .local v0, "callback":Ljava/lang/String;
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    iget-object v4, p0, Lc8/nVf;->mInstanceId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, p2, v5}, Lc8/pVf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0

    .line 1437
    .end local v0    # "callback":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public fireModuleEvent(Ljava/lang/String;Lc8/MXf;Ljava/util/Map;)V
    .locals 7
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "module"    # Lc8/MXf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/MXf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1503
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_1

    .line 1523
    :cond_0
    return-void

    .line 1507
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1508
    .local v2, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "type"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    const-string/jumbo v5, "module"

    invoke-virtual {p2}, Lc8/MXf;->getModuleName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const-string/jumbo v5, "data"

    invoke-interface {v2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    invoke-virtual {p2, p1}, Lc8/MXf;->getEventCallbacks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1513
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1514
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1515
    .local v0, "callback":Ljava/lang/String;
    new-instance v4, Lc8/KWf;

    iget-object v5, p0, Lc8/nVf;->mInstanceId:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lc8/KWf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    .local v4, "jsCallback":Lc8/KWf;
    invoke-virtual {p2, v0}, Lc8/MXf;->isOnce(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1517
    invoke-virtual {v4, v2}, Lc8/KWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 1519
    :cond_2
    invoke-virtual {v4, v2}, Lc8/KWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public firstScreenCreateInstanceTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1150
    iget-boolean v0, p0, Lc8/nVf;->mCreateInstance:Z

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, p0, Lc8/nVf;->mRenderStartTime:J

    sub-long v2, p1, v2

    iput-wide v2, v0, Lc8/OXf;->firstScreenJSFExecuteTime:J

    .line 1152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/nVf;->mCreateInstance:Z

    .line 1154
    :cond_0
    return-void
.end method

.method public firstScreenRenderFinished()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1165
    iget-boolean v0, p0, Lc8/nVf;->mEnd:Z

    if-ne v0, v1, :cond_0

    .line 1192
    :goto_0
    return-void

    .line 1168
    :cond_0
    iput-boolean v1, p0, Lc8/nVf;->mEnd:Z

    .line 1170
    iget-object v0, p0, Lc8/nVf;->mStatisticsListener:Lc8/OUf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1171
    new-instance v0, Lc8/iVf;

    invoke-direct {v0, p0}, Lc8/iVf;-><init>(Lc8/nVf;)V

    invoke-virtual {p0, v0}, Lc8/nVf;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1183
    :cond_1
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc8/nVf;->mRenderStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lc8/OXf;->screenRenderTime:J

    .line 1184
    const-string/jumbo v0, "firstScreenRenderFinished"

    iget-object v1, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v1, Lc8/OXf;->screenRenderTime:J

    invoke-static {v0, v2, v3}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1185
    const-string/jumbo v0, "   firstScreenJSFExecuteTime"

    iget-object v1, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v1, Lc8/OXf;->firstScreenJSFExecuteTime:J

    invoke-static {v0, v2, v3}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1186
    const-string/jumbo v0, "   firstScreenCallNativeTime"

    iget-object v1, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v1, Lc8/OXf;->callNativeTime:J

    invoke-static {v0, v2, v3}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1187
    const-string/jumbo v0, "       firstScreenJsonParseTime"

    iget-object v1, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v1, Lc8/OXf;->parseJsonTime:J

    invoke-static {v0, v2, v3}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1188
    const-string/jumbo v0, "   firstScreenBatchTime"

    iget-object v1, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v1, Lc8/OXf;->batchTime:J

    invoke-static {v0, v2, v3}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1189
    const-string/jumbo v0, "       firstScreenCssLayoutTime"

    iget-object v1, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v1, Lc8/OXf;->cssLayoutTime:J

    invoke-static {v0, v2, v3}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1190
    const-string/jumbo v0, "       firstScreenApplyUpdateTime"

    iget-object v1, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v1, Lc8/OXf;->applyUpdateTime:J

    invoke-static {v0, v2, v3}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1191
    const-string/jumbo v0, "       firstScreenUpdateDomObjTime"

    iget-object v1, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v1, Lc8/OXf;->updateDomObjTime:J

    invoke-static {v0, v2, v3}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public getBundleUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1323
    iget-object v0, p0, Lc8/nVf;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentObserver()Lc8/LUf;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lc8/nVf;->mComponentObserver:Lc8/LUf;

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 693
    const-string/jumbo v0, "WXSdkInstance mContext == null"

    invoke-static {v0}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 695
    :cond_0
    iget-object v0, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDrawableLoader()Lc8/AVf;
    .locals 1

    .prologue
    .line 712
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getDrawableLoader()Lc8/AVf;

    move-result-object v0

    return-object v0
.end method

.method public getFlatUIContext()Lc8/Gdg;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lc8/nVf;->mFlatGUIContext:Lc8/Gdg;

    return-object v0
.end method

.method public getImgLoaderAdapter()Lc8/EVf;
    .locals 1

    .prologue
    .line 708
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getIWXImgLoaderAdapter()Lc8/EVf;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lc8/nVf;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceViewPortWidth()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lc8/nVf;->mInstanceViewPortWidth:I

    return v0
.end method

.method public getLayoutFinishListener()Lc8/SUf;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lc8/nVf;->mLayoutFinishListener:Lc8/SUf;

    return-object v0
.end method

.method public getMaxDeepLayer()I
    .locals 1

    .prologue
    .line 1569
    iget v0, p0, Lc8/nVf;->mMaxDeepLayer:I

    return v0
.end method

.method public getNativeInvokeHelper()Lc8/JWf;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lc8/nVf;->mNativeInvokeHelper:Lc8/JWf;

    return-object v0
.end method

.method public getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lc8/nVf;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    return-object v0
.end method

.method public getRootComponent()Lc8/tbg;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lc8/nVf;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public getScrollViewListener()Lc8/weg;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lc8/nVf;->mWXScrollViewListener:Lc8/weg;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lc8/nVf;->templateRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 1745
    const/4 v0, 0x0

    .line 1747
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/nVf;->templateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTemplateInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1726
    invoke-virtual {p0}, Lc8/nVf;->getTemplate()Ljava/lang/String;

    move-result-object v1

    .line 1727
    .local v1, "template":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1728
    const-string/jumbo v2, " template md5 null"

    .line 1738
    :goto_0
    return-object v2

    .line 1730
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1731
    const-string/jumbo v2, " template md5  length 0"

    goto :goto_0

    .line 1734
    :cond_1
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1735
    .local v0, "bts":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " template md5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lc8/qgg;->md5([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "response header "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/nVf;->responseHeaders:Ljava/util/Map;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1738
    .end local v0    # "bts":[B
    :catch_0
    move-exception v2

    const-string/jumbo v2, "template md5 getBytes error"

    goto :goto_0
.end method

.method public getUIContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getURIAdapter()Lc8/IVf;
    .locals 1

    .prologue
    .line 716
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getURIAdapter()Lc8/IVf;

    move-result-object v0

    return-object v0
.end method

.method public getUserTrackParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1546
    iget-object v0, p0, Lc8/nVf;->mUserTrackParams:Ljava/util/Map;

    return-object v0
.end method

.method public getWXHttpAdapter()Lc8/DVf;
    .locals 1

    .prologue
    .line 724
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getIWXHttpAdapter()Lc8/DVf;

    move-result-object v0

    return-object v0
.end method

.method public getWXPerformance()Lc8/OXf;
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    return-object v0
.end method

.method public declared-synchronized getWXScrollListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/AXf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1373
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/nVf;->mWXScrollListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWXStatisticsListener()Lc8/OUf;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lc8/nVf;->mStatisticsListener:Lc8/OUf;

    return-object v0
.end method

.method public getWXWebSocketAdapter()Lc8/zWf;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 733
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getIWXWebSocketAdapter()Lc8/zWf;

    move-result-object v0

    return-object v0
.end method

.method public getWeexHeight()I
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    invoke-virtual {v0}, Lc8/TUf;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getWeexWidth()I
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    invoke-virtual {v0}, Lc8/TUf;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    iput-object p1, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    .line 312
    new-instance v0, Lc8/JWf;

    iget-object v1, p0, Lc8/nVf;->mInstanceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lc8/JWf;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/nVf;->mNativeInvokeHelper:Lc8/JWf;

    .line 314
    new-instance v0, Lc8/OXf;

    invoke-direct {v0}, Lc8/OXf;-><init>()V

    iput-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    .line 315
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    sget-object v1, Lc8/UUf;->WXSDK_VERSION:Ljava/lang/String;

    iput-object v1, v0, Lc8/OXf;->WXSDKVersion:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    sget-wide v2, Lc8/UUf;->sJSLibInitTime:J

    iput-wide v2, v0, Lc8/OXf;->JSLibInitTime:J

    .line 318
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getIWXUserTrackAdapter()Lc8/HVf;

    move-result-object v0

    iput-object v0, p0, Lc8/nVf;->mUserTrackAdapter:Lc8/HVf;

    .line 319
    return-void
.end method

.method public isDestroy()Z
    .locals 1

    .prologue
    .line 1316
    iget-boolean v0, p0, Lc8/nVf;->isDestroy:Z

    return v0
.end method

.method public isLayerTypeEnabled()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lc8/nVf;->enableLayerType:Z

    return v0
.end method

.method public isNeedReLoad()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lc8/nVf;->mNeedReLoad:Z

    return v0
.end method

.method public isNeedValidate()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lc8/nVf;->mNeedValidate:Z

    return v0
.end method

.method public isPreRenderMode()Z
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lc8/nVf;->isPreRenderMode:Z

    return v0
.end method

.method public isTrackComponent()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lc8/nVf;->trackComponent:Z

    return v0
.end method

.method public jsonParseTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1161
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v0, Lc8/OXf;->parseJsonTime:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Lc8/OXf;->parseJsonTime:J

    .line 1162
    return-void
.end method

.method public moveFixedView(Landroid/view/View;)V
    .locals 2
    .param p1, "fixedChild"    # Landroid/view/View;

    .prologue
    .line 1353
    iget-object v1, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    if-eqz v1, :cond_0

    .line 1355
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 1356
    iget-object v1, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    if-eq v0, v1, :cond_0

    .line 1357
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1358
    iget-object v1, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    invoke-virtual {v1, p1}, Lc8/TUf;->addView(Landroid/view/View;)V

    .line 1364
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 1361
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    iget-object v1, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    invoke-virtual {v1, p1}, Lc8/TUf;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected newNestedInstance()Lc8/nVf;
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lc8/nVf;

    iget-object v1, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/nVf;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onActivityBack()Z
    .locals 1

    .prologue
    .line 934
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/cXf;->onActivityBack(Ljava/lang/String;)Z

    .line 936
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->onActivityBack()Z

    move-result v0

    .line 942
    :goto_0
    return v0

    .line 939
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely, onActivityBack can not be call!"

    invoke-static {v0}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 942
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreate()V
    .locals 4

    .prologue
    .line 804
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/cXf;->onActivityCreate(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->onActivityCreate()V

    .line 812
    :goto_0
    new-instance v0, Lcom/taobao/weex/WXGlobalEventReceiver;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXGlobalEventReceiver;-><init>(Lc8/nVf;)V

    iput-object v0, p0, Lc8/nVf;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 813
    invoke-virtual {p0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/nVf;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "wx_global_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 814
    return-void

    .line 809
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely,onActivityCreate can not be call!"

    invoke-static {v0}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 920
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/cXf;->onActivityDestroy(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->onActivityDestroy()V

    .line 928
    :goto_0
    invoke-virtual {p0}, Lc8/nVf;->destroy()V

    .line 929
    return-void

    .line 925
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely, onActivityDestroy can not be call!"

    invoke-static {v0}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 843
    invoke-virtual {p0}, Lc8/nVf;->onViewDisappear()V

    .line 844
    iget-boolean v0, p0, Lc8/nVf;->isCommit:Z

    if-nez v0, :cond_2

    .line 845
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/ubg;->getComponentTypesByInstanceId(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 846
    .local v6, "componentTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    const-string/jumbo v0, "scroller"

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iput v8, v0, Lc8/OXf;->useScroller:I

    .line 849
    :cond_0
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    invoke-virtual {p0}, Lc8/nVf;->getMaxDeepLayer()I

    move-result v1

    iput v1, v0, Lc8/OXf;->maxDeepViewLayer:I

    .line 850
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-object v1, p0, Lc8/nVf;->mwxDims:[Ljava/lang/String;

    iput-object v1, v0, Lc8/OXf;->wxDims:[Ljava/lang/String;

    .line 851
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-object v1, p0, Lc8/nVf;->measureTimes:[J

    iput-object v1, v0, Lc8/OXf;->measureTimes:[J

    .line 852
    iget-object v0, p0, Lc8/nVf;->mUserTrackAdapter:Lc8/HVf;

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lc8/nVf;->mUserTrackAdapter:Lc8/HVf;

    iget-object v1, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string/jumbo v3, "load"

    iget-object v4, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    invoke-virtual {p0}, Lc8/nVf;->getUserTrackParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lc8/HVf;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/OXf;Ljava/util/Map;)V

    .line 855
    :cond_1
    iput-boolean v8, p0, Lc8/nVf;->isCommit:Z

    .line 858
    .end local v6    # "componentTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/cXf;->onActivityPause(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    if-eqz v0, :cond_4

    .line 860
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->onActivityPause()V

    .line 865
    :goto_0
    const-string/jumbo v0, "Application onActivityPause()"

    invoke-static {v0}, Lc8/xgg;->i(Ljava/lang/String;)V

    .line 866
    iget-boolean v0, p0, Lc8/nVf;->mCurrentGround:Z

    if-nez v0, :cond_3

    .line 867
    const-string/jumbo v0, "Application to be in the backround"

    invoke-static {v0}, Lc8/xgg;->i(Ljava/lang/String;)V

    .line 868
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "wx_global_action"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "eventName"

    const-string/jumbo v1, "WXApplicationWillResignActiveEvent"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    const-string/jumbo v0, "wx_instanceid"

    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    iget-object v0, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 872
    iput-boolean v8, p0, Lc8/nVf;->mCurrentGround:Z

    .line 874
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 862
    :cond_4
    const-string/jumbo v0, "Warning :Component tree has not build completely,onActivityPause can not be call!"

    invoke-static {v0}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 959
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lc8/cXf;->onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 961
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/tbg;->onActivityResult(IILandroid/content/Intent;)V

    .line 966
    :goto_0
    return-void

    .line 964
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely, onActivityResult can not be call!"

    invoke-static {v0}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResume()V
    .locals 3

    .prologue
    .line 881
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/cXf;->onActivityResume(Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    if-eqz v1, :cond_1

    .line 884
    iget-object v1, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v1}, Lc8/tbg;->onActivityResume()V

    .line 889
    :goto_0
    iget-boolean v1, p0, Lc8/nVf;->mCurrentGround:Z

    if-eqz v1, :cond_0

    .line 890
    const-string/jumbo v1, "Application  to be in the foreground"

    invoke-static {v1}, Lc8/xgg;->i(Ljava/lang/String;)V

    .line 891
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "wx_global_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 892
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "eventName"

    const-string/jumbo v2, "WXApplicationDidBecomeActiveEvent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const-string/jumbo v1, "wx_instanceid"

    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    iget-object v1, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 895
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/nVf;->mCurrentGround:Z

    .line 898
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lc8/nVf;->onViewAppear()V

    .line 900
    iget v1, p0, Lc8/nVf;->mInstanceViewPortWidth:I

    invoke-virtual {p0, v1}, Lc8/nVf;->setViewPortWidth(I)V

    .line 901
    return-void

    .line 886
    :cond_1
    const-string/jumbo v1, "Warning :Component tree has not build completely, onActivityResume can not be call!"

    invoke-static {v1}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityStart()V
    .locals 1

    .prologue
    .line 820
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/cXf;->onActivityStart(Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->onActivityStart()V

    .line 827
    :goto_0
    return-void

    .line 824
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely,onActivityStart can not be call!"

    invoke-static {v0}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/cXf;->onActivityStop(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->onActivityStop()V

    .line 916
    :goto_0
    return-void

    .line 912
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely, onActivityStop can not be call!"

    invoke-static {v0}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 946
    invoke-virtual {p0}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v0

    .line 947
    .local v0, "comp":Lc8/tbg;
    if-eqz v0, :cond_1

    .line 948
    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    .line 949
    .local v1, "events":Lcom/taobao/weex/dom/WXEvent;
    const-string/jumbo v3, "clickbackitem"

    invoke-virtual {v1, v3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 950
    .local v2, "hasBackPressed":Z
    if-eqz v2, :cond_0

    .line 951
    invoke-virtual {v0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "clickbackitem"

    invoke-virtual {p0, v3, v4, v5, v5}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 955
    .end local v1    # "events":Lcom/taobao/weex/dom/WXEvent;
    .end local v2    # "hasBackPressed":Z
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateFinish()V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1008
    new-instance v0, Lc8/dVf;

    invoke-direct {v0, p0}, Lc8/dVf;-><init>(Lc8/nVf;)V

    invoke-virtual {p0, v0}, Lc8/nVf;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1025
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 831
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/cXf;->onCreateOptionsMenu(Ljava/lang/String;Landroid/view/Menu;)Z

    .line 832
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v0, p1}, Lc8/tbg;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 837
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 835
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely,onActivityStart can not be call!"

    invoke-static {v0}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/String;

    .prologue
    .line 1115
    iget-object v0, p0, Lc8/nVf;->mRenderListener:Lc8/NUf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1116
    new-instance v0, Lc8/hVf;

    invoke-direct {v0, p0, p2, p3, p1}, Lc8/hVf;-><init>(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/nVf;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1129
    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;)V
    .locals 0
    .param p1, "godView"    # Landroid/view/View;

    .prologue
    .line 1146
    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 1135
    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 1136
    :cond_0
    invoke-virtual {p0, p1}, Lc8/nVf;->onLayoutChange(Landroid/view/View;)V

    .line 1138
    :cond_1
    return-void
.end method

.method public onRefreshSuccess(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1086
    const-string/jumbo v0, "onRefreshSuccess"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc8/nVf;->mRefreshStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1087
    iget-object v0, p0, Lc8/nVf;->mRenderListener:Lc8/NUf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1088
    new-instance v0, Lc8/fVf;

    invoke-direct {v0, p0, p1, p2}, Lc8/fVf;-><init>(Lc8/nVf;II)V

    invoke-virtual {p0, v0}, Lc8/nVf;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1098
    :cond_0
    return-void
.end method

.method public onRenderError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1101
    iget-object v0, p0, Lc8/nVf;->mRenderListener:Lc8/NUf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1102
    new-instance v0, Lc8/gVf;

    invoke-direct {v0, p0, p1, p2}, Lc8/gVf;-><init>(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/nVf;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1112
    :cond_0
    return-void
.end method

.method public onRenderSuccess(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1040
    invoke-virtual {p0}, Lc8/nVf;->firstScreenRenderFinished()V

    .line 1042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc8/nVf;->mRenderStartTime:J

    sub-long v0, v2, v4

    .line 1043
    .local v0, "time":J
    const-string/jumbo v2, "onRenderSuccess"

    invoke-static {v2, v0, v1}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1044
    const-string/jumbo v2, "   invokeCreateInstance"

    iget-object v3, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v4, v3, Lc8/OXf;->communicateTime:J

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1045
    const-string/jumbo v2, "   TotalCallNativeTime"

    iget-object v3, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v4, v3, Lc8/OXf;->callNativeTime:J

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1046
    const-string/jumbo v2, "       TotalJsonParseTime"

    iget-object v3, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v4, v3, Lc8/OXf;->parseJsonTime:J

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1047
    const-string/jumbo v2, "   TotalBatchTime"

    iget-object v3, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v4, v3, Lc8/OXf;->batchTime:J

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1048
    const-string/jumbo v2, "       TotalCssLayoutTime"

    iget-object v3, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v4, v3, Lc8/OXf;->cssLayoutTime:J

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1049
    const-string/jumbo v2, "       TotalApplyUpdateTime"

    iget-object v3, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v4, v3, Lc8/OXf;->applyUpdateTime:J

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1050
    const-string/jumbo v2, "       TotalUpdateDomObjTime"

    iget-object v3, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v4, v3, Lc8/OXf;->updateDomObjTime:J

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1053
    iget-object v2, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    long-to-double v4, v0

    iput-wide v4, v2, Lc8/OXf;->totalTime:D

    .line 1054
    iget-object v2, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v2, Lc8/OXf;->screenRenderTime:J

    long-to-double v2, v2

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 1055
    iget-object v2, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iput-wide v0, v2, Lc8/OXf;->screenRenderTime:J

    .line 1057
    :cond_0
    iget-object v2, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    sget v3, Lc8/tbg;->mComponentNum:I

    int-to-long v4, v3

    iput-wide v4, v2, Lc8/OXf;->componentCount:J

    .line 1058
    const-string/jumbo v2, "weex_perf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mComponentNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lc8/tbg;->mComponentNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const/4 v2, 0x0

    sput v2, Lc8/tbg;->mComponentNum:I

    .line 1061
    iget-object v2, p0, Lc8/nVf;->mRenderListener:Lc8/NUf;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 1062
    new-instance v2, Lc8/eVf;

    invoke-direct {v2, p0, p1, p2}, Lc8/eVf;-><init>(Lc8/nVf;II)V

    invoke-virtual {p0, v2}, Lc8/nVf;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1080
    :cond_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1081
    const-string/jumbo v2, "weex_perf"

    iget-object v3, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    invoke-virtual {v3}, Lc8/OXf;->getPerfData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 971
    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lc8/cXf;->onRequestPermissionsResult(Ljava/lang/String;I[Ljava/lang/String;[I)V

    .line 973
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/tbg;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely, onRequestPermissionsResult can not be call!"

    invoke-static {v0}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRootCreated(Lc8/tbg;)V
    .locals 2
    .param p1, "root"    # Lc8/tbg;

    .prologue
    .line 1343
    iput-object p1, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    .line 1344
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/TUf;->addView(Landroid/view/View;)V

    .line 1345
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    invoke-virtual {v0}, Lc8/TUf;->getWidth()I

    move-result v0

    iget-object v1, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    invoke-virtual {v1}, Lc8/TUf;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc8/nVf;->setSize(II)V

    .line 1346
    return-void
.end method

.method public onUpdateFinish()V
    .locals 1

    .prologue
    .line 1031
    const-string/jumbo v0, "Instance onUpdateSuccess"

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public onViewAppear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 996
    invoke-virtual {p0}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v0

    .line 997
    .local v0, "comp":Lc8/tbg;
    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "viewappear"

    invoke-virtual {p0, v3, v4, v5, v5}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 999
    iget-object v3, p0, Lc8/nVf;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/lVf;

    .line 1000
    .local v2, "instance":Lc8/lVf;
    invoke-interface {v2}, Lc8/lVf;->onAppear()V

    goto :goto_0

    .line 1003
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "instance":Lc8/lVf;
    :cond_0
    return-void
.end method

.method public onViewDisappear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 985
    invoke-virtual {p0}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v0

    .line 986
    .local v0, "comp":Lc8/tbg;
    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {v0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "viewdisappear"

    invoke-virtual {p0, v3, v4, v5, v5}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 989
    iget-object v3, p0, Lc8/nVf;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/lVf;

    .line 990
    .local v2, "instance":Lc8/lVf;
    invoke-interface {v2}, Lc8/lVf;->onDisappear()V

    goto :goto_0

    .line 993
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "instance":Lc8/lVf;
    :cond_0
    return-void
.end method

.method public refreshInstance(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 664
    if-nez p1, :cond_0

    .line 676
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/nVf;->mRefreshStartTime:J

    .line 669
    iget-object v0, p0, Lc8/nVf;->mLastRefreshData:Lc8/PXf;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lc8/nVf;->mLastRefreshData:Lc8/PXf;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/PXf;->isDirty:Z

    .line 673
    :cond_1
    new-instance v0, Lc8/PXf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc8/PXf;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lc8/nVf;->mLastRefreshData:Lc8/PXf;

    .line 675
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    iget-object v1, p0, Lc8/nVf;->mInstanceId:Ljava/lang/String;

    iget-object v2, p0, Lc8/nVf;->mLastRefreshData:Lc8/PXf;

    invoke-virtual {v0, v1, v2}, Lc8/pVf;->refreshInstance(Ljava/lang/String;Lc8/PXf;)V

    goto :goto_0
.end method

.method public refreshInstance(Ljava/util/Map;)V
    .locals 1
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
    .line 653
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 657
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-static {p1}, Lc8/ugg;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/nVf;->refreshInstance(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerActivityStateListener(Lc8/MUf;)V
    .locals 0
    .param p1, "listener"    # Lc8/MUf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 771
    return-void
.end method

.method public declared-synchronized registerOnWXScrollListener(Lc8/AXf;)V
    .locals 1
    .param p1, "wxScrollListener"    # Lc8/AXf;

    .prologue
    .line 1377
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/nVf;->mWXScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/nVf;->mWXScrollListeners:Ljava/util/List;

    .line 1380
    :cond_0
    iget-object v0, p0, Lc8/nVf;->mWXScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    monitor-exit p0

    return-void

    .line 1377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerRenderListener(Lc8/NUf;)V
    .locals 0
    .param p1, "listener"    # Lc8/NUf;

    .prologue
    .line 765
    iput-object p1, p0, Lc8/nVf;->mRenderListener:Lc8/NUf;

    .line 766
    return-void
.end method

.method public registerScrollViewListener(Lc8/weg;)V
    .locals 0
    .param p1, "scrollViewListener"    # Lc8/weg;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    iput-object p1, p0, Lc8/nVf;->mWXScrollViewListener:Lc8/weg;

    .line 360
    return-void
.end method

.method public registerStatisticsListener(Lc8/OUf;)V
    .locals 0
    .param p1, "listener"    # Lc8/OUf;

    .prologue
    .line 774
    iput-object p1, p0, Lc8/nVf;->mStatisticsListener:Lc8/OUf;

    .line 775
    return-void
.end method

.method public reloadImages()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lc8/nVf;->mScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 741
    :cond_0
    return-void
.end method

.method public reloadPage(Z)V
    .locals 3
    .param p1, "reloadThis"    # Z

    .prologue
    .line 633
    invoke-static {}, Lc8/bVf;->reload()V

    .line 635
    if-eqz p1, :cond_0

    .line 636
    iget-object v1, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 637
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 638
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "INSTANCE_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lc8/nVf;->mBundleUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    iget-object v1, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 647
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected removeEventListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 1490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    :goto_0
    return-void

    .line 1493
    :cond_0
    iget-object v0, p0, Lc8/nVf;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected removeEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 1480
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1483
    :cond_1
    iget-object v1, p0, Lc8/nVf;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1484
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1485
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeFixedView(Landroid/view/View;)V
    .locals 1
    .param p1, "fixedChild"    # Landroid/view/View;

    .prologue
    .line 1367
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    invoke-virtual {v0, p1}, Lc8/TUf;->removeView(Landroid/view/View;)V

    .line 1370
    :cond_0
    return-void
.end method

.method public removeOnInstanceVisibleListener(Lc8/lVf;)V
    .locals 1
    .param p1, "l"    # Lc8/lVf;

    .prologue
    .line 307
    iget-object v0, p0, Lc8/nVf;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method public removeUserTrackParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1563
    iget-object v0, p0, Lc8/nVf;->mUserTrackParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lc8/nVf;->mUserTrackParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    :cond_0
    return-void
.end method

.method public render(Ljava/lang/String;)V
    .locals 6
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 573
    const-string/jumbo v1, "default"

    iget-object v5, p0, Lc8/nVf;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lc8/nVf;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 574
    return-void
.end method

.method public render(Ljava/lang/String;II)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lc8/nVf;->render(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 6
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lc8/nVf;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 566
    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 2
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 433
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    const-string/jumbo v0, "WXSDKInstance"

    const-string/jumbo v1, "Please set your pageName or your js bundle url !!!!!!!"

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lc8/nVf;->getUIContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lc8/nVf;->getUIContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "Error: Missing pageName"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "We highly recommend you to set pageName. Call\nWXSDKInstance#render(String pageName, String template, Map<String, Object> options, String jsonInitData, WXRenderStrategy flag)\nto fix it."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-direct/range {p0 .. p5}, Lc8/nVf;->renderInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    goto :goto_0
.end method

.method public render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p3, "jsonInitData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 388
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/nVf;->render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 389
    return-void
.end method

.method public render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 6
    .param p1, "template"    # Ljava/lang/String;
    .param p3, "jsonInitData"    # Ljava/lang/String;
    .param p4, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "default"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/nVf;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 411
    return-void
.end method

.method public renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 6
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 599
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lc8/nVf;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 600
    return-void
.end method

.method public renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 0
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 603
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p5}, Lc8/nVf;->renderByUrlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 604
    return-void
.end method

.method public rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 720
    invoke-virtual {p0}, Lc8/nVf;->getURIAdapter()Lc8/IVf;

    move-result-object v0

    invoke-interface {v0, p0, p2, p1}, Lc8/IVf;->rewrite(Lc8/nVf;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1036
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lc8/pVf;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 1037
    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iput-object p1, v0, Lc8/OXf;->bizType:Ljava/lang/String;

    .line 344
    :cond_0
    return-void
.end method

.method public setBundleUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1336
    iput-object p1, p0, Lc8/nVf;->mBundleUrl:Ljava/lang/String;

    .line 1337
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getValidateProcessor()Lc8/iXf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1338
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getValidateProcessor()Lc8/iXf;

    move-result-object v0

    iget-object v1, p0, Lc8/nVf;->mBundleUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc8/iXf;->needValidate(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/nVf;->mNeedValidate:Z

    .line 1340
    :cond_0
    return-void
.end method

.method public setComponentObserver(Lc8/LUf;)V
    .locals 0
    .param p1, "observer"    # Lc8/LUf;

    .prologue
    .line 329
    iput-object p1, p0, Lc8/nVf;->mComponentObserver:Lc8/LUf;

    .line 330
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 758
    iput-object p1, p0, Lc8/nVf;->mContext:Landroid/content/Context;

    .line 759
    return-void
.end method

.method public setIWXUserTrackAdapter(Lc8/HVf;)V
    .locals 0
    .param p1, "adapter"    # Lc8/HVf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    return-void
.end method

.method public setInstanceViewPortWidth(I)V
    .locals 0
    .param p1, "instanceViewPortWidth"    # I

    .prologue
    .line 254
    iput p1, p0, Lc8/nVf;->mInstanceViewPortWidth:I

    .line 255
    return-void
.end method

.method public setLayoutFinishListener(Lc8/SUf;)V
    .locals 0
    .param p1, "listener"    # Lc8/SUf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 778
    iput-object p1, p0, Lc8/nVf;->mLayoutFinishListener:Lc8/SUf;

    .line 779
    return-void
.end method

.method public setMaxDeepLayer(I)V
    .locals 0
    .param p1, "maxDeepLayer"    # I

    .prologue
    .line 1573
    iput p1, p0, Lc8/nVf;->mMaxDeepLayer:I

    .line 1574
    return-void
.end method

.method public setNeedLoad(Z)V
    .locals 0
    .param p1, "load"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lc8/nVf;->mNeedReLoad:Z

    .line 234
    return-void
.end method

.method public setNestedInstanceInterceptor(Lc8/kVf;)V
    .locals 0
    .param p1, "interceptor"    # Lc8/kVf;

    .prologue
    .line 287
    iput-object p1, p0, Lc8/nVf;->mNestedInstanceInterceptor:Lc8/kVf;

    .line 288
    return-void
.end method

.method public setPreRenderMode(Z)V
    .locals 4
    .param p1, "isPreRenderMode"    # Z

    .prologue
    .line 749
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getWXRenderManager()Lc8/Cag;

    move-result-object v0

    new-instance v1, Lc8/cVf;

    invoke-direct {v1, p0, p1}, Lc8/cVf;-><init>(Lc8/nVf;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc8/Cag;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 755
    return-void
.end method

.method public setRenderContainer(Lc8/TUf;)V
    .locals 0
    .param p1, "a"    # Lc8/TUf;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1, p0}, Lc8/TUf;->setSDKInstance(Lc8/nVf;)V

    .line 178
    invoke-virtual {p1, p0}, Lc8/TUf;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 180
    :cond_0
    iput-object p1, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    .line 181
    return-void
.end method

.method public setRenderStartTime(J)V
    .locals 1
    .param p1, "renderStartTime"    # J

    .prologue
    .line 788
    iput-wide p1, p0, Lc8/nVf;->mRenderStartTime:J

    .line 789
    return-void
.end method

.method public setRootScrollView(Landroid/widget/ScrollView;)V
    .locals 2
    .param p1, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    .line 351
    iput-object p1, p0, Lc8/nVf;->mScrollView:Landroid/widget/ScrollView;

    .line 352
    iget-object v0, p0, Lc8/nVf;->mWXScrollViewListener:Lc8/weg;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lc8/nVf;->mScrollView:Landroid/widget/ScrollView;

    check-cast v0, Lc8/xeg;

    iget-object v1, p0, Lc8/nVf;->mWXScrollViewListener:Lc8/weg;

    invoke-virtual {v0, v1}, Lc8/xeg;->addScrollViewListener(Lc8/weg;)V

    .line 355
    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1398
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-boolean v6, p0, Lc8/nVf;->isDestroy:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lc8/nVf;->mRendered:Z

    if-nez v6, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1401
    :cond_1
    int-to-float v6, p1

    invoke-virtual {p0}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v3

    .line 1402
    .local v3, "realWidth":F
    int-to-float v6, p2

    invoke-virtual {p0}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v2

    .line 1404
    .local v2, "realHeight":F
    iget-object v0, p0, Lc8/nVf;->mRenderContainer:Lc8/TUf;

    .line 1405
    .local v0, "godView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1406
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1407
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    .line 1408
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ne v6, p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eq v6, p2, :cond_3

    .line 1409
    :cond_2
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1410
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1411
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1414
    :cond_3
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1415
    .local v5, "style":Lcom/alibaba/fastjson/JSONObject;
    iget-object v4, p0, Lc8/nVf;->mRootComp:Lc8/tbg;

    .line 1417
    .local v4, "rootComponent":Lc8/tbg;
    if-eqz v4, :cond_0

    .line 1420
    const-string/jumbo v6, "defaultWidth"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    const-string/jumbo v6, "defaultHeight"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    invoke-direct {p0, v5}, Lc8/nVf;->updateRootComponentStyle(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 1751
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/nVf;->templateRef:Ljava/lang/ref/WeakReference;

    .line 1752
    return-void
.end method

.method public setTrackComponent(Z)V
    .locals 0
    .param p1, "trackComponent"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lc8/nVf;->trackComponent:Z

    .line 193
    return-void
.end method

.method public setViewPortWidth(I)V
    .locals 0
    .param p1, "viewPortWidth"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    sput p1, Lc8/nVf;->mViewPortWidth:I

    .line 242
    return-void
.end method

.method public updateDomObjTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1206
    iget-object v0, p0, Lc8/nVf;->mWXPerformance:Lc8/OXf;

    iget-wide v2, v0, Lc8/OXf;->updateDomObjTime:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Lc8/OXf;->updateDomObjTime:J

    .line 1207
    return-void
.end method
