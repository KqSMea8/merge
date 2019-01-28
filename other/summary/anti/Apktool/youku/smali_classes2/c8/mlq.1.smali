.class public Lc8/mlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->onErrorResumeNext(Lc8/Inq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$errorMapper:Lc8/Inq;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/Inq;)V
    .locals 0

    .prologue
    .line 1719
    iput-object p1, p0, Lc8/mlq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/mlq;->val$errorMapper:Lc8/Inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 3
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 1722
    new-instance v0, Lc8/YBq;

    invoke-direct {v0}, Lc8/YBq;-><init>()V

    .line 1723
    .local v0, "sd":Lc8/YBq;
    iget-object v1, p0, Lc8/mlq;->this$0:Lc8/Plq;

    new-instance v2, Lc8/llq;

    invoke-direct {v2, p0, p1, v0}, Lc8/llq;-><init>(Lc8/mlq;Lc8/Nlq;Lc8/YBq;)V

    invoke-virtual {v1, v2}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 1775
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1719
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/mlq;->call(Lc8/Nlq;)V

    return-void
.end method
