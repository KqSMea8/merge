.class public Lc8/Ykq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->doOnLifecycle(Lc8/inq;Lc8/inq;Lc8/hnq;Lc8/hnq;Lc8/hnq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$onAfterComplete:Lc8/hnq;

.field final synthetic val$onComplete:Lc8/hnq;

.field final synthetic val$onError:Lc8/inq;

.field final synthetic val$onSubscribe:Lc8/inq;

.field final synthetic val$onUnsubscribe:Lc8/hnq;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/hnq;Lc8/hnq;Lc8/inq;Lc8/inq;Lc8/hnq;)V
    .locals 0

    .prologue
    .line 1334
    iput-object p1, p0, Lc8/Ykq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/Ykq;->val$onComplete:Lc8/hnq;

    iput-object p3, p0, Lc8/Ykq;->val$onAfterComplete:Lc8/hnq;

    iput-object p4, p0, Lc8/Ykq;->val$onError:Lc8/inq;

    iput-object p5, p0, Lc8/Ykq;->val$onSubscribe:Lc8/inq;

    iput-object p6, p0, Lc8/Ykq;->val$onUnsubscribe:Lc8/hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 2
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 1337
    iget-object v0, p0, Lc8/Ykq;->this$0:Lc8/Plq;

    new-instance v1, Lc8/Xkq;

    invoke-direct {v1, p0, p1}, Lc8/Xkq;-><init>(Lc8/Ykq;Lc8/Nlq;)V

    invoke-virtual {v0, v1}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 1394
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1334
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ykq;->call(Lc8/Nlq;)V

    return-void
.end method
