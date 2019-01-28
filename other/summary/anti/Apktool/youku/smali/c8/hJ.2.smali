.class public Lc8/hJ;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iJ;->onDisConnect(Lanet/channel/Session;JLanet/channel/entity/EventType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/iJ;

.field final synthetic val$session:Lanet/channel/Session;


# direct methods
.method constructor <init>(Lc8/iJ;Lanet/channel/Session;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lc8/hJ;->this$1:Lc8/iJ;

    iput-object p2, p0, Lc8/hJ;->val$session:Lanet/channel/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 302
    :try_start_0
    iget-object v0, p0, Lc8/hJ;->this$1:Lc8/iJ;

    iget-object v0, v0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v1, p0, Lc8/hJ;->this$1:Lc8/iJ;

    invoke-static {v1}, Lc8/iJ;->access$500(Lc8/iJ;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/hJ;->val$session:Lanet/channel/Session;

    invoke-virtual {v2}, Lanet/channel/Session;->getConnType()Lc8/BJ;

    move-result-object v2

    invoke-virtual {v2}, Lc8/BJ;->getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v2

    iget-object v3, p0, Lc8/hJ;->this$1:Lc8/iJ;

    iget-object v3, v3, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-static {v3}, Lc8/lJ;->access$600(Lc8/lJ;)Lanet/channel/SessionCenter;

    move-result-object v3

    iget-object v3, v3, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    invoke-static {v3}, Lc8/bM;->createSequenceNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc8/lJ;->start(Landroid/content/Context;Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
