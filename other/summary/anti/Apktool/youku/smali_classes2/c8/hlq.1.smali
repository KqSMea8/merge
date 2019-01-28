.class public Lc8/hlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->observeOn(Lc8/amq;)Lc8/Plq;
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
    .line 1600
    iput-object p1, p0, Lc8/hlq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/hlq;->val$scheduler:Lc8/amq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 4
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 1604
    new-instance v0, Lc8/wyq;

    invoke-direct {v0}, Lc8/wyq;-><init>()V

    .line 1606
    .local v0, "ad":Lc8/wyq;
    iget-object v2, p0, Lc8/hlq;->val$scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v1

    .line 1607
    .local v1, "w":Lc8/Zlq;
    invoke-virtual {v0, v1}, Lc8/wyq;->add(Lc8/Pmq;)V

    .line 1609
    invoke-interface {p1, v0}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 1611
    iget-object v2, p0, Lc8/hlq;->this$0:Lc8/Plq;

    new-instance v3, Lc8/glq;

    invoke-direct {v3, p0, v1, p1, v0}, Lc8/glq;-><init>(Lc8/hlq;Lc8/Zlq;Lc8/Nlq;Lc8/wyq;)V

    invoke-virtual {v2, v3}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 1647
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1600
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/hlq;->call(Lc8/Nlq;)V

    return-void
.end method
