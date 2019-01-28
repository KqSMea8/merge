.class public Lc8/Alq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Blq;->onSubscribe(Lc8/Pmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lc8/Blq;

.field final synthetic val$d:Lc8/Pmq;


# direct methods
.method constructor <init>(Lc8/Blq;Lc8/Pmq;)V
    .locals 0

    .prologue
    .line 2342
    iput-object p1, p0, Lc8/Alq;->this$2:Lc8/Blq;

    iput-object p2, p0, Lc8/Alq;->val$d:Lc8/Pmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 2345
    iget-object v1, p0, Lc8/Alq;->this$2:Lc8/Blq;

    iget-object v1, v1, Lc8/Blq;->this$1:Lc8/Clq;

    iget-object v1, v1, Lc8/Clq;->val$scheduler:Lc8/amq;

    invoke-virtual {v1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 2346
    .local v0, "w":Lc8/Zlq;
    new-instance v1, Lc8/zlq;

    invoke-direct {v1, p0, v0}, Lc8/zlq;-><init>(Lc8/Alq;Lc8/Zlq;)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 2356
    return-void
.end method
