.class public Lc8/Bsf;
.super Lc8/Ftf;
.source "ConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/ConfigCenter$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/taobao/orange/ConfigCenter$1$1;


# direct methods
.method public constructor <init>(Lcom/taobao/orange/ConfigCenter$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/taobao/orange/ConfigCenter$1$1;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lc8/Bsf;->this$2:Lcom/taobao/orange/ConfigCenter$1$1;

    invoke-direct {p0}, Lc8/Ftf;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lc8/Bsf;->this$2:Lcom/taobao/orange/ConfigCenter$1$1;

    iget-object v0, v0, Lcom/taobao/orange/ConfigCenter$1$1;->this$1:Lc8/Csf;

    iget-object v0, v0, Lc8/Csf;->this$0:Lc8/Jsf;

    invoke-static {v0, p2}, Lc8/Jsf;->access$400(Lc8/Jsf;Z)V

    .line 143
    return-void
.end method
