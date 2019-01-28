.class public Lc8/rqq;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zqq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<",
        "Lc8/Qlq",
        "<*>;",
        "Lc8/Qlq",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zqq;


# direct methods
.method constructor <init>(Lc8/zqq;)V
    .locals 0

    .prologue
    .line 281
    .local p0, "this":Lc8/rqq;, "Lrx/internal/operators/OnSubscribeRedo.3;"
    iput-object p1, p0, Lc8/rqq;->this$0:Lc8/zqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Qlq",
            "<*>;>;)",
            "Lc8/Omq",
            "<-",
            "Lc8/Qlq",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lc8/rqq;, "Lrx/internal/operators/OnSubscribeRedo.3;"
    .local p1, "filteredTerminals":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Notification<*>;>;"
    new-instance v0, Lc8/qqq;

    invoke-direct {v0, p0, p1, p1}, Lc8/qqq;-><init>(Lc8/rqq;Lc8/Omq;Lc8/Omq;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 281
    .local p0, "this":Lc8/rqq;, "Lrx/internal/operators/OnSubscribeRedo.3;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/rqq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
