.class public Lc8/Quq;
.super Ljava/lang/Object;
.source "OperatorTakeUntilPredicate.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Suq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Suq;

.field final synthetic val$parent:Lc8/Ruq;


# direct methods
.method constructor <init>(Lc8/Suq;Lc8/Ruq;)V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lc8/Quq;, "Lrx/internal/operators/OperatorTakeUntilPredicate.1;"
    iput-object p1, p0, Lc8/Quq;->this$0:Lc8/Suq;

    iput-object p2, p0, Lc8/Quq;->val$parent:Lc8/Ruq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 43
    .local p0, "this":Lc8/Quq;, "Lrx/internal/operators/OperatorTakeUntilPredicate.1;"
    iget-object v0, p0, Lc8/Quq;->val$parent:Lc8/Ruq;

    invoke-virtual {v0, p1, p2}, Lc8/Ruq;->downstreamRequest(J)V

    .line 44
    return-void
.end method
