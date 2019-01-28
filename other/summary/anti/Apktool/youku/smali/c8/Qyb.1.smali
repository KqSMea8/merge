.class public final Lc8/Qyb;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gzb;->createUpdateSessionProperties(Ljava/util/Map;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$aMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lc8/Qyb;->val$aMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 460
    :try_start_0
    sget-object v0, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-object v1, p0, Lc8/Qyb;->val$aMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lc8/kzb;->updateSessionProperties(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
