.class public Lc8/Zkq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->doOnTerminate(Lc8/hnq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$onTerminate:Lc8/hnq;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/hnq;)V
    .locals 0

    .prologue
    .line 1416
    iput-object p1, p0, Lc8/Zkq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/Zkq;->val$onTerminate:Lc8/hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1416
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Zkq;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1419
    iget-object v0, p0, Lc8/Zkq;->val$onTerminate:Lc8/hnq;

    invoke-interface {v0}, Lc8/hnq;->call()V

    .line 1420
    return-void
.end method
