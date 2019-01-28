.class public Lc8/cvq;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dvq;->call(Lc8/ivq;Ljava/lang/Long;Ljava/lang/Object;Lc8/Zlq;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/dvq;

.field final synthetic val$seqId:Ljava/lang/Long;

.field final synthetic val$timeoutSubscriber:Lc8/ivq;


# direct methods
.method constructor <init>(Lc8/dvq;Lc8/ivq;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lc8/cvq;, "Lrx/internal/operators/OperatorTimeout$2.1;"
    iput-object p1, p0, Lc8/cvq;->this$1:Lc8/dvq;

    iput-object p2, p0, Lc8/cvq;->val$timeoutSubscriber:Lc8/ivq;

    iput-object p3, p0, Lc8/cvq;->val$seqId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 52
    .local p0, "this":Lc8/cvq;, "Lrx/internal/operators/OperatorTimeout$2.1;"
    iget-object v0, p0, Lc8/cvq;->val$timeoutSubscriber:Lc8/ivq;

    iget-object v1, p0, Lc8/cvq;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc8/ivq;->onTimeout(J)V

    .line 53
    return-void
.end method
