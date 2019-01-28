.class public Lc8/mqq;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nqq;->call(Lc8/Vlq;)Lc8/Vlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Lc8/Qlq",
        "<*>;",
        "Lc8/Qlq",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nqq;


# direct methods
.method constructor <init>(Lc8/nqq;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lc8/mqq;->this$0:Lc8/nqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Qlq;)Lc8/Qlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Qlq",
            "<*>;)",
            "Lc8/Qlq",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "terminal":Lc8/Qlq;, "Lrx/Notification<*>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/Qlq;->createOnNext(Ljava/lang/Object;)Lc8/Qlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lc8/Qlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/mqq;->call(Lc8/Qlq;)Lc8/Qlq;

    move-result-object v0

    return-object v0
.end method
