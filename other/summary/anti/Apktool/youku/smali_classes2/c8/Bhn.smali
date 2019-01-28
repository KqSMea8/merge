.class public Lc8/Bhn;
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


# direct methods
.method constructor <init>(Lc8/Chn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Chn;

    .prologue
    .line 233
    iput-object p1, p0, Lc8/Bhn;->this$0:Lc8/Chn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 236
    new-instance v0, Lc8/RIj;

    invoke-direct {v0}, Lc8/RIj;-><init>()V

    new-instance v1, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lc8/Bhn;->this$0:Lc8/Chn;

    iget-object v2, v2, Lc8/Chn;->val$packageName:Ljava/lang/String;

    invoke-static {v2, v4}, Lc8/lSh;->getWakeUpOtherUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "POST"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1, v5}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 237
    iget-object v0, p0, Lc8/Bhn;->this$0:Lc8/Chn;

    iget-object v0, v0, Lc8/Chn;->val$packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1, v5, v4}, Lc8/Ehn;->access$300(Ljava/lang/String;ILjava/lang/String;I)V

    .line 238
    return-void
.end method
