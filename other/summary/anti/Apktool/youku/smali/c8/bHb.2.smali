.class public Lc8/bHb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/hHb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cHb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc8/cHb;


# direct methods
.method constructor <init>(Lc8/cHb;)V
    .locals 0

    iput-object p1, p0, Lc8/bHb;->a:Lc8/cHb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc8/dHb;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lc8/bHb;->a:Lc8/cHb;

    invoke-static {v0}, Lc8/cHb;->c(Lc8/cHb;)Lc8/eHb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/eHb;->a(Lc8/dHb;)V

    iget-object v0, p0, Lc8/bHb;->a:Lc8/cHb;

    invoke-static {v0}, Lc8/cHb;->d(Lc8/cHb;)Lc8/fHb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/fHb;->a(Lc8/dHb;)V

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/cGb;->setSampling()V

    :cond_0
    const-class v1, Lc8/cHb;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lc8/bHb;->a:Lc8/cHb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    iput-wide v2, v0, Lc8/cHb;->expiredTimeStamp:J

    const-string/jumbo v0, "AlibcConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u524d\u7684\u65f6\u95f4\u4e3a\u8fc7\u671f\u65f6\u95f4\u6233\u4e3a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/bHb;->a:Lc8/cHb;

    iget-wide v4, v3, Lc8/cHb;->expiredTimeStamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
