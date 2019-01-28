.class public Lcom/taobao/accs/data/MessageHandler$2;
.super Ljava/lang/Object;
.source "MessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/data/MessageHandler;->addTrafficsInfo(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/data/MessageHandler;

.field final synthetic val$info:Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;


# direct methods
.method constructor <init>(Lcom/taobao/accs/data/MessageHandler;Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/taobao/accs/data/MessageHandler$2;->this$0:Lcom/taobao/accs/data/MessageHandler;

    iput-object p2, p0, Lcom/taobao/accs/data/MessageHandler$2;->val$info:Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler$2;->this$0:Lcom/taobao/accs/data/MessageHandler;

    iget-object v0, v0, Lcom/taobao/accs/data/MessageHandler;->mTrafficMonitor:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler$2;->this$0:Lcom/taobao/accs/data/MessageHandler;

    iget-object v0, v0, Lcom/taobao/accs/data/MessageHandler;->mTrafficMonitor:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    iget-object v1, p0, Lcom/taobao/accs/data/MessageHandler$2;->val$info:Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->addTrafficInfo(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V

    .line 925
    :cond_0
    return-void
.end method
