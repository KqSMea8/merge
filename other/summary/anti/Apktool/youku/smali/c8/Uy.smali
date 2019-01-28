.class public Lc8/Uy;
.super Ljava/lang/Object;
.source "BundleUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelableTask"
.end annotation


# instance fields
.field private canceled:Z

.field private task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Uy;->canceled:Z

    .line 295
    iput-object p1, p0, Lc8/Uy;->task:Ljava/lang/Runnable;

    .line 296
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Uy;->canceled:Z

    .line 300
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lc8/Uy;->canceled:Z

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lc8/Uy;->task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 306
    :cond_0
    return-void
.end method
