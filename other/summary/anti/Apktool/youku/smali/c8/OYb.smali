.class public Lc8/OYb;
.super Ljava/lang/Object;
.source "TrackingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/MYb;,
        Lc8/LYb;,
        Lc8/NYb;,
        Lc8/KYb;
    }
.end annotation


# static fields
.field public static final OPER_INFO:Ljava/lang/String; = "info"

.field public static final OPER_MIRROR:Ljava/lang/String; = "mirror"

.field public static final OPER_TRACK:Ljava/lang/String; = "track"

.field public static final OPER_UNMIRROR:Ljava/lang/String; = "unmirror"

.field public static final OPER_UNTRACK:Ljava/lang/String; = "untrack"

.field public static final TAG:Ljava/lang/String;

.field public static final TASK_OPER_REMOVE_ACTIVE_LAUNCHED:Ljava/lang/String; = "removeActiveLaunched"

.field public static final TASK_OPER_REMOVE_ALL:Ljava/lang/String; = "removeALL"

.field public static final TASK_OPER_REMOVE_ALL_LAUNCHED:Ljava/lang/String; = "removeAllLaunchedByView"

.field public static final TASK_OPER_STOP:Ljava/lang/String; = "stop"

.field private static final mActiveCancelMatcher:Lc8/KYb;

.field private static final mMasterViewMatcher:Lc8/KYb;

.field private static final mSelectorAndOperationNameMatcher:Lc8/KYb;

.field private static final mTConfigMatcher:Lc8/KYb;

.field private static final mTaskHandleMatcher:Lc8/KYb;

.field private static sOperator:Lc8/CYb;

.field private static sSelector:Lc8/DYb;


# instance fields
.field private foreground:Z

.field private isBegin:Z

.field private final mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTasks:Lc8/BYb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/BYb",
            "<",
            "Lc8/NYb;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lc8/OYb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/OYb;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lc8/DYb;

    invoke-direct {v0}, Lc8/DYb;-><init>()V

    sput-object v0, Lc8/OYb;->sSelector:Lc8/DYb;

    .line 41
    new-instance v0, Lc8/CYb;

    invoke-direct {v0}, Lc8/CYb;-><init>()V

    sput-object v0, Lc8/OYb;->sOperator:Lc8/CYb;

    .line 248
    new-instance v0, Lc8/FYb;

    invoke-direct {v0}, Lc8/FYb;-><init>()V

    sput-object v0, Lc8/OYb;->mMasterViewMatcher:Lc8/KYb;

    .line 255
    new-instance v0, Lc8/GYb;

    invoke-direct {v0}, Lc8/GYb;-><init>()V

    sput-object v0, Lc8/OYb;->mSelectorAndOperationNameMatcher:Lc8/KYb;

    .line 264
    new-instance v0, Lc8/HYb;

    invoke-direct {v0}, Lc8/HYb;-><init>()V

    sput-object v0, Lc8/OYb;->mTaskHandleMatcher:Lc8/KYb;

    .line 274
    new-instance v0, Lc8/IYb;

    invoke-direct {v0}, Lc8/IYb;-><init>()V

    sput-object v0, Lc8/OYb;->mTConfigMatcher:Lc8/KYb;

    .line 281
    new-instance v0, Lc8/JYb;

    invoke-direct {v0}, Lc8/JYb;-><init>()V

    sput-object v0, Lc8/OYb;->mActiveCancelMatcher:Lc8/KYb;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lc8/BYb;

    invoke-direct {v0}, Lc8/BYb;-><init>()V

    iput-object v0, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    .line 181
    new-instance v0, Lc8/EYb;

    invoke-direct {v0, p0}, Lc8/EYb;-><init>(Lc8/OYb;)V

    iput-object v0, p0, Lc8/OYb;->mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/OYb;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/OYb;->foreground:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lc8/OYb;)V
    .locals 0
    .param p0, "x0"    # Lc8/OYb;

    .prologue
    .line 31
    invoke-direct {p0}, Lc8/OYb;->onPageDraw()V

    return-void
.end method

.method static synthetic access$100()Lc8/CYb;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/OYb;->sOperator:Lc8/CYb;

    return-object v0
.end method

.method static synthetic access$200()Lc8/KYb;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/OYb;->mSelectorAndOperationNameMatcher:Lc8/KYb;

    return-object v0
.end method

.method static synthetic access$300(Lc8/OYb;Lc8/KYb;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V
    .locals 0
    .param p0, "x0"    # Lc8/OYb;
    .param p1, "x1"    # Lc8/KYb;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Lc8/PYb;

    .prologue
    .line 31
    invoke-direct/range {p0 .. p6}, Lc8/OYb;->removeTask(Lc8/KYb;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V

    return-void
.end method

.method static synthetic access$400()Lc8/DYb;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/OYb;->sSelector:Lc8/DYb;

    return-object v0
.end method

.method private begin()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 59
    invoke-virtual {p0}, Lc8/OYb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 61
    const-string/jumbo v2, "%s.begin error,touch activity is empty."

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lc8/OYb;->TAG:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-boolean v2, p0, Lc8/OYb;->isBegin:Z

    if-nez v2, :cond_0

    .line 68
    iput-boolean v3, p0, Lc8/OYb;->isBegin:Z

    .line 69
    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getTopView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 70
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Lc8/OYb;->mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 71
    iget-object v2, p0, Lc8/OYb;->mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 72
    const-string/jumbo v2, "%s.begin."

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lc8/OYb;->TAG:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private end()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lc8/OYb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 90
    const-string/jumbo v4, "%s.end error,touch activity is empty."

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Lc8/OYb;->TAG:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_0
    :goto_0
    return v2

    .line 94
    :cond_1
    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getTopView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 95
    .local v1, "topView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 99
    iput-boolean v2, p0, Lc8/OYb;->isBegin:Z

    .line 100
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lc8/OYb;->mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 101
    const-string/jumbo v4, "%s.end,mPendingTasks keep count:{%s}."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lc8/OYb;->TAG:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v2, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v2}, Lc8/BYb;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 102
    goto :goto_0
.end method

.method private isContainsTask(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;)Z
    .locals 6
    .param p1, "selector"    # Ljava/lang/String;
    .param p2, "operationName"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .param p4, "configItem"    # Lc8/PYb;

    .prologue
    .line 126
    iget-object v4, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v4}, Lc8/BYb;->start()Lc8/AYb;

    move-result-object v2

    .line 128
    .local v2, "access":Lc8/AYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray$Access<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    :try_start_0
    invoke-virtual {v2}, Lc8/AYb;->getData()Ljava/util/Collection;

    move-result-object v1

    .line 129
    .local v1, "SOTasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/NYb;

    .line 130
    .local v0, "SOTask":Lc8/NYb;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lc8/NYb;->selector:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lc8/NYb;->event:Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    iget-object v4, v4, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->uri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lc8/NYb;->event:Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    iget-object v4, v4, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->uri:Ljava/lang/String;

    iget-object v5, p3, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->uri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lc8/NYb;->config:Lc8/PYb;

    iget-object v4, v4, Lc8/PYb;->uuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lc8/NYb;->config:Lc8/PYb;

    iget-object v4, v4, Lc8/PYb;->uuid:Ljava/lang/String;

    iget-object v5, p4, Lc8/PYb;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    const/4 v4, 0x1

    .line 137
    iget-object v5, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v5}, Lc8/BYb;->end()V

    .line 139
    .end local v0    # "SOTask":Lc8/NYb;
    :goto_0
    return v4

    .line 137
    :cond_1
    iget-object v4, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v4}, Lc8/BYb;->end()V

    .line 139
    const/4 v4, 0x0

    goto :goto_0

    .line 137
    .end local v1    # "SOTasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v5}, Lc8/BYb;->end()V

    throw v4
.end method

.method private onPageDraw()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v0}, Lc8/BYb;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lc8/OYb;->schedulePendingTasks()V

    .line 197
    :cond_0
    return-void
.end method

.method private removeTask(Lc8/KYb;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V
    .locals 10
    .param p1, "matcher"    # Lc8/KYb;
    .param p2, "masterView"    # Landroid/view/View;
    .param p3, "selector"    # Ljava/lang/String;
    .param p4, "taskHandle"    # Ljava/lang/String;
    .param p5, "operationName"    # Ljava/lang/String;
    .param p6, "config"    # Lc8/PYb;

    .prologue
    .line 229
    iget-object v0, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v0}, Lc8/BYb;->start()Lc8/AYb;

    move-result-object v7

    .line 231
    .local v7, "access":Lc8/AYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray$Access<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    :try_start_0
    invoke-virtual {v7}, Lc8/AYb;->getData()Ljava/util/Collection;

    move-result-object v9

    .line 232
    .local v9, "soTasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/NYb;

    .local v6, "soTask":Lc8/NYb;
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    .line 233
    invoke-interface/range {v0 .. v6}, Lc8/KYb;->match(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;Lc8/NYb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v6}, Lc8/NYb;->cancel()V

    .line 235
    iget-object v0, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v0, v6}, Lc8/BYb;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 239
    .end local v6    # "soTask":Lc8/NYb;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "soTasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v1}, Lc8/BYb;->end()V

    throw v0

    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "soTasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    :cond_1
    iget-object v0, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v0}, Lc8/BYb;->end()V

    .line 240
    return-void
.end method

.method private schedulePendingTasks()V
    .locals 7

    .prologue
    .line 200
    iget-object v5, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v5}, Lc8/BYb;->start()Lc8/AYb;

    move-result-object v2

    .line 202
    .local v2, "access":Lc8/AYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray$Access<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    :try_start_0
    invoke-virtual {v2}, Lc8/AYb;->getData()Ljava/util/Collection;

    move-result-object v1

    .line 203
    .local v1, "SOTasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/NYb;

    .line 204
    .local v0, "SOTask":Lc8/NYb;
    invoke-virtual {v0}, Lc8/NYb;->run()Z

    move-result v4

    .line 205
    .local v4, "success":Z
    invoke-virtual {v0, v4}, Lc8/NYb;->isTaskNeedKeepRun(Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    iget-object v5, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v5, v0}, Lc8/BYb;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 209
    .end local v0    # "SOTask":Lc8/NYb;
    .end local v1    # "SOTasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "success":Z
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v6}, Lc8/BYb;->end()V

    throw v5

    .restart local v1    # "SOTasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v5}, Lc8/BYb;->end()V

    .line 210
    return-void
.end method

.method private scheduleSTask(Lc8/NYb;Z)V
    .locals 5
    .param p1, "SOTask"    # Lc8/NYb;
    .param p2, "immediate"    # Z

    .prologue
    .line 143
    const-string/jumbo v1, "scheduleSOTask.immediate{%s}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    if-eqz p2, :cond_1

    .line 145
    invoke-virtual {p1}, Lc8/NYb;->run()Z

    move-result v0

    .line 146
    .local v0, "success":Z
    invoke-virtual {p1, v0}, Lc8/NYb;->isTaskNeedKeepRun(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v1, p1}, Lc8/BYb;->add(Ljava/lang/Object;)V

    .line 151
    .end local v0    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v1, p1}, Lc8/BYb;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/OYb;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public leave()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 161
    iput-boolean v5, p0, Lc8/OYb;->foreground:Z

    .line 162
    invoke-direct {p0}, Lc8/OYb;->end()Z

    .line 165
    iget-object v4, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v4}, Lc8/BYb;->start()Lc8/AYb;

    move-result-object v2

    .line 167
    .local v2, "access":Lc8/AYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray$Access<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    :try_start_0
    invoke-virtual {v2}, Lc8/AYb;->getData()Ljava/util/Collection;

    move-result-object v1

    .line 168
    .local v1, "SOTasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/NYb;

    .line 169
    .local v0, "SOTask":Lc8/NYb;
    iget-object v4, v0, Lc8/NYb;->config:Lc8/PYb;

    iget-boolean v4, v4, Lc8/PYb;->embed:Z

    if-nez v4, :cond_0

    .line 170
    invoke-virtual {v0}, Lc8/NYb;->cancel()V

    .line 171
    iget-object v4, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v4, v0}, Lc8/BYb;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 175
    .end local v0    # "SOTask":Lc8/NYb;
    .end local v1    # "SOTasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v5}, Lc8/BYb;->end()V

    throw v4

    .restart local v1    # "SOTasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/trigger/view/TrackingService$SOTask;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v4}, Lc8/BYb;->end()V

    .line 177
    iput-boolean v5, p0, Lc8/OYb;->isBegin:Z

    .line 178
    sget-object v4, Lc8/OYb;->sSelector:Lc8/DYb;

    invoke-virtual {v4}, Lc8/DYb;->clearCache()V

    .line 179
    return-void
.end method

.method public manageTask(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V
    .locals 7
    .param p1, "masterView"    # Landroid/view/View;
    .param p2, "taskHandle"    # Ljava/lang/String;
    .param p3, "taskOperationName"    # Ljava/lang/String;
    .param p4, "config"    # Lc8/PYb;

    .prologue
    .line 214
    const-string/jumbo v0, "stop"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    sget-object v1, Lc8/OYb;->mTaskHandleMatcher:Lc8/KYb;

    const-string/jumbo v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc8/OYb;->removeTask(Lc8/KYb;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const-string/jumbo v0, "removeAllLaunchedByView"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    sget-object v1, Lc8/OYb;->mMasterViewMatcher:Lc8/KYb;

    const-string/jumbo v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc8/OYb;->removeTask(Lc8/KYb;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V

    goto :goto_0

    .line 218
    :cond_2
    const-string/jumbo v0, "removeALL"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    sget-object v1, Lc8/OYb;->mTConfigMatcher:Lc8/KYb;

    const-string/jumbo v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc8/OYb;->removeTask(Lc8/KYb;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V

    goto :goto_0

    .line 220
    :cond_3
    const-string/jumbo v0, "removeActiveLaunched"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v1, Lc8/OYb;->mActiveCancelMatcher:Lc8/KYb;

    const-string/jumbo v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc8/OYb;->removeTask(Lc8/KYb;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V

    goto :goto_0
.end method

.method public scheduleSTask(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Lc8/MYb;Z)Lc8/NYb;
    .locals 18
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "masterView"    # Landroid/view/View;
    .param p3, "selector"    # Ljava/lang/String;
    .param p4, "taskHandle"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/lang/String;
    .param p6, "selectFromCache"    # Z
    .param p7, "continuousSelect"    # Z
    .param p8, "operationName"    # Ljava/lang/String;
    .param p9, "event"    # Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .param p10, "configItem"    # Lc8/PYb;
    .param p11, "listener"    # Lc8/MYb;
    .param p12, "immediate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/OYb;->isContainsTask(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    const-string/jumbo v6, "%s.scheduleSTask.but already contains."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lc8/OYb;->TAG:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const/4 v5, 0x0

    .line 121
    :cond_0
    :goto_0
    return-object v5

    .line 112
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p2, :cond_2

    .line 113
    new-instance v5, Lc8/LYb;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    invoke-direct/range {v5 .. v17}, Lc8/LYb;-><init>(Lc8/OYb;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Lc8/MYb;)V

    .line 117
    .local v5, "task":Lc8/NYb;
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p12

    invoke-direct {v0, v5, v1}, Lc8/OYb;->scheduleSTask(Lc8/NYb;Z)V

    .line 118
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lc8/OYb;->foreground:Z

    if-eqz v6, :cond_0

    .line 119
    invoke-direct/range {p0 .. p0}, Lc8/OYb;->begin()V

    goto :goto_0

    .line 115
    .end local v5    # "task":Lc8/NYb;
    :cond_2
    new-instance v5, Lc8/NYb;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    invoke-direct/range {v5 .. v17}, Lc8/NYb;-><init>(Lc8/OYb;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Lc8/MYb;)V

    .restart local v5    # "task":Lc8/NYb;
    goto :goto_1
.end method

.method public touchActivity()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/OYb;->foreground:Z

    .line 155
    iget-object v0, p0, Lc8/OYb;->mPendingTasks:Lc8/BYb;

    invoke-virtual {v0}, Lc8/BYb;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    invoke-direct {p0}, Lc8/OYb;->begin()V

    .line 158
    :cond_0
    return-void
.end method
