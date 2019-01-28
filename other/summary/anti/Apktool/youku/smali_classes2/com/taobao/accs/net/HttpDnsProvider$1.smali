.class public Lcom/taobao/accs/net/HttpDnsProvider$1;
.super Ljava/lang/Object;
.source "HttpDnsProvider.java"

# interfaces
.implements Lc8/sL;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/HttpDnsProvider;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/HttpDnsProvider;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/HttpDnsProvider;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/taobao/accs/net/HttpDnsProvider$1;->this$0:Lcom/taobao/accs/net/HttpDnsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    .locals 4
    .param p1, "event"    # Lanet/channel/strategy/dispatch/DispatchEvent;

    .prologue
    .line 34
    new-instance v0, Lcom/taobao/accs/net/HttpDnsProvider$1$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/HttpDnsProvider$1$1;-><init>(Lcom/taobao/accs/net/HttpDnsProvider$1;)V

    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 40
    return-void
.end method
