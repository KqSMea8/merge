.class public Lc8/Ahn;
.super Ljava/lang/Object;
.source "WakeUpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Chn;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Chn;

.field final synthetic val$afterRunning:Z

.field final synthetic val$beforeRunning:Z


# direct methods
.method constructor <init>(Lc8/Chn;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lc8/Chn;

    .prologue
    .line 224
    iput-object p1, p0, Lc8/Ahn;->this$0:Lc8/Chn;

    iput-boolean p2, p0, Lc8/Ahn;->val$beforeRunning:Z

    iput-boolean p3, p0, Lc8/Ahn;->val$afterRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 227
    new-instance v0, Lc8/RIj;

    invoke-direct {v0}, Lc8/RIj;-><init>()V

    new-instance v1, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lc8/Ahn;->this$0:Lc8/Chn;

    iget-object v2, v2, Lc8/Chn;->val$packageName:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Ahn;->val$beforeRunning:Z

    iget-boolean v4, p0, Lc8/Ahn;->val$afterRunning:Z

    invoke-static {v3, v4}, Lc8/Ehn;->access$200(ZZ)I

    move-result v3

    invoke-static {v2, v3}, Lc8/lSh;->getWakeUpOtherUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "POST"

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1, v6}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 228
    iget-object v0, p0, Lc8/Ahn;->this$0:Lc8/Chn;

    iget-object v0, v0, Lc8/Chn;->val$packageName:Ljava/lang/String;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lc8/Ahn;->val$beforeRunning:Z

    iget-boolean v3, p0, Lc8/Ahn;->val$afterRunning:Z

    invoke-static {v2, v3}, Lc8/Ehn;->access$200(ZZ)I

    move-result v2

    invoke-static {v0, v1, v6, v2}, Lc8/Ehn;->access$300(Ljava/lang/String;ILjava/lang/String;I)V

    .line 229
    return-void
.end method
