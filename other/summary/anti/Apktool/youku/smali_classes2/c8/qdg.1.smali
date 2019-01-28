.class public Lc8/qdg;
.super Ljava/lang/Object;
.source "TemplateCache.java"


# instance fields
.field cells:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lc8/jdg;",
            ">;"
        }
    .end annotation
.end field

.field isLoadIng:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lc8/qdg;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/qdg;->isLoadIng:Z

    return-void
.end method
