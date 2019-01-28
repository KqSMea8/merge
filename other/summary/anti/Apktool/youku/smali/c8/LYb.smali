.class public Lc8/LYb;
.super Lc8/NYb;
.source "TrackingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MasterViewTrackTask"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OYb;


# direct methods
.method public constructor <init>(Lc8/OYb;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Lc8/MYb;)V
    .locals 3
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "masterView"    # Landroid/view/View;
    .param p4, "selector"    # Ljava/lang/String;
    .param p5, "taskHandle"    # Ljava/lang/String;
    .param p6, "params"    # Ljava/lang/String;
    .param p7, "selectFromCache"    # Z
    .param p8, "continuousSelect"    # Z
    .param p9, "operationName"    # Ljava/lang/String;
    .param p10, "event"    # Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .param p11, "config"    # Lc8/PYb;
    .param p12, "listener"    # Lc8/MYb;

    .prologue
    .line 513
    iput-object p1, p0, Lc8/LYb;->this$0:Lc8/OYb;

    .line 514
    invoke-direct/range {p0 .. p12}, Lc8/NYb;-><init>(Lc8/OYb;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Lc8/MYb;)V

    .line 517
    const/4 v0, 0x1

    iput v0, p0, Lc8/LYb;->expectedViewSize:I

    .line 518
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/LYb;->targetViewsCache:Landroid/util/SparseArray;

    .line 519
    iget-object v0, p0, Lc8/LYb;->targetViewsCache:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 520
    invoke-interface {p12, p3, p0}, Lc8/MYb;->OnTargetViewAdded(Landroid/view/View;Lc8/NYb;)V

    .line 521
    return-void
.end method


# virtual methods
.method isTaskNeedKeepRun(Z)Z
    .locals 0
    .param p1, "isExecutorSuccess"    # Z

    .prologue
    .line 525
    return p1
.end method

.method public run()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x1

    return v0
.end method
