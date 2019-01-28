.class public Lc8/Hvq;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ivq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ivq;

.field final synthetic val$parent:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Ivq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lc8/Hvq;, "Lrx/internal/operators/OperatorUnsubscribeOn.2;"
    iput-object p1, p0, Lc8/Hvq;->this$0:Lc8/Ivq;

    iput-object p2, p0, Lc8/Hvq;->val$parent:Lc8/Omq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Lc8/Hvq;, "Lrx/internal/operators/OperatorUnsubscribeOn.2;"
    iget-object v1, p0, Lc8/Hvq;->this$0:Lc8/Ivq;

    iget-object v1, v1, Lc8/Ivq;->scheduler:Lc8/amq;

    invoke-virtual {v1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 62
    .local v0, "inner":Lc8/Zlq;
    new-instance v1, Lc8/Gvq;

    invoke-direct {v1, p0, v0}, Lc8/Gvq;-><init>(Lc8/Hvq;Lc8/Zlq;)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 70
    return-void
.end method
