.class public Lc8/npq;
.super Ljava/lang/Object;
.source "OnSubscribeConcatMap.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rpq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rpq;

.field final synthetic val$parent:Lc8/qpq;


# direct methods
.method constructor <init>(Lc8/rpq;Lc8/qpq;)V
    .locals 0

    .prologue
    .line 86
    .local p0, "this":Lc8/npq;, "Lrx/internal/operators/OnSubscribeConcatMap.1;"
    iput-object p1, p0, Lc8/npq;->this$0:Lc8/rpq;

    iput-object p2, p0, Lc8/npq;->val$parent:Lc8/qpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 89
    .local p0, "this":Lc8/npq;, "Lrx/internal/operators/OnSubscribeConcatMap.1;"
    iget-object v0, p0, Lc8/npq;->val$parent:Lc8/qpq;

    invoke-virtual {v0, p1, p2}, Lc8/qpq;->requestMore(J)V

    .line 90
    return-void
.end method
