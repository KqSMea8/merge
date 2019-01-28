.class public Lc8/Aqq;
.super Ljava/lang/Object;
.source "OnSubscribeReduce.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cqq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Cqq;

.field final synthetic val$parent:Lc8/Bqq;


# direct methods
.method constructor <init>(Lc8/Cqq;Lc8/Bqq;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lc8/Aqq;, "Lrx/internal/operators/OnSubscribeReduce.1;"
    iput-object p1, p0, Lc8/Aqq;->this$0:Lc8/Cqq;

    iput-object p2, p0, Lc8/Aqq;->val$parent:Lc8/Bqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 44
    .local p0, "this":Lc8/Aqq;, "Lrx/internal/operators/OnSubscribeReduce.1;"
    iget-object v0, p0, Lc8/Aqq;->val$parent:Lc8/Bqq;

    invoke-virtual {v0, p1, p2}, Lc8/Bqq;->downstreamRequest(J)V

    .line 45
    return-void
.end method
