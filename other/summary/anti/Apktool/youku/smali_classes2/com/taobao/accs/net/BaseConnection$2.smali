.class public Lcom/taobao/accs/net/BaseConnection$2;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/BaseConnection;-><init>(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/BaseConnection;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/BaseConnection;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/taobao/accs/net/BaseConnection$2;->this$0:Lcom/taobao/accs/net/BaseConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-interface {v0, v1}, Lc8/sJ;->register(Ljava/lang/Class;)V

    .line 131
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    invoke-interface {v0, v1}, Lc8/sJ;->register(Ljava/lang/Class;)V

    .line 132
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v0, v1}, Lc8/sJ;->register(Ljava/lang/Class;)V

    .line 133
    return-void
.end method
