.class public Lcom/taobao/accs/data/MessageHandler$3;
.super Ljava/lang/Object;
.source "MessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/data/MessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/data/MessageHandler;


# direct methods
.method constructor <init>(Lcom/taobao/accs/data/MessageHandler;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/taobao/accs/data/MessageHandler$3;->this$0:Lcom/taobao/accs/data/MessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler$3;->this$0:Lcom/taobao/accs/data/MessageHandler;

    iget-object v0, v0, Lcom/taobao/accs/data/MessageHandler;->mTrafficMonitor:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler$3;->this$0:Lcom/taobao/accs/data/MessageHandler;

    iget-object v0, v0, Lcom/taobao/accs/data/MessageHandler;->mTrafficMonitor:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->restoreTraffics()V

    .line 938
    :cond_0
    return-void
.end method
