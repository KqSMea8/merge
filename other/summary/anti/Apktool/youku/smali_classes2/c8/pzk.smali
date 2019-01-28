.class public Lc8/pzk;
.super Ljava/lang/Object;
.source "PhenixUtil.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/phenix/PhenixUtil;->registerOrangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/phenix/PhenixUtil;


# direct methods
.method public constructor <init>(Lcom/youku/phone/phenix/PhenixUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/phone/phenix/PhenixUtil;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lc8/pzk;->this$0:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lc8/pzk;->this$0:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-static {v0}, Lcom/youku/phone/phenix/PhenixUtil;->access$000(Lcom/youku/phone/phenix/PhenixUtil;)Lc8/rzk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/rzk;->onConfigUpdate(Ljava/lang/String;Z)V

    .line 66
    iget-object v0, p0, Lc8/pzk;->this$0:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-static {v0}, Lcom/youku/phone/phenix/PhenixUtil;->access$100(Lcom/youku/phone/phenix/PhenixUtil;)Lc8/ozk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/ozk;->onConfigUpdate(Ljava/lang/String;Z)V

    .line 67
    return-void
.end method
