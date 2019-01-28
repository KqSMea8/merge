.class public Lc8/slq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->subscribeOn(Lc8/amq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$scheduler:Lc8/amq;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/amq;)V
    .locals 0

    .prologue
    .line 2129
    iput-object p1, p0, Lc8/slq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/slq;->val$scheduler:Lc8/amq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 2
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 2134
    iget-object v1, p0, Lc8/slq;->val$scheduler:Lc8/amq;

    invoke-virtual {v1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 2136
    .local v0, "w":Lc8/Zlq;
    new-instance v1, Lc8/rlq;

    invoke-direct {v1, p0, p1, v0}, Lc8/rlq;-><init>(Lc8/slq;Lc8/Nlq;Lc8/Zlq;)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 2146
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2129
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/slq;->call(Lc8/Nlq;)V

    return-void
.end method
