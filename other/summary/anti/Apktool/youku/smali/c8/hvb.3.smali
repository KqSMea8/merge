.class public Lc8/hvb;
.super Ljava/lang/Object;
.source "WXPrefetchModule.java"

# interfaces
.implements Lc8/Uub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jvb;->createPrefetchManagerIfNeeded()Lc8/bvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jvb;


# direct methods
.method constructor <init>(Lc8/jvb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jvb;

    .prologue
    .line 91
    iput-object p1, p0, Lc8/hvb;->this$0:Lc8/jvb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCachedAlready(Ljava/lang/String;)Z
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    const-wide/16 v2, 0x0

    .line 96
    .local v2, "start":J
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 99
    :cond_0
    invoke-static {p1}, Lc8/fH;->getStreamByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 100
    .local v0, "result":Z
    :goto_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string/jumbo v1, "WXPrefetchModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[zcache] elapse time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    return v0

    .line 99
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
