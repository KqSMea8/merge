.class public Lc8/Ctg;
.super Ljava/lang/Thread;
.source "ThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Dtg;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/Dtg;


# direct methods
.method constructor <init>(Lc8/Dtg;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Runnable;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lc8/Ctg;->a:Lc8/Dtg;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Ctg;->a:Lc8/Dtg;

    invoke-static {v0}, Lc8/Dtg;->a(Lc8/Dtg;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 42
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 43
    return-void
.end method
