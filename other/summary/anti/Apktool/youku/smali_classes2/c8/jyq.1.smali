.class public Lc8/jyq;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oyq;->scalarScheduleOn(Lc8/amq;)Lc8/Vlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Lc8/hnq;",
        "Lc8/Pmq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oyq;

.field final synthetic val$scheduler:Lc8/amq;


# direct methods
.method constructor <init>(Lc8/oyq;Lc8/amq;)V
    .locals 0

    .prologue
    .line 106
    .local p0, "this":Lc8/jyq;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    iput-object p1, p0, Lc8/jyq;->this$0:Lc8/oyq;

    iput-object p2, p0, Lc8/jyq;->val$scheduler:Lc8/amq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/hnq;)Lc8/Pmq;
    .locals 2
    .param p1, "a"    # Lc8/hnq;

    .prologue
    .line 109
    .local p0, "this":Lc8/jyq;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    iget-object v1, p0, Lc8/jyq;->val$scheduler:Lc8/amq;

    invoke-virtual {v1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 110
    .local v0, "w":Lc8/Zlq;
    new-instance v1, Lc8/iyq;

    invoke-direct {v1, p0, p1, v0}, Lc8/iyq;-><init>(Lc8/jyq;Lc8/hnq;Lc8/Zlq;)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 120
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 106
    .local p0, "this":Lc8/jyq;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    check-cast p1, Lc8/hnq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/jyq;->call(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method
