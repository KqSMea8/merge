.class public Lc8/ZKd;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bLd;->getRequestCallable(Lc8/DId;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bLd;

.field final synthetic val$request:Lc8/DId;


# direct methods
.method constructor <init>(Lc8/bLd;Lc8/DId;)V
    .locals 0
    .param p1, "this$0"    # Lc8/bLd;

    .prologue
    .line 284
    iput-object p1, p0, Lc8/ZKd;->this$0:Lc8/bLd;

    iput-object p2, p0, Lc8/ZKd;->val$request:Lc8/DId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lc8/ZKd;->this$0:Lc8/bLd;

    iget-object v1, p0, Lc8/ZKd;->val$request:Lc8/DId;

    invoke-static {v0, v1}, Lc8/bLd;->access$200(Lc8/bLd;Lc8/DId;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lc8/ZKd;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
