.class public final Lc8/jdf;
.super Ljava/lang/Object;
.source "EventCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostingThreadState"
.end annotation


# instance fields
.field canceled:Z

.field event:Ljava/lang/Object;

.field final eventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lc8/fdf;",
            "Lc8/gdf;",
            ">;>;"
        }
    .end annotation
.end field

.field isMainThread:Z

.field isPosting:Z

.field subscription:Lc8/Bdf;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/jdf;->eventQueue:Ljava/util/List;

    return-void
.end method
