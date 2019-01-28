.class public Lc8/aLd;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bLd;->getRemoveCallable(Ljava/lang/Long;)Ljava/util/concurrent/Callable;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bLd;

.field final synthetic val$eventId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lc8/bLd;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lc8/bLd;

    .prologue
    .line 300
    iput-object p1, p0, Lc8/aLd;->this$0:Lc8/bLd;

    iput-object p2, p0, Lc8/aLd;->val$eventId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lc8/aLd;->this$0:Lc8/bLd;

    invoke-static {v0}, Lc8/bLd;->access$300(Lc8/bLd;)Lc8/mLd;

    move-result-object v0

    iget-object v1, p0, Lc8/aLd;->val$eventId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lc8/mLd;->removeEvent(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 300
    invoke-virtual {p0}, Lc8/aLd;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
