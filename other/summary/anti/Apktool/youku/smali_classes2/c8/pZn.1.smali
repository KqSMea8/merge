.class public abstract Lc8/pZn;
.super Ljava/lang/Object;
.source "DataWatcher.java"

# interfaces
.implements Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onDataChanged(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 20
    instance-of v0, p2, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    if-eqz v0, :cond_0

    .line 21
    check-cast p2, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lc8/pZn;->onDataChanged(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    .line 23
    :cond_0
    return-void
.end method
