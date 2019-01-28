.class public final Lc8/TIf;
.super Ljava/lang/Object;
.source "MonitorManager.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/VIf;->reportAckByMtop(Ljava/lang/String;Lc8/QJf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lc8/QJf;

.field final synthetic val$request:Lcom/taobao/tao/messagekit/core/model/Monitor;


# direct methods
.method constructor <init>(Lcom/taobao/tao/messagekit/core/model/Monitor;Lc8/QJf;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lc8/TIf;->val$request:Lcom/taobao/tao/messagekit/core/model/Monitor;

    iput-object p2, p0, Lc8/TIf;->val$listener:Lc8/QJf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/DIf;->getCallbackManager()Lc8/vIf;

    move-result-object v0

    iget-object v1, p0, Lc8/TIf;->val$request:Lcom/taobao/tao/messagekit/core/model/Monitor;

    iget-object v1, v1, Lcom/taobao/tao/messagekit/core/model/Monitor;->header:Lc8/eyf;

    iget-object v1, v1, Lc8/eyf;->messageId:Ljava/lang/String;

    iget-object v2, p0, Lc8/TIf;->val$listener:Lc8/QJf;

    invoke-virtual {v0, v1, v2}, Lc8/vIf;->register(Ljava/lang/String;Lc8/QJf;)Z

    .line 87
    return-void
.end method
