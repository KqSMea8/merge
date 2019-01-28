.class public Lc8/nuq;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ouq;->request(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lc8/ouq;

.field final synthetic val$n:J


# direct methods
.method constructor <init>(Lc8/ouq;J)V
    .locals 0

    .prologue
    .line 82
    .local p0, "this":Lc8/nuq;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1.1;"
    iput-object p1, p0, Lc8/nuq;->this$3:Lc8/ouq;

    iput-wide p2, p0, Lc8/nuq;->val$n:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 85
    .local p0, "this":Lc8/nuq;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1.1;"
    iget-object v0, p0, Lc8/nuq;->this$3:Lc8/ouq;

    iget-object v0, v0, Lc8/ouq;->val$p:Lc8/Xlq;

    iget-wide v2, p0, Lc8/nuq;->val$n:J

    invoke-interface {v0, v2, v3}, Lc8/Xlq;->request(J)V

    .line 86
    return-void
.end method
