.class public final Lc8/tJd;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uJd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Watchdog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 278
    const-string/jumbo v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/tJd;->setDaemon(Z)V

    .line 280
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lc8/uJd;->access$000()Lc8/uJd;

    move-result-object v0

    .line 288
    .local v0, "timedOut":Lc8/uJd;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lc8/uJd;->timedOut()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v0    # "timedOut":Lc8/uJd;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
