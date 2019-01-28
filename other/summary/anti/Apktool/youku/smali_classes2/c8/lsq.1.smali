.class public Lc8/lsq;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qsq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qsq;

.field final synthetic val$parent:Lc8/osq;


# direct methods
.method constructor <init>(Lc8/qsq;Lc8/osq;)V
    .locals 0

    .prologue
    .line 87
    .local p0, "this":Lc8/lsq;, "Lrx/internal/operators/OperatorGroupBy.1;"
    iput-object p1, p0, Lc8/lsq;->this$0:Lc8/qsq;

    iput-object p2, p0, Lc8/lsq;->val$parent:Lc8/osq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lc8/lsq;, "Lrx/internal/operators/OperatorGroupBy.1;"
    iget-object v0, p0, Lc8/lsq;->val$parent:Lc8/osq;

    invoke-virtual {v0}, Lc8/osq;->cancel()V

    .line 91
    return-void
.end method
