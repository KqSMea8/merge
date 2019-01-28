.class public Lc8/glq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hlq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/hlq;

.field final synthetic val$ad:Lc8/wyq;

.field final synthetic val$s:Lc8/Nlq;

.field final synthetic val$w:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/hlq;Lc8/Zlq;Lc8/Nlq;Lc8/wyq;)V
    .locals 0

    .prologue
    .line 1611
    iput-object p1, p0, Lc8/glq;->this$1:Lc8/hlq;

    iput-object p2, p0, Lc8/glq;->val$w:Lc8/Zlq;

    iput-object p3, p0, Lc8/glq;->val$s:Lc8/Nlq;

    iput-object p4, p0, Lc8/glq;->val$ad:Lc8/wyq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 1615
    iget-object v0, p0, Lc8/glq;->val$w:Lc8/Zlq;

    new-instance v1, Lc8/elq;

    invoke-direct {v1, p0}, Lc8/elq;-><init>(Lc8/glq;)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 1625
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1629
    iget-object v0, p0, Lc8/glq;->val$w:Lc8/Zlq;

    new-instance v1, Lc8/flq;

    invoke-direct {v1, p0, p1}, Lc8/flq;-><init>(Lc8/glq;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 1639
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 1643
    iget-object v0, p0, Lc8/glq;->val$ad:Lc8/wyq;

    invoke-virtual {v0, p1}, Lc8/wyq;->add(Lc8/Pmq;)V

    .line 1644
    return-void
.end method
