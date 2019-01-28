.class public Lc8/PMg;
.super Ljava/lang/Object;
.source "YKTrackerManager.java"

# interfaces
.implements Lc8/JMg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RMg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanNoneParamPlugin"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/RMg;


# direct methods
.method private constructor <init>(Lc8/RMg;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lc8/PMg;->this$0:Lc8/RMg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/RMg;Lc8/MMg;)V
    .locals 0
    .param p1, "x0"    # Lc8/RMg;
    .param p2, "x1"    # Lc8/MMg;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lc8/PMg;-><init>(Lc8/RMg;)V

    return-void
.end method


# virtual methods
.method public scanStaticsParamPlugin(Landroid/view/View;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lc8/OMg;

    invoke-direct {v1, p0, p3, p1}, Lc8/OMg;-><init>(Lc8/PMg;Ljava/util/HashMap;Landroid/view/View;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 416
    .local v0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 417
    return-void
.end method
